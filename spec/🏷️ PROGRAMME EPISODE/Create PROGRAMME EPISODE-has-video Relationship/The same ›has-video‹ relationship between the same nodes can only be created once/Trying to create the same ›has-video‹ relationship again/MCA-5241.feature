@REQ_MCA-5233
Feature: Create PROGRAMME EPISODE-has-video Relationship
  As an API contributor
  I want to be able to attach VIDEOS to a PROGRAMME EPISODE
  So an API consumer can illustrate the PROGRAMME EPISODE node in a frontend application

  @RULE_MCA-5240
  Rule: The same ›has-video‹ relationship between the same nodes can only be created once

    @TEST_MCA-5241
    Scenario: Trying to create the same ›has-video‹ relationship again
      Given there exists a "PROGRAMME EPISODE" "The Holy Trinity"
      And there exists a "VIDEO" "Promo Video"
      And there exists a "has-video" relationship between "The Holy Trinity" and "Promo Video"
      When the user creates a "has-video" relationship between "The Holy Trinity" and "Promo Video"
      Then the response should return with status code 304
