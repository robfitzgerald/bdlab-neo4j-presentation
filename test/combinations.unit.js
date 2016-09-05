'use strict';
{
  var expect = require('chai').expect
    , demo = require('../demo-neo4j')
  describe('combinations', () => {
    it('given an array with one value, it should return an empty array of connections', () => {
      var result = demo.combinations([])
      expect(Array.isArray(result)).to.be.true
      expect(result.length).to.equal(0)
    })
    it('given two people with shared research topics, should return a connection for them', () => {
      var people = [
        {
          first: 'person a',
          research: ['topic a', 'topic b'],
          projects: []
        },
        {
          first: 'person b',
          research: ['topic b'],
          projects: []
        }
      ]
      var result = demo.combinations(people)
      expect(result.length).to.equal(1)
      expect(result[0].a).to.equal('person a')
      expect(result[0].b).to.equal('person b')
      expect(result[0].topic).to.equal('topic b')
    })
  })
}