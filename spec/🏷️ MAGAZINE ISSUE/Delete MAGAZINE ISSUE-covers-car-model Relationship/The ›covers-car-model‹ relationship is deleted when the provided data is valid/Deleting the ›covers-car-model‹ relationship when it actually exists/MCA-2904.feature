@REQ_MCA-2902
Feature: Delete MAGAZINE ISSUE-covers-car-model Relationship
  As an API contributor
  I want to be able to disconnect CAR MODELS from MAGAZINE ISSUES
  So I can clean up bad data or test data

  @RULE_MCA-2903
  Rule: The ›covers-car-model‹ relationship is deleted when the provided data is valid

    @TEST_MCA-2904
    Scenario: Deleting the ›covers-car-model‹ relationship when it actually exists
      Given there exists a "MAGAZINE ISSUE" "50 Jahre GTI"
      And there exists a "CAR MODEL" "Twingo"
      And there exists a "covers car model" relationship "R" between "50 Jahre GTI" and "Twingo"
      When the user deletes the "covers car model" relationship between "50 Jahre GTI" and "Twingo"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
