@REQ_MCA-6034
Feature: Create BOOK-has-image Relationship
  As an API contributor
  I want to be able to attach IMAGES to a BOOK
  So an API consumer can illustrate the BOOK node in a frontend application

  @RULE_MCA-6035
  Rule: Requests to create a ›has-image‹ relationship are accepted when the provided data is valid

    @TEST_MCA-6036 @implemented
    Scenario: Creating a ›has-image‹ relationship with valid IDs
      Given there exists a "BOOK" "F1 in Numbers"
      And there exists a "IMAGE" "Detail photo"
      When the user creates a "has-image" relationship between "F1 in Numbers" and "Detail photo"
      Then the request should be confirmed with status code 201
      And the response should return a relationship with "IMAGE" "Detail photo"
