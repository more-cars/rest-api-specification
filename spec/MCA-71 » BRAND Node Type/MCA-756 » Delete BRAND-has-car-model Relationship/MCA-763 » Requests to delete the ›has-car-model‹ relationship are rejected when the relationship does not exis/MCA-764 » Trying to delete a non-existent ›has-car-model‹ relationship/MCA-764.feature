@REQ_MCA-756
Feature: Delete BRAND-has-car-model Relationship
  As an API contributor
  I want to be able to disconnect CAR MODELS from BRANDS
  So I can clean up bad data or test data

  @RULE_MCA-763
  Rule: Requests to delete the ›has-car-model‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-764
    Scenario: Trying to delete a non-existent ›has-car-model‹ relationship
      Given there exists a "BRAND" "Bugati"
      And there exists a "CAR MODEL" "Veyron"
      And there exists NO "has-car-model" relationship between "Bugati" and "Veyron"
      When the user deletes the "has-car-model" relationship between "Bugati" and "Veyron"
      Then the request should be rejected with status code 404
