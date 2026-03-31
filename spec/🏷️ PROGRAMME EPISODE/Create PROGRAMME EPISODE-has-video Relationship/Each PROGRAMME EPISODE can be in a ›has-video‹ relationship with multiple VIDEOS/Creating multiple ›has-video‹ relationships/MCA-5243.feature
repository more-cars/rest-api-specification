@REQ_MCA-5233
Feature: Create PROGRAMME EPISODE-has-video Relationship
  As an API contributor
  I want to be able to attach VIDEOS to a PROGRAMME EPISODE
  So an API consumer can illustrate the PROGRAMME EPISODE node in a frontend application

  @RULE_MCA-5242
  Rule: Each PROGRAMME EPISODE can be in a ›has-video‹ relationship with multiple VIDEOS

    @TEST_MCA-5243
    Scenario: Creating multiple ›has-video‹ relationships
      Given there exists a "PROGRAMME EPISODE" "The Holy Trinity"
      And there exists a "VIDEO" "Promo Video"
      And there exists a "VIDEO" "Promo Video (Part 2)"
      When the user creates a "has-video" relationship between "The Holy Trinity" and "Promo Video"
      And the user creates a "has-video" relationship between "The Holy Trinity" and "Promo Video (Part 2)"
      Then there should exist a "has-video" relationship between "The Holy Trinity" and "Promo Video"
      And there should exist a "has-video" relationship between "The Holy Trinity" and "Promo Video (Part 2)"
