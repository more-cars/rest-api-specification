@REQ_MCA-2096
Feature: Create CAR MODEL VARIANT-achieved-session-result Relationship

  @RULE_MCA-2103
  Rule: The same ›achieved-session-result‹ relationship between the same nodes can only be created once

    @TEST_MCA-2104 @implemented
    Scenario: Trying to create the same ›achieved-session-result‹ relationship again
      Given there exists a "CAR MODEL VARIANT" "BMW M3 GTR"
      And there exists a "SESSION RESULT" "1st place"
      And there exists a "achieved session result" relationship between "BMW M3 GTR" and "1st place"
      When the user creates a "achieved session result" relationship between "BMW M3 GTR" and "1st place"
      Then the response should return with status code 304
