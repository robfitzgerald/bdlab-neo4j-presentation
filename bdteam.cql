CREATE (:PERSON{first:"Farnoush",last:"Banaei-Kashani",position:"Faculty"})
CREATE (:PERSON{first:"Shahab",last:"Helmi",position:"PhD Student"})
CREATE (:PERSON{first:"Zohreh",last:"Raghebi",position:"PhD Student"})
CREATE (:PERSON{first:"Omar",last:"Alqahtani",position:"PhD Student"})
CREATE (:PERSON{first:"Robert",last:"Fitzgerald",position:"PhD Student"})
CREATE (:PERSON{first:"Javier",last:"Pastorino",position:"PhD Student"})
CREATE (:PERSON{first:"Fransisco",last:"Perez",position:"PhD Student"})
CREATE (:PERSON{first:"William M.",last:"Lees",position:"Masters Student"})
CREATE (:PERSON{first:"Nafiseh",last:"Mahmoudi",position:"Masters Student"})

MATCH (a:PERSON{first:"Farnoush"}), (b:PERSON{first:"Shahab"}) 
WITH a, b 
CREATE(a)-[:RESEARCH {name:"Ordered Data M & M"}]->(b)-[:RESEARCH {name:"Ordered Data M & M"}]->(a)

MATCH (a:PERSON{first:"Farnoush"}), (b:PERSON{first:"Zohreh"}) 
WITH a, b 
CREATE(a)-[:RESEARCH {name:"Graph Data M & M"}]->(b)-[:RESEARCH {name:"Graph Data M & M"}]->(a)

MATCH (a:PERSON{first:"Farnoush"}), (b:PERSON{first:"Omar"}) 
WITH a, b 
CREATE(a)-[:RESEARCH {name:"Data Stores"}]->(b)-[:RESEARCH {name:"Data Stores"}]->(a) 

MATCH (a:PERSON{first:"Farnoush"}), (b:PERSON{first:"Robert"}) 
WITH a, b 
CREATE(a)-[:RESEARCH {name:"Spatial Networks"}]->(b)-[:RESEARCH {name:"Spatial Networks"}]->(a) 

MATCH (a:PERSON{first:"Farnoush"}), (b:PERSON{first:"Javier"}) 
WITH a, b 
CREATE(a)-[:RESEARCH {name:"Point Cloud Data M"}]->(b)-[:RESEARCH {name:"Point Cloud Data M"}]->(a) 

MATCH (a:PERSON{first:"Farnoush"}), (b:PERSON{first:"Fransisco"}) 
WITH a, b 
CREATE(a)-[:RESEARCH {name:"Educational Data Mining"}]->(b)-[:RESEARCH {name:"Educational Data Mining"}]->(a) 

MATCH (a:PERSON{first:"Farnoush"}), (b:PERSON{first:"William M."}) 
WITH a, b 
CREATE(a)-[:RESEARCH {name:"Ordered Data M & M"}]->(b)-[:RESEARCH {name:"Ordered Data M & M"}]->(a) 

MATCH (a:PERSON{first:"Farnoush"}), (b:PERSON{first:"Nafiseh"}) 
WITH a, b 
CREATE(a)-[:RESEARCH {name:"Modern Hardware"}]->(b)-[:RESEARCH {name:"Modern Hardware"}]->(a) 

MATCH (a:PERSON{first:"Farnoush"}), (b:PERSON{first:"Nafiseh"}) 
WITH a, b 
CREATE(a)-[:RESEARCH {name:"SSD"}]->(b)-[:RESEARCH {name:"SSD"}]->(a) 

MATCH (a:PERSON{first:"Farnoush"}), (b:PERSON{first:"Shahab"}) 
WITH a, b 
CREATE(a)-[:PROJECTS {name:"COPD"}]->(b)-[:PROJECTS {name:"COPD"}]->(a) 

MATCH (a:PERSON{first:"Farnoush"}), (b:PERSON{first:"Shahab"}) 
WITH a, b 
CREATE(a)-[:PROJECTS {name:"RadOn"}]->(b)-[:PROJECTS {name:"RadOn"}]->(a) 

MATCH (a:PERSON{first:"Farnoush"}), (b:PERSON{first:"Zohreh"}) 
WITH a, b 
CREATE(a)-[:PROJECTS {name:"mSleepWatcher"}]->(b)-[:PROJECTS {name:"mSleepWatcher"}]->(a) 

MATCH (a:PERSON{first:"Farnoush"}), (b:PERSON{first:"Omar"}) 
WITH a, b 
CREATE(a)-[:PROJECTS {name:"Transportation"}]->(b)-[:PROJECTS {name:"Transportation"}]->(a) 

MATCH (a:PERSON{first:"Farnoush"}), (b:PERSON{first:"Robert"}) 
WITH a, b 
CREATE(a)-[:PROJECTS {name:"Transportation"}]->(b)-[:PROJECTS {name:"Transportation"}]->(a) 

MATCH (a:PERSON{first:"Farnoush"}), (b:PERSON{first:"Javier"}) 
WITH a, b 
CREATE(a)-[:PROJECTS {name:"Data-driven Visualization"}]->(b)-[:PROJECTS {name:"Data-driven Visualization"}]->(a) 

