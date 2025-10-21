@REQ_MCA-1043
Feature: Get RACE TRACK-has-prime-image Relationship

  @RULE_MCA-1048
  Rule: Requests to fetch the ›has-prime-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-1049 @implemented
    Scenario: Trying to fetch the ›has-prime-image‹ relationship with an invalid RACE TRACK ID
      Given "RACE TRACK" "Hockenheimring" does NOT exist
      When the user requests the "has prime image" relationship for "Hockenheimring"
      Then the request should be rejected with status code 404
