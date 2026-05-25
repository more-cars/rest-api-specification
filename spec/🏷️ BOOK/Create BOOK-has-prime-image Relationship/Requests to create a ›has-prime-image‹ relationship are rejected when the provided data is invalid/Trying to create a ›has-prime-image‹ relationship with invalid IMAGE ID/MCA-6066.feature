@REQ_MCA-6061
Feature: Create BOOK-has-prime-image Relationship
  As an API contributor
  I want to be able to select the prime IMAGE of a BOOK
  So an API consumer can instantly load the IMAGE that best represents the BOOK

  @RULE_MCA-6064
  Rule: Requests to create a ›has-prime-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-6066 @implemented
    Scenario: Trying to create a ›has-prime-image‹ relationship with invalid IMAGE ID
      Given there exists a "BOOK" "F1 in Numbers"
      And "IMAGE" "Detail photo" does NOT exist
      When the user creates a "has-prime-image" relationship between "F1 in Numbers" and "Detail photo"
      Then the request should be rejected with status code 404
