@REQ_MCA-6034
Feature: Create BOOK-has-image Relationship
  As an API contributor
  I want to be able to attach IMAGES to a BOOK
  So an API consumer can illustrate the BOOK node in a frontend application

  @RULE_MCA-6043
  Rule: Each BOOK can be in a ›has-image‹ relationship with multiple IMAGES

    @TEST_MCA-6044 @implemented
    Scenario: Creating multiple ›has-image‹ relationships
      Given there exists a "BOOK" "F1 in Numbers"
      And there exists a "IMAGE" "Detail photo"
      And there exists a "IMAGE" "Detail photo (Alternative)"
      When the user creates a "has-image" relationship between "F1 in Numbers" and "Detail photo"
      And the user creates a "has-image" relationship between "F1 in Numbers" and "Detail photo (Alternative)"
      Then there should exist a "has-image" relationship between "F1 in Numbers" and "Detail photo"
      And there should exist a "has-image" relationship between "F1 in Numbers" and "Detail photo (Alternative)"
