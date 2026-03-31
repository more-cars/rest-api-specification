@REQ_MCA-5233
Feature: Create PROGRAMME EPISODE-has-video Relationship
  As an API contributor
  I want to be able to attach VIDEOS to a PROGRAMME EPISODE
  So an API consumer can illustrate the PROGRAMME EPISODE node in a frontend application

  @RULE_MCA-5234
  Rule: Requests to create a ›has-video‹ relationship are accepted when the provided data is valid

    @TEST_MCA-5235
    Scenario: Creating a ›has-video‹ relationship with valid IDs
      Given there exists a "PROGRAMME EPISODE" "The Holy Trinity"
      And there exists a "VIDEO" "Promo Video"
      When the user creates a "has-video" relationship between "The Holy Trinity" and "Promo Video"
      Then the request should be confirmed with status code 201
      And the response should contain the following keys
        | key               |
        | relationship_id   |
        | relationship_name |
        | start_node        |
        | partner_node      |
