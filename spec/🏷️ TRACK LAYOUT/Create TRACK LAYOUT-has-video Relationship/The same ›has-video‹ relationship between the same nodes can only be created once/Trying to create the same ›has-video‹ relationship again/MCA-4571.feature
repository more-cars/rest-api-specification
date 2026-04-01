@REQ_MCA-4563
Feature: Create TRACK LAYOUT-has-video Relationship
  As an API contributor
  I want to be able to attach VIDEOS to a TRACK LAYOUT
  So an API consumer can illustrate the TRACK LAYOUT node in a frontend application

  @RULE_MCA-4570
  Rule: The same ›has-video‹ relationship between the same nodes can only be created once

    @TEST_MCA-4571 @implemented
    Scenario: Trying to create the same ›has-video‹ relationship again
      Given there exists a "TRACK LAYOUT" "Nordschleife"
      And there exists a "VIDEO" "Promo Video"
      And there exists a "has-video" relationship between "Nordschleife" and "Promo Video"
      When the user creates a "has-video" relationship between "Nordschleife" and "Promo Video"
      Then the response should return with status code 304
