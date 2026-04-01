@REQ_MCA-5179
Feature: Create PROGRAMME-has-video Relationship
  As an API contributor
  I want to be able to attach VIDEOS to a PROGRAMME
  So an API consumer can illustrate the PROGRAMME node in a frontend application

  @RULE_MCA-5186
  Rule: The same ›has-video‹ relationship between the same nodes can only be created once

    @TEST_MCA-5187 @implemented
    Scenario: Trying to create the same ›has-video‹ relationship again
      Given there exists a "PROGRAMME" "The Grand Tour"
      And there exists a "VIDEO" "Promo Video"
      And there exists a "has-video" relationship between "The Grand Tour" and "Promo Video"
      When the user creates a "has-video" relationship between "The Grand Tour" and "Promo Video"
      Then the response should return with status code 304
