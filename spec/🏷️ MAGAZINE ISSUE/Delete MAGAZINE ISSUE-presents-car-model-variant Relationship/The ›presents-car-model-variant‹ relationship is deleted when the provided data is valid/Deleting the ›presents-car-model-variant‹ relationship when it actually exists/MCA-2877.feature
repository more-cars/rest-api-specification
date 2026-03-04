@REQ_MCA-2875
Feature: Delete MAGAZINE ISSUE-presents-car-model-variant Relationship
  As an API contributor
  I want to be able to disconnect CAR MODEL VARIANTS from MAGAZINE ISSUES
  So I can clean up bad data or test data

  @RULE_MCA-2876
  Rule: The ›presents-car-model-variant‹ relationship is deleted when the provided data is valid

    @TEST_MCA-2877
    Scenario: Deleting the ›presents-car-model-variant‹ relationship when it actually exists
      Given there exists a "MAGAZINE ISSUE" "Best Supercars 2025"
      And there exists a "CAR MODEL VARIANT" "Lada Samara"
      And there exists a "presents car model variant" relationship "R" between "Best Supercars 2025" and "Lada Samara"
      When the user deletes the "presents car model variant" relationship between "Best Supercars 2025" and "Lada Samara"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
