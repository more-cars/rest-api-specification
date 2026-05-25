@REQ_MCA-6061
Feature: Create BOOK-has-prime-image Relationship
  As an API contributor
  I want to be able to select the prime IMAGE of a BOOK
  So an API consumer can instantly load the IMAGE that best represents the BOOK

  @RULE_MCA-6068
  Rule: The same ›has-prime-image‹ relationship between the same nodes can only be created once

    @TEST_MCA-6069 @implemented
    Scenario: Trying to create the same ›has-prime-image‹ relationship again
      Given there exists a "BOOK" "F1 in Numbers"
      And there exists a "IMAGE" "Detail photo"
      And there exists a "has-prime-image" relationship between "F1 in Numbers" and "Detail photo"
      When the user creates a "has-prime-image" relationship between "F1 in Numbers" and "Detail photo"
      Then the response should return with status code 304
