FROM mongo

COPY init.json /inti.json
CMD mongoimport --host mongo --db reach-engine --collection products --type json --file /init.json --jsonArray
