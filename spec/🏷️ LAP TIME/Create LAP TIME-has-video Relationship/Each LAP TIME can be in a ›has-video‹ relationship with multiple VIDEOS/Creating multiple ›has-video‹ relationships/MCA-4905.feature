@REQ_MCA-4895
Feature: Create LAP TIME-has-video Relationship
  As an API contributor
  I want to be able to attach VIDEOS to a LAP TIME
  So an API consumer can illustrate the LAP TIME node in a frontend application

  @RULE_MCA-4904
  Rule: Each LAP TIME can be in a ›has-video‹ relationship with multiple VIDEOS

    @TEST_MCA-4905
    Scenario: Creating multiple ›has-video‹ relationships
      Given there exists a "LAP TIME" "Fastest Lap"
      And there exists a "VIDEO" "Promo Video"
      And there exists a "VIDEO" "Promo Video (Part 2)"
      When the user creates a "has-video" relationship between "Fastest Lap" and "Promo Video"
      And the user creates a "has-video" relationship between "Fastest Lap" and "Promo Video (Part 2)"
      Then there should exist a "has-video" relationship between "Fastest Lap" and "Promo Video"
      And there should exist a "has-video" relationship between "Fastest Lap" and "Promo Video (Part 2)"
