@REQ_MCA-5260
Feature: Create PROGRAMME EPISODE-has-main-video Relationship
  As an API contributor
  I want to be able to select the main VIDEO of a PROGRAMME EPISODE
  So an API consumer can instantly load the VIDEO that best represents the PROGRAMME EPISODE

  @RULE_MCA-5267
  Rule: The same ›has-main-video‹ relationship between the same nodes can only be created once

    @TEST_MCA-5268 @implemented
    Scenario: Trying to create the same ›has-main-video‹ relationship again
      Given there exists a "PROGRAMME EPISODE" "The Holy Trinity"
      And there exists a "VIDEO" "Promo Video"
      And there exists a "has-main-video" relationship between "The Holy Trinity" and "Promo Video"
      When the user creates a "has-main-video" relationship between "The Holy Trinity" and "Promo Video"
      Then the response should return with status code 304
