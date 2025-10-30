@REQ_MCA-2114
Feature: Delete CAR MODEL VARIANT-achieved-session-result Relationship
  As an API contributor
  I want to be able to disconnect SESSION RESULTS from CAR MODEL VARIANTS
  So I can clean up bad data or test data

  @RULE_MCA-2115
  Rule: The ›achieved-session-result‹ relationship is deleted when the provided data is valid

    @TEST_MCA-2116 @implemented
    Scenario: Deleting the ›achieved-session-result‹ relationship when it actually exists
      Given there exists a "CAR MODEL VARIANT" "BMW M3 GTR"
      And there exists a "SESSION RESULT" "test result"
      And there exists a "achieved session result" relationship "R" between "BMW M3 GTR" and "test result"
      When the user deletes the "achieved session result" relationship between "BMW M3 GTR" and "test result"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
