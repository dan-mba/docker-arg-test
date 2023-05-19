require('dotenv').config()

const mongo = process.env.LINKFREE_MONGO_CONNECTION_STRING;

if (mongo[0] === '*') console.log('hidden');
console.log(`Secret:${mongo.slice(0,15)}`);