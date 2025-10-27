@REQ_MCA-179
Feature: Create CAR MODEL-belongs-to-brand Relationship
  As an API contributor\
  I want to be able to connect a BRAND to CAR MODELs\
  So I can create car families

  @RULE_MCA-187
  Rule: The same relationship between the same nodes can only exist once

    @TEST_MCA-188 @implemented
    Scenario: Creating the same relationship again returns the already existing one
      Given there exists a "CAR MODEL" "Testarossa"
      And there exists a "BRAND" "Ferrari"
      And there exists a "belongs to brand" relationship between "Testarossa" and "Ferrari"
      When the user creates a "belongs to brand" relationship between "Testarossa" and "Ferrari"
      Then the response should return with status code 304
