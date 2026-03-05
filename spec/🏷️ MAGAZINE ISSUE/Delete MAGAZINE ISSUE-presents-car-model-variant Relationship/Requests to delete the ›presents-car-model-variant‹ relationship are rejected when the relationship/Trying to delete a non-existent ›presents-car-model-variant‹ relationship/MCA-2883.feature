@REQ_MCA-2875
Feature: Delete MAGAZINE ISSUE-presents-car-model-variant Relationship
  As an API contributor
  I want to be able to disconnect CAR MODEL VARIANTS from MAGAZINE ISSUES
  So I can clean up bad data or test data

  @RULE_MCA-2882
  Rule: Requests to delete the ›presents-car-model-variant‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-2883 @implemented
    Scenario: Trying to delete a non-existent ›presents-car-model-variant‹ relationship
      Given there exists a "MAGAZINE ISSUE" "Best Supercars 2025"
      And there exists a "CAR MODEL VARIANT" "Lada Samara"
      And there exists NO "presents car model variant" relationship between "Best Supercars 2025" and "Lada Samara"
      When the user deletes the "presents car model variant" relationship between "Best Supercars 2025" and "Lada Samara"
      Then the request should be rejected with status code 404
