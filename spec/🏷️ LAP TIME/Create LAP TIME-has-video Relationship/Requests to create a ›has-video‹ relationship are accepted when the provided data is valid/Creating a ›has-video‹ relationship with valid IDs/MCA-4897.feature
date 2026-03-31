@REQ_MCA-4895
Feature: Create LAP TIME-has-video Relationship
  As an API contributor
  I want to be able to attach VIDEOS to a LAP TIME
  So an API consumer can illustrate the LAP TIME node in a frontend application

  @RULE_MCA-4896
  Rule: Requests to create a ›has-video‹ relationship are accepted when the provided data is valid

    @TEST_MCA-4897
    Scenario: Creating a ›has-video‹ relationship with valid IDs
      Given there exists a "LAP TIME" "Fastest Lap"
      And there exists a "VIDEO" "Promo Video"
      When the user creates a "has-video" relationship between "Fastest Lap" and "Promo Video"
      Then the request should be confirmed with status code 201
      And the response should contain the following keys
        | key               |
        | relationship_id   |
        | relationship_name |
        | start_node        |
        | partner_node      |
