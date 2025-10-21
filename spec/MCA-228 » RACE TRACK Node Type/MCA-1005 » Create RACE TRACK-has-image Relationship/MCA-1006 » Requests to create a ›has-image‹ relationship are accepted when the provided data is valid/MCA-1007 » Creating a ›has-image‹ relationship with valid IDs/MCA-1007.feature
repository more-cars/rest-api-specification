@REQ_MCA-1005
Feature: Create RACE TRACK-has-image Relationship

  @RULE_MCA-1006
  Rule: Requests to create a ›has-image‹ relationship are accepted when the provided data is valid

    @TEST_MCA-1007 @implemented
    Scenario: Creating a ›has-image‹ relationship with valid IDs
      Given there exists a "RACE TRACK" "Hockenheimring"
      And there exists a "IMAGE" "start-finish-line"
      When the user creates a "has image" relationship between "Hockenheimring" and "start-finish-line"
      Then the request should be confirmed with status code 201
      And the response should contain the following keys
        | key                  |
        | relationship_id      |
        | relationship_name    |
        | relationship_partner |
