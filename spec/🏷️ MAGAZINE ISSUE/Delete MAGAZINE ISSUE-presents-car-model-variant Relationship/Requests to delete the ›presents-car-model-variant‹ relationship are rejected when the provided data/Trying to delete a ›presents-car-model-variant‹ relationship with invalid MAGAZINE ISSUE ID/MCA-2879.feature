@REQ_MCA-2875
Feature: Delete MAGAZINE ISSUE-presents-car-model-variant Relationship
  As an API contributor
  I want to be able to disconnect CAR MODEL VARIANTS from MAGAZINE ISSUES
  So I can clean up bad data or test data

  @RULE_MCA-2878
  Rule: Requests to delete the ›presents-car-model-variant‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-2879 @implemented
    Scenario: Trying to delete a ›presents-car-model-variant‹ relationship with invalid MAGAZINE ISSUE ID
      Given "MAGAZINE ISSUE" "Best Supercars 2025" does NOT exist
      And there exists a "CAR MODEL VARIANT" "Lada Samara"
      When the user deletes the "presents car model variant" relationship between "Best Supercars 2025" and "Lada Samara"
      Then the request should be rejected with status code 404
