@REQ_MCA-2141
Feature: Delete CAR MODEL VARIANT-achieved-lap-time Relationship
  As an API contributor
  I want to be able to disconnect LAP TIMES from CAR MODEL VARIANTS
  So I can clean up bad data or test data

  @RULE_MCA-2142
  Rule: The ›achieved-lap-time‹ relationship is deleted when the provided data is valid

    @TEST_MCA-2143 @implemented
    Scenario: Deleting the ›achieved-lap-time‹ relationship when it actually exists
      Given there exists a "CAR MODEL VARIANT" "BMW M3 GTR"
      And there exists a "LAP TIME" "test lap"
      And there exists a "achieved lap time" relationship "R" between "BMW M3 GTR" and "test lap"
      When the user deletes the "achieved lap time" relationship between "BMW M3 GTR" and "test lap"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
