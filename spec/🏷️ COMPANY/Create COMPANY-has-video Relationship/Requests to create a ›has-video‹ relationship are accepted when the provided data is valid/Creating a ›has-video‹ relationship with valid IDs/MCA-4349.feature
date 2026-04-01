@REQ_MCA-4347
Feature: Create COMPANY-has-video Relationship
  As an API contributor
  I want to be able to attach VIDEOS to a COMPANY
  So an API consumer can illustrate the COMPANY node in a frontend application

  @RULE_MCA-4348
  Rule: Requests to create a ›has-video‹ relationship are accepted when the provided data is valid

    @TEST_MCA-4349 @implemented
    Scenario: Creating a ›has-video‹ relationship with valid IDs
      Given there exists a "COMPANY" "BMW AG"
      And there exists a "VIDEO" "Promo Video"
      When the user creates a "has-video" relationship between "BMW AG" and "Promo Video"
      Then the request should be confirmed with status code 201
      And the response should contain the following keys
        | key               |
        | relationship_id   |
        | relationship_name |
        | start_node        |
        | partner_node      |
