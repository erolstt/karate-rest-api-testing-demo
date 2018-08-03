[Karate](https://github.com/intuit/karate) is used for integration testing for this demo.
Basically, Karate is an API testing framework that allows you to write your test in Gherkin standard.

## How to run the tests
First you need an REST API to run the tests against it.

[JSON Server](https://github.com/typicode/json-server) is a fake REST API that is used in this demo.

Install JSON Server:

`npm install -g json-server`

Start JSON Server in the root directory of this project

`json-server --watch db.json`

After running json-server, you can go to http://localhost:3000/talks and you will get

```
{
    id: 1,
    title: "Rest API Testing",
    speaker: "Erol Selitektay"
}
```

Running integration test

`./gradlew integrationTest -Dbase.URL=http://localhost:3000/`

## Reports
After the tests run, the cucumber reports will be generated under `target` directory

## Folder Structure

```
├── intTest
│   └── java
│       ├── karate-config.js
│       ├── logback-test.xml
│       └── talk
│           ├── TalkRunner.java
│           ├── talks-post-data.json
│           ├── talks-update-data.json
│           └── talks.feature
├── main
│   └── java
└── test
    └── java

```

## OAuth 2 Example

You can checkout `auth` branch to see how you can make calls to OAuth 2 authorization enabled HTTP services using Karate framework.
