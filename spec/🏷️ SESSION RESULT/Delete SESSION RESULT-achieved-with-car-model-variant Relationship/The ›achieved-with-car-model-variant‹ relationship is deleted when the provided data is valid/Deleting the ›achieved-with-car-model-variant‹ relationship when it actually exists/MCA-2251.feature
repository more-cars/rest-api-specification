@REQ_MCA-2249
Feature: Delete SESSION RESULT-achieved-with-car-model-variant Relationship
  As an API contributor
  I want to be able to disconnect CAR MODEL VARIANTS from SESSION RESULTS
  So I can clean up bad data or test data

  @RULE_MCA-2250
  Rule: The ›achieved-with-car-model-variant‹ relationship is deleted when the provided data is valid

    @TEST_MCA-2251 @implemented
    Scenario: Deleting the ›achieved-with-car-model-variant‹ relationship when it actually exists
      Given there exists a "SESSION RESULT" "test result"
      And there exists a "CAR MODEL VARIANT" "Ferrari 499P"
      And there exists a "achieved with car model variant" relationship "R" between "test result" and "Ferrari 499P"
      When the user deletes the "achieved with car model variant" relationship between "test result" and "Ferrari 499P"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
