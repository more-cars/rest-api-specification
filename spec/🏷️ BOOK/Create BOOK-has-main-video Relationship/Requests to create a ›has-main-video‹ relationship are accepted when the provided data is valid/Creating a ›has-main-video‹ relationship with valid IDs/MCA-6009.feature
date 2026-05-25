@REQ_MCA-6007
Feature: Create BOOK-has-main-video Relationship
  As an API contributor
  I want to be able to select the main VIDEO of a BOOK
  So an API consumer can instantly load the VIDEO that best represents the BOOK

  @RULE_MCA-6008
  Rule: Requests to create a ›has-main-video‹ relationship are accepted when the provided data is valid

    @TEST_MCA-6009 @implemented
    Scenario: Creating a ›has-main-video‹ relationship with valid IDs
      Given there exists a "BOOK" "F1 in Numbers"
      And there exists a "VIDEO" "Promo Video"
      When the user creates a "has-main-video" relationship between "F1 in Numbers" and "Promo Video"
      Then the request should be confirmed with status code 201
      And the response should contain the following keys
        | key               |
        | relationship_id   |
        | relationship_name |
        | start_node        |
        | partner_node      |
