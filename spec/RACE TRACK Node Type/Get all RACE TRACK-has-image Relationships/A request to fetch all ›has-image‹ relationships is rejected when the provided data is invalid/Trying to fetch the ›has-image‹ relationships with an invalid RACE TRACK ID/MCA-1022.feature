@REQ_MCA-1016
Feature: Get all RACE TRACK-has-image Relationships

  @RULE_MCA-1021
  Rule: A request to fetch all ›has-image‹ relationships is rejected when the provided data is invalid

    @TEST_MCA-1022 @implemented
    Scenario: Trying to fetch the ›has-image‹ relationships with an invalid RACE TRACK ID
      Given "RACE TRACK" "Hockenheimring" does NOT exist
      When the user requests all "has-image" relationships for "Hockenheimring"
      Then the request should be rejected with status code 404
