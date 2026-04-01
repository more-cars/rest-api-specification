@REQ_MCA-4841
Feature: Create RACING SESSION-has-video Relationship
  As an API contributor
  I want to be able to attach VIDEOS to a RACING SESSION
  So an API consumer can illustrate the RACING SESSION node in a frontend application

  @RULE_MCA-4848
  Rule: The same ›has-video‹ relationship between the same nodes can only be created once

    @TEST_MCA-4849 @implemented
    Scenario: Trying to create the same ›has-video‹ relationship again
      Given there exists a "RACING SESSION" "Qualifying"
      And there exists a "VIDEO" "Promo Video"
      And there exists a "has-video" relationship between "Qualifying" and "Promo Video"
      When the user creates a "has-video" relationship between "Qualifying" and "Promo Video"
      Then the response should return with status code 304
