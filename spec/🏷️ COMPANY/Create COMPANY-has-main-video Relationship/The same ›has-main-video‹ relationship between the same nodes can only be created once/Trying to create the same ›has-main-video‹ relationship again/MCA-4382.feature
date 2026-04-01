@REQ_MCA-4374
Feature: Create COMPANY-has-main-video Relationship
  As an API contributor
  I want to be able to select the main VIDEO of a COMPANY
  So an API consumer can instantly load the VIDEO that best represents the COMPANY

  @RULE_MCA-4381
  Rule: The same ›has-main-video‹ relationship between the same nodes can only be created once

    @TEST_MCA-4382 @implemented
    Scenario: Trying to create the same ›has-main-video‹ relationship again
      Given there exists a "COMPANY" "BMW AG"
      And there exists a "VIDEO" "Promo Video"
      And there exists a "has-main-video" relationship between "BMW AG" and "Promo Video"
      When the user creates a "has-main-video" relationship between "BMW AG" and "Promo Video"
      Then the response should return with status code 304
