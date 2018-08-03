Feature: Getting token by making call to Auth0.

  Background:
    * url authURL

  Scenario: Get token
    * path 'token'
    * form field grant_type = grantType
    * form field client_id = clientId
    * form field client_secret = clientSecret
    * form field audience = audience
    * method post
    * status 200
    * def accessToken = response.access_token
    * def tokenType = response.token_type
