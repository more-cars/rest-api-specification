@REQ_MCA-6007
Feature: Create BOOK-has-main-video Relationship
  As an API contributor
  I want to be able to select the main VIDEO of a BOOK
  So an API consumer can instantly load the VIDEO that best represents the BOOK

  @RULE_MCA-6014
  Rule: The same ›has-main-video‹ relationship between the same nodes can only be created once

    @TEST_MCA-6015 @implemented
    Scenario: Trying to create the same ›has-main-video‹ relationship again
      Given there exists a "BOOK" "F1 in Numbers"
      And there exists a "VIDEO" "Promo Video"
      And there exists a "has-main-video" relationship between "F1 in Numbers" and "Promo Video"
      When the user creates a "has-main-video" relationship between "F1 in Numbers" and "Promo Video"
      Then the response should return with status code 304
