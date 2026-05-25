@REQ_MCA-6034
Feature: Create BOOK-has-image Relationship
  As an API contributor
  I want to be able to attach IMAGES to a BOOK
  So an API consumer can illustrate the BOOK node in a frontend application

  @RULE_MCA-6037
  Rule: Requests to create a ›has-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-6040 @implemented
    Scenario: Trying to create a ›has-image‹ relationship where both IDs are invalid
      Given "BOOK" "F1 in Numbers" does NOT exist
      And "IMAGE" "Detail photo" does NOT exist
      When the user creates a "has-image" relationship between "F1 in Numbers" and "Detail photo"
      Then the request should be rejected with status code 404
