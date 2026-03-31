@REQ_MCA-5206
Feature: Create PROGRAMME-has-main-video Relationship
  As an API contributor
  I want to be able to select the main VIDEO of a PROGRAMME
  So an API consumer can instantly load the VIDEO that best represents the PROGRAMME

  @RULE_MCA-5213
  Rule: The same ›has-main-video‹ relationship between the same nodes can only be created once

    @TEST_MCA-5214
    Scenario: Trying to create the same ›has-main-video‹ relationship again
      Given there exists a "PROGRAMME" "The Grand Tour"
      And there exists a "VIDEO" "Promo Video"
      And there exists a "has-main-video" relationship between "The Grand Tour" and "Promo Video"
      When the user creates a "has-main-video" relationship between "The Grand Tour" and "Promo Video"
      Then the response should return with status code 304
