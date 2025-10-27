@REQ_MCA-861
Feature: Get CAR MODEL-has-successor Relationship

  @RULE_MCA-866
  Rule: Requests to fetch the ›has-successor‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-867 @implemented
    Scenario: Trying to fetch the ›has-successor‹ relationship with an invalid CAR MODEL ID
      Given "CAR MODEL" "Diablo" does NOT exist
      When the user requests the "has successor" relationship for "Diablo"
      Then the request should be rejected with status code 404
