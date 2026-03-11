@REQ_MCA-3637
Feature: Delete MOTOR SHOW-presents-car-model-variant Relationship
  As an API contributor
  I want to be able to disconnect CAR MODEL VARIANTS from MOTOR SHOWS
  So I can clean up bad data or test data

  @RULE_MCA-3638
  Rule: The ›presents-car-model-variant‹ relationship is deleted when the provided data is valid

    @TEST_MCA-3639
    Scenario: Deleting the ›presents-car-model-variant‹ relationship when it actually exists
      Given there exists a "MOTOR SHOW" "IAA Frankfurt"
      And there exists a "CAR MODEL VARIANT" "Lada Samara"
      And there exists a "presents car model variant" relationship "R" between "IAA Frankfurt" and "Lada Samara"
      When the user deletes the "presents car model variant" relationship between "IAA Frankfurt" and "Lada Samara"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
