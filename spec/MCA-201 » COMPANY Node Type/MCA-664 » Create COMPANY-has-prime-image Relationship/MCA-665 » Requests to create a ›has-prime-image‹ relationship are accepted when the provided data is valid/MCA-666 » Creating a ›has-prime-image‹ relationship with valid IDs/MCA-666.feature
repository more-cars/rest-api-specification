@REQ_MCA-664
Feature: Create COMPANY-has-prime-image Relationship
  As an API contributor\
  I want to be able to select one image to be used as prime image for a COMPANY\
  So the node can be represented as good as possible in any frontend application

  @RULE_MCA-665
  Rule: Requests to create a ›has-prime-image‹ relationship are accepted when the provided data is valid

    @TEST_MCA-666 @implemented
    Scenario: Creating a ›has-prime-image‹ relationship with valid IDs
      Given there exists a "COMPANY" "Bugatti"
      And there exists a "IMAGE" "logo"
      When the user creates a "has-prime-image" relationship between "Bugatti" and "logo"
      Then the request should be confirmed with status code 201
      And the response should contain the following keys
        | key                  |
        | relationship_id      |
        | relationship_name    |
        | relationship_partner |
