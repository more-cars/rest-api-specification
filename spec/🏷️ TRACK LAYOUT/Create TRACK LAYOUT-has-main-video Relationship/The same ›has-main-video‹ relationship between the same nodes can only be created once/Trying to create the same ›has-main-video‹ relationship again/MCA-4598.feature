@REQ_MCA-4590
Feature: Create TRACK LAYOUT-has-main-video Relationship
  As an API contributor
  I want to be able to select the main VIDEO of a TRACK LAYOUT
  So an API consumer can instantly load the VIDEO that best represents the TRACK LAYOUT

  @RULE_MCA-4597
  Rule: The same ›has-main-video‹ relationship between the same nodes can only be created once

    @TEST_MCA-4598
    Scenario: Trying to create the same ›has-main-video‹ relationship again
      Given there exists a "TRACK LAYOUT" "Nordschleife"
      And there exists a "VIDEO" "Promo Video"
      And there exists a "has-main-video" relationship between "Nordschleife" and "Promo Video"
      When the user creates a "has-main-video" relationship between "Nordschleife" and "Promo Video"
      Then the response should return with status code 304
