@REQ_MCA-6072
Feature: Get BOOK-has-prime-image Relationship
  As an API consumer
  I want to be able to get the prime IMAGE of a BOOK
  So I can instantly load the IMAGE that best represents the BOOK

  @RULE_MCA-6077
  Rule: Requests to fetch the ›has-prime-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-6078 @implemented
    Scenario: Trying to fetch the ›has-prime-image‹ relationship with an invalid BOOK ID
      Given "BOOK" "F1 in Numbers" does NOT exist
      When the user requests the "has-prime-image" relationship for "F1 in Numbers"
      Then the request should be rejected with status code 404
