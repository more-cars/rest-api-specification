@REQ_MCA-5980
Feature: Create BOOK-has-video Relationship
  As an API contributor
  I want to be able to attach VIDEOS to a BOOK
  So an API consumer can illustrate the BOOK node in a frontend application

  @RULE_MCA-5987
  Rule: The same ›has-video‹ relationship between the same nodes can only be created once

    @TEST_MCA-5988 @implemented
    Scenario: Trying to create the same ›has-video‹ relationship again
      Given there exists a "BOOK" "F1 in Numbers"
      And there exists a "VIDEO" "Promo Video"
      And there exists a "has-video" relationship between "F1 in Numbers" and "Promo Video"
      When the user creates a "has-video" relationship between "F1 in Numbers" and "Promo Video"
      Then the response should return with status code 304
