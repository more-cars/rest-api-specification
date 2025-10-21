@REQ_MCA-1005
Feature: Create RACE TRACK-has-image Relationship

  @RULE_MCA-1008
  Rule: Requests to create a ›has-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-1009 @implemented
    Scenario: Trying to create a ›has-image‹ relationship with invalid RACE TRACK ID
      Given "RACE TRACK" "Hockenheimring" does NOT exist
      And there exists a "IMAGE" "start-finish-line"
      When the user creates a "has image" relationship between "Hockenheimring" and "start-finish-line"
      Then the request should be rejected with status code 404
