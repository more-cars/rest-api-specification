@REQ_MCA-1032
Feature: Create RACE TRACK-has-prime-image Relationship

  @RULE_MCA-1033
  Rule: Requests to create a ›has-prime-image‹ relationship are accepted when the provided data is valid

    @TEST_MCA-1034 @implemented
    Scenario: Creating a ›has-prime-image‹ relationship with valid IDs
      Given there exists a "RACE TRACK" "Hockenheimring"
      And there exists a "IMAGE" "first-corner"
      When the user creates a "has prime image" relationship between "Hockenheimring" and "first-corner"
      Then the request should be confirmed with status code 201
      And the response should contain the following keys
        | key                  |
        | relationship_id      |
        | relationship_name    |
        | relationship_partner |
