@REQ_MCA-5314
Feature: Create MOTOR SHOW-has-main-video Relationship
  As an API contributor
  I want to be able to select the main VIDEO of a MOTOR SHOW
  So an API consumer can instantly load the VIDEO that best represents the MOTOR SHOW

  @RULE_MCA-5321
  Rule: The same ›has-main-video‹ relationship between the same nodes can only be created once

    @TEST_MCA-5322
    Scenario: Trying to create the same ›has-main-video‹ relationship again
      Given there exists a "MOTOR SHOW" "IAA Frankfurt"
      And there exists a "VIDEO" "Promo Video"
      And there exists a "has-main-video" relationship between "IAA Frankfurt" and "Promo Video"
      When the user creates a "has-main-video" relationship between "IAA Frankfurt" and "Promo Video"
      Then the response should return with status code 304
