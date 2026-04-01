@REQ_MCA-4841
Feature: Create RACING SESSION-has-video Relationship
  As an API contributor
  I want to be able to attach VIDEOS to a RACING SESSION
  So an API consumer can illustrate the RACING SESSION node in a frontend application

  @RULE_MCA-4850
  Rule: Each RACING SESSION can be in a ›has-video‹ relationship with multiple VIDEOS

    @TEST_MCA-4851 @implemented
    Scenario: Creating multiple ›has-video‹ relationships
      Given there exists a "RACING SESSION" "Qualifying"
      And there exists a "VIDEO" "Promo Video"
      And there exists a "VIDEO" "Promo Video (Part 2)"
      When the user creates a "has-video" relationship between "Qualifying" and "Promo Video"
      And the user creates a "has-video" relationship between "Qualifying" and "Promo Video (Part 2)"
      Then there should exist a "has-video" relationship between "Qualifying" and "Promo Video"
      And there should exist a "has-video" relationship between "Qualifying" and "Promo Video (Part 2)"
