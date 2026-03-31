@REQ_MCA-4320
Feature: Create BRAND-has-main-video Relationship
  As an API contributor
  I want to be able to select the main VIDEO of a BRAND
  So an API consumer can instantly load the VIDEO that best represents the BRAND

  @RULE_MCA-4327
  Rule: The same ›has-main-video‹ relationship between the same nodes can only be created once

    @TEST_MCA-4328
    Scenario: Trying to create the same ›has-main-video‹ relationship again
      Given there exists a "BRAND" "BMW"
      And there exists a "VIDEO" "Promo Video"
      And there exists a "has-main-video" relationship between "BMW" and "Promo Video"
      When the user creates a "has-main-video" relationship between "BMW" and "Promo Video"
      Then the response should return with status code 304
