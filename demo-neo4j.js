'use strict';
{
  var neo4j = require('neo4j-driver').v1
    , bdTeam = require('./bdteam.json')
    , async = require('async')

  var driver = neo4j.driver("bolt://localhost", neo4j.auth.basic("neo4j", "bdlab"))
    , session = driver.session();
  
  var connections = combinations(bdTeam)

  async.eachSeries(bdTeam, function (person, done) {
    console.log(`CREATE (a:PERSON {first: '${person.first}', last: '${person.last}', position: '${person.position}'})`)
    session
      .run(`CREATE (a:PERSON {first: '${person.first}', last: '${person.last}', position: '${person.position}'})`)
      .then((result) => {
        done()
      })
  }, function (createError) {
    if (createError) { console.log(createError) ; throw createError}
    else {     
      async.eachSeries(connections, function (connection, done) {
        console.log(`MATCH (a:PERSON{first:"${connection.a}"}), (b:PERSON{first:"${connection.b}"}) WITH a, b CREATE(a)-[:${connection.type.toUpperCase()} {name:"${connection.topic}"}]->(b)-[:RESEARCH {name:"${connection.topic}"}]->(a)`)
        session
          .run(`MATCH (a:PERSON{first:"${connection.a}"}), (b:PERSON{first:"${connection.b}"}) WITH a, b CREATE(a)-[:${connection.type.toUpperCase()} {name:"${connection.topic}"}]->(b)-[:RESEARCH {name:"${connection.topic}"}]->(a)`)
          .then((result) => {
            done()
          })
      }, function (relationErr) {
        if (relationErr) throw relationErr
        console.log('done.')
        session.close();
        driver.close();
      })
    }
  })

  function combinations (a) {
    var connections = []
    if (a.length > 1) {
      var firstPerson = a[0]
      var rest = a.slice(1)
      rest.forEach(function(person) {
        var types = ['research', 'project']
        types.forEach(function(type) {
          person[type].forEach(function(topic) {
            if (firstPerson[type].indexOf(topic) != -1) {
              connections.push({
                a: firstPerson.first,
                b: person.first,
                type: type,
                topic: topic
              })
            }
          })          
        })
      })
      return connections.concat(combinations(rest))
    } else { return []; }
  }

  module.exports = {
    combinations
  }
}