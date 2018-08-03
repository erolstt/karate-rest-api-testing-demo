Feature: Cool feature

   CRUD functions

  Background:
    * url baseURL
    * def talksPath = 'talks'

  Scenario: Create, search, update and remove a talk

    Given path talksPath
    And header Authorization = authInfo.tokenType + ' ' + authInfo.accessToken
    And request read('talks-post-data.json')
    When method post
    Then status 201
    And match response contains {id: '#notnull'}

    * def id = response.id

    Given path talksPath, id
    And header Authorization = authInfo.tokenType + ' ' + authInfo.accessToken
    When method get
    Then status 200
    
    Given path talksPath, id
    And header Authorization = authInfo.tokenType + ' ' + authInfo.accessToken
    And request read('talks-update-data.json')
    When method patch
    Then status 200
    And match response contains {speaker: 'Brad Pitt'}

    Given path talksPath, id
    And header Authorization = authInfo.tokenType + ' ' + authInfo.accessToken
    When method delete
    Then status 200