@REQ_MCA-3790
Feature: Create MODEL CAR Node
  As an API contributor
  I want to be able to create MODEL CARS
  So I can fill gaps in the database

  @RULE_MCA-3793
  Rule: Requests to create a MODEL CAR are rejected when the provided data is invalid

    @TEST_MCA-3794 @implemented
    Scenario: Trying to create a MODEL CAR with missing mandatory information
      When the user tries to create a "MODEL CAR" "F40 Matchbox" with the following data
        | key | value | datatype |
      Then the request should be rejected with status code 400
