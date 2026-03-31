@REQ_MCA-5287
Feature: Create MOTOR SHOW-has-video Relationship
  As an API contributor
  I want to be able to attach VIDEOS to a MOTOR SHOW
  So an API consumer can illustrate the MOTOR SHOW node in a frontend application

  @RULE_MCA-5294
  Rule: The same ›has-video‹ relationship between the same nodes can only be created once

    @TEST_MCA-5295
    Scenario: Trying to create the same ›has-video‹ relationship again
      Given there exists a "MOTOR SHOW" "IAA Frankfurt"
      And there exists a "VIDEO" "Promo Video"
      And there exists a "has-video" relationship between "IAA Frankfurt" and "Promo Video"
      When the user creates a "has-video" relationship between "IAA Frankfurt" and "Promo Video"
      Then the response should return with status code 304
