@REQ_MCA-6072
Feature: Get BOOK-has-prime-image Relationship
  As an API consumer
  I want to be able to get the prime IMAGE of a BOOK
  So I can instantly load the IMAGE that best represents the BOOK

  @RULE_MCA-6075
  Rule: An empty response is returned when there exists no ›has-prime-image‹ relationship for the given BOOK

    @TEST_MCA-6076 @implemented
    Scenario: Requesting the ›has-prime-image‹ relationship when there exists none
      Given there exists a "BOOK" "F1 in Numbers"
      And there exists NO "has-prime-image" relationship for "F1 in Numbers"
      When the user requests the "has-prime-image" relationship for "F1 in Numbers"
      Then the request should be confirmed with status code 200
      But the response should contain no data
