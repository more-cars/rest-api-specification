@REQ_MCA-4933
Feature: Get LAP TIME-has-main-video Relationship
  As an API consumer
  I want to be able to get the main VIDEO of a LAP TIME
  So I can instantly load the VIDEO that best represents the LAP TIME

  @RULE_MCA-4938
  Rule: Requests to fetch the ›has-main-video‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-4939
    Scenario: Trying to fetch the ›has-main-video‹ relationship with an invalid LAP TIME ID
      Given "LAP TIME" "Fastest Lap" does NOT exist
      When the user requests the "has-main-video" relationship for "Fastest Lap"
      Then the request should be rejected with status code 404
