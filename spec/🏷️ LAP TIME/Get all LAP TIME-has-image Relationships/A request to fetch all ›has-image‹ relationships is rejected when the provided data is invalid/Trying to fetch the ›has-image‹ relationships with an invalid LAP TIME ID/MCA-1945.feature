@REQ_MCA-1939
Feature: Get all LAP TIME-has-image Relationships

  @RULE_MCA-1944
  Rule: A request to fetch all ›has-image‹ relationships is rejected when the provided data is invalid

    @TEST_MCA-1945 @implemented
    Scenario: Trying to fetch the ›has-image‹ relationships with an invalid LAP TIME ID
      Given "LAP TIME" "fastest lap" does NOT exist
      When the user requests all "has image" relationships for "fastest lap"
      Then the request should be rejected with status code 404
