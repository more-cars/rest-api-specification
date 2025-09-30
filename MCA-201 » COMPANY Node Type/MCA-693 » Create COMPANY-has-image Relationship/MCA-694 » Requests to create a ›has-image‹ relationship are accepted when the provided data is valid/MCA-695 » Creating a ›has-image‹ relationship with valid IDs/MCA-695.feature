@REQ_MCA-693
Feature: Create COMPANY-has-image Relationship
  As an API contributor\
  I want to be able to attach IMAGES to COMPANIES\
  So an API consumer can illustrate COMPANY nodes in a frontend application

  @RULE_MCA-694
  Rule: Requests to create a ›has-image‹ relationship are accepted when the provided data is valid

    @TEST_MCA-695 @implemented
    Scenario: Creating a ›has-image‹ relationship with valid IDs
      Given there exists a "COMPANY" "Audi AG"
      And there exists a "IMAGE" "logo"
      When the user creates a "has-image" relationship between "Audi AG" and "logo"
      Then the request should be confirmed with status code 201
      And the response should contain the following keys
        | key             |
        | company_id      |
        | image_id        |
        | relationship_id |
