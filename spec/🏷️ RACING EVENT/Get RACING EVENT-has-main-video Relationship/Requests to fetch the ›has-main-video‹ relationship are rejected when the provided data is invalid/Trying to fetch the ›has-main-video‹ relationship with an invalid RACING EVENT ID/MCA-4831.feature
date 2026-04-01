@REQ_MCA-4825
Feature: Get RACING EVENT-has-main-video Relationship
  As an API consumer
  I want to be able to get the main VIDEO of a RACING EVENT
  So I can instantly load the VIDEO that best represents the RACING EVENT

  @RULE_MCA-4830
  Rule: Requests to fetch the ›has-main-video‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-4831 @implemented
    Scenario: Trying to fetch the ›has-main-video‹ relationship with an invalid RACING EVENT ID
      Given "RACING EVENT" "F1 GP Monaco" does NOT exist
      When the user requests the "has-main-video" relationship for "F1 GP Monaco"
      Then the request should be rejected with status code 404
