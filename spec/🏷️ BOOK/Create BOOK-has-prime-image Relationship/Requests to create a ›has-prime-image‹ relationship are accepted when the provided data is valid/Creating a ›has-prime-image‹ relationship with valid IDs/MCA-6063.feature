@REQ_MCA-6061
Feature: Create BOOK-has-prime-image Relationship
  As an API contributor
  I want to be able to select the prime IMAGE of a BOOK
  So an API consumer can instantly load the IMAGE that best represents the BOOK

  @RULE_MCA-6062
  Rule: Requests to create a ›has-prime-image‹ relationship are accepted when the provided data is valid

    @TEST_MCA-6063 @implemented
    Scenario: Creating a ›has-prime-image‹ relationship with valid IDs
      Given there exists a "BOOK" "F1 in Numbers"
      And there exists a "IMAGE" "Detail photo"
      When the user creates a "has-prime-image" relationship between "F1 in Numbers" and "Detail photo"
      Then the request should be confirmed with status code 201
      And the response should return the "IMAGE" "Detail photo"
