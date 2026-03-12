@REQ_MCA-3718
Feature: Delete CAR MODEL VARIANT-presented-at-motor-show Relationship
  As an API contributor
  I want to be able to disconnect MOTOR SHOWS from CAR MODEL VARIANTS
  So I can clean up bad data or test data

  @RULE_MCA-3719
  Rule: The ›presented-at-motor-show‹ relationship is deleted when the provided data is valid

    @TEST_MCA-3720 @implemented
    Scenario: Deleting the ›presented-at-motor-show‹ relationship when it actually exists
      Given there exists a "CAR MODEL VARIANT" "BMW i8"
      And there exists a "MOTOR SHOW" "IAA Frankfurt 1999"
      And there exists a "presented at motor show" relationship "R" between "BMW i8" and "IAA Frankfurt 1999"
      When the user deletes the "presented at motor show" relationship between "BMW i8" and "IAA Frankfurt 1999"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
