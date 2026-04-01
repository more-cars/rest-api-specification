@REQ_MCA-4347
Feature: Create COMPANY-has-video Relationship
  As an API contributor
  I want to be able to attach VIDEOS to a COMPANY
  So an API consumer can illustrate the COMPANY node in a frontend application

  @RULE_MCA-4354
  Rule: The same ›has-video‹ relationship between the same nodes can only be created once

    @TEST_MCA-4355 @implemented
    Scenario: Trying to create the same ›has-video‹ relationship again
      Given there exists a "COMPANY" "BMW AG"
      And there exists a "VIDEO" "Promo Video"
      And there exists a "has-video" relationship between "BMW AG" and "Promo Video"
      When the user creates a "has-video" relationship between "BMW AG" and "Promo Video"
      Then the response should return with status code 304
