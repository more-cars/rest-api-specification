@REQ_MCA-5980
Feature: Create BOOK-has-video Relationship
  As an API contributor
  I want to be able to attach VIDEOS to a BOOK
  So an API consumer can illustrate the BOOK node in a frontend application

  @RULE_MCA-5989
  Rule: Each BOOK can be in a ›has-video‹ relationship with multiple VIDEOS

    @TEST_MCA-5990 @implemented
    Scenario: Creating multiple ›has-video‹ relationships
      Given there exists a "BOOK" "F1 in Numbers"
      And there exists a "VIDEO" "Promo Video"
      And there exists a "VIDEO" "Promo Video (Part 2)"
      When the user creates a "has-video" relationship between "F1 in Numbers" and "Promo Video"
      And the user creates a "has-video" relationship between "F1 in Numbers" and "Promo Video (Part 2)"
      Then there should exist a "has-video" relationship between "F1 in Numbers" and "Promo Video"
      And there should exist a "has-video" relationship between "F1 in Numbers" and "Promo Video (Part 2)"
