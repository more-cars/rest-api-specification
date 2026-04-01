@REQ_MCA-5206
Feature: Create PROGRAMME-has-main-video Relationship
  As an API contributor
  I want to be able to select the main VIDEO of a PROGRAMME
  So an API consumer can instantly load the VIDEO that best represents the PROGRAMME

  @RULE_MCA-5215
  Rule: At the same time, each PROGRAMME can only be in a ›has-main-video‹ relationship with one VIDEO

    @TEST_MCA-5216 @implemented
    Scenario: Creating a ›has-main-video‹ relationship with a different VIDEO
      Given there exists a "PROGRAMME" "The Grand Tour"
      And there exists a "VIDEO" "Promo Video"
      And there exists a "VIDEO" "Promo Video (Part 2)"
      When the user creates a "has-main-video" relationship between "The Grand Tour" and "Promo Video"
      Then there should exist a "has-main-video" relationship between "The Grand Tour" and "Promo Video"
      When the user creates a "has-main-video" relationship between "The Grand Tour" and "Promo Video (Part 2)"
      Then there should exist a "has-main-video" relationship between "The Grand Tour" and "Promo Video (Part 2)"
      But there should exist NO "has-main-video" relationship between "The Grand Tour" and "Promo Video"
