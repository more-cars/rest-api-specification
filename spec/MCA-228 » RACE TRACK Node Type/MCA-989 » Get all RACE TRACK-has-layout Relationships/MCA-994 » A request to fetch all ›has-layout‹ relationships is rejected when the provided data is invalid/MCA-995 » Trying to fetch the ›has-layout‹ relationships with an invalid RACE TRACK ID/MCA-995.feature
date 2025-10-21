@REQ_MCA-989
Feature: Get all RACE TRACK-has-layout Relationships

  @RULE_MCA-994
  Rule: A request to fetch all ›has-layout‹ relationships is rejected when the provided data is invalid

    @TEST_MCA-995 @implemented
    Scenario: Trying to fetch the ›has-layout‹ relationships with an invalid RACE TRACK ID
      Given "RACE TRACK" "Hockenheimring" does NOT exist
      When the user requests all "has-layout" relationships for "Hockenheimring"
      Then the request should be rejected with status code 404
