@REQ_MCA-6072
Feature: Get BOOK-has-prime-image Relationship
  As an API consumer
  I want to be able to get the prime IMAGE of a BOOK
  So I can instantly load the IMAGE that best represents the BOOK

  @RULE_MCA-6073
  Rule: The ›has-prime-image‹ relationship is returned when the provided data is valid

    @TEST_MCA-6074 @implemented
    Scenario: Requesting the ›has-prime-image‹ relationship when one exists
      Given there exists a "BOOK" "F1 in Numbers"
      And there exists a "has-prime-image" relationship "R" for "F1 in Numbers"
      When the user requests the "has-prime-image" relationship for "F1 in Numbers"
      Then the request should be confirmed with status code 200
      And the response should return the relationship "R"
