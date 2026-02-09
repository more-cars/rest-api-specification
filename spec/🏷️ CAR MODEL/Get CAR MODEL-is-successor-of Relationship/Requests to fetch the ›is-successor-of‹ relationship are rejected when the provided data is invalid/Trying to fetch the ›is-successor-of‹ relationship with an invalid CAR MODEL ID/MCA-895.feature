@REQ_MCA-889
Feature: Get CAR MODEL-is-successor-of Relationship

  @RULE_MCA-894
  Rule: Requests to fetch the ›is-successor-of‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-895 @implemented
    Scenario: Trying to fetch the ›is-successor-of‹ relationship with an invalid CAR MODEL ID
      Given "CAR MODEL" "Aventador" does NOT exist
      When the user requests the "is successor of" relationship for "Aventador"
      Then the request should be rejected with status code 404
