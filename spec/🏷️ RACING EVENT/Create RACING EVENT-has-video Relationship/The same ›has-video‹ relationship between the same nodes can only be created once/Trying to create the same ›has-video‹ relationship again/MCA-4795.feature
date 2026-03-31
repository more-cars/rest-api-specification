@REQ_MCA-4787
Feature: Create RACING EVENT-has-video Relationship
  As an API contributor
  I want to be able to attach VIDEOS to a RACING EVENT
  So an API consumer can illustrate the RACING EVENT node in a frontend application

  @RULE_MCA-4794
  Rule: The same ›has-video‹ relationship between the same nodes can only be created once

    @TEST_MCA-4795
    Scenario: Trying to create the same ›has-video‹ relationship again
      Given there exists a "RACING EVENT" "F1 GP Monaco"
      And there exists a "VIDEO" "Promo Video"
      And there exists a "has-video" relationship between "F1 GP Monaco" and "Promo Video"
      When the user creates a "has-video" relationship between "F1 GP Monaco" and "Promo Video"
      Then the response should return with status code 304
