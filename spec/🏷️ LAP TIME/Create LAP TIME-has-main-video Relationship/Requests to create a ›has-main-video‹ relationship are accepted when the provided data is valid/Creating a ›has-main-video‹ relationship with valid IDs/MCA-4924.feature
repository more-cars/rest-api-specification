@REQ_MCA-4922
Feature: Create LAP TIME-has-main-video Relationship
  As an API contributor
  I want to be able to select the main VIDEO of a LAP TIME
  So an API consumer can instantly load the VIDEO that best represents the LAP TIME

  @RULE_MCA-4923
  Rule: Requests to create a ›has-main-video‹ relationship are accepted when the provided data is valid

    @TEST_MCA-4924 @implemented
    Scenario: Creating a ›has-main-video‹ relationship with valid IDs
      Given there exists a "LAP TIME" "Fastest Lap"
      And there exists a "VIDEO" "Promo Video"
      When the user creates a "has-main-video" relationship between "Fastest Lap" and "Promo Video"
      Then the request should be confirmed with status code 201
      And the response should contain the following keys
        | key               |
        | relationship_id   |
        | relationship_name |
        | start_node        |
        | partner_node      |
