[Karate](https://github.com/intuit/karate) is used for integration testing for this demo.
Basically, Karate is an API testing framework that allows you to write your test in Gherkin standard.

## How to run the tests
First you need an REST API to run the tests against it.

[JSON Server](https://github.com/typicode/json-server) is a fake REST API that is used in this demo.

Install JSON Server:

`npm install -g json-server`

Start JSON Server in the root directory of this project

`json-server --watch db.json`

Now you have an up and running REST API. 

Running integration test

```
./gradlew integrationTest \
          -Dbase.URL=http://localhost:3000/ \
          -Dgrant.type=client_credentials \
          -Dclient.id=clint-id \
          -Dclient.secret=client-secret \
          -Daudience=https://audience-url \
          -Dauth.URL=https://oauth-url
```

## Reports
After the tests run, the cucumber reports will be generated under `target` directory

## Folder Structure

```
├── intTest
│   └── java
│       ├── karate-config.js
│       ├── logback-test.xml
│       └── talk
│           ├── RestRunner.java
│           ├── talks-post-data.json
│           ├── talks-update-data.json
│           └── talks.feature
├── main
│   └── java
└── test
    └── java

```
