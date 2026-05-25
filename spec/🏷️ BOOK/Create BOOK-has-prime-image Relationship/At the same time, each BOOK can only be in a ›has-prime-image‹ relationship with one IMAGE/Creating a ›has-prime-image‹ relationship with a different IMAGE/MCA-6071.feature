@REQ_MCA-6061
Feature: Create BOOK-has-prime-image Relationship
  As an API contributor
  I want to be able to select the prime IMAGE of a BOOK
  So an API consumer can instantly load the IMAGE that best represents the BOOK

  @RULE_MCA-6070
  Rule: At the same time, each BOOK can only be in a ›has-prime-image‹ relationship with one IMAGE

    @TEST_MCA-6071 @implemented
    Scenario: Creating a ›has-prime-image‹ relationship with a different IMAGE
      Given there exists a "BOOK" "F1 in Numbers"
      And there exists a "IMAGE" "Detail photo"
      And there exists a "IMAGE" "Detail photo (Alternative)"
      When the user creates a "has-prime-image" relationship between "F1 in Numbers" and "Detail photo"
      Then there should exist a "has-prime-image" relationship between "F1 in Numbers" and "Detail photo"
      When the user creates a "has-prime-image" relationship between "F1 in Numbers" and "Detail photo (Alternative)"
      Then there should exist a "has-prime-image" relationship between "F1 in Numbers" and "Detail photo (Alternative)"
      But there should exist NO "has-prime-image" relationship between "F1 in Numbers" and "Detail photo"
