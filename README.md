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

`./gradlew integrationTest -Dbase.URL=http://localhost:3000/`

## Reports
After test run, you can find the cucumber reports under target folder

## Folder Structure

```
├── intTest
│   └── java
│       ├── karate-config.js
│       ├── logback-test.xml
│       └── rest
│           ├── RestRunner.java
│           ├── talks-post-data.json
│           ├── talks-update-data.json
│           └── talks.feature
├── main
│   └── java
└── test
    └── java

```
