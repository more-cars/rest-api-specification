@REQ_MCA-5287
Feature: Create MOTOR SHOW-has-video Relationship
  As an API contributor
  I want to be able to attach VIDEOS to a MOTOR SHOW
  So an API consumer can illustrate the MOTOR SHOW node in a frontend application

  @RULE_MCA-5296
  Rule: Each MOTOR SHOW can be in a ›has-video‹ relationship with multiple VIDEOS

    @TEST_MCA-5297
    Scenario: Creating multiple ›has-video‹ relationships
      Given there exists a "MOTOR SHOW" "IAA Frankfurt"
      And there exists a "VIDEO" "Promo Video"
      And there exists a "VIDEO" "Promo Video (Part 2)"
      When the user creates a "has-video" relationship between "IAA Frankfurt" and "Promo Video"
      And the user creates a "has-video" relationship between "IAA Frankfurt" and "Promo Video (Part 2)"
      Then there should exist a "has-video" relationship between "IAA Frankfurt" and "Promo Video"
      And there should exist a "has-video" relationship between "IAA Frankfurt" and "Promo Video (Part 2)"
