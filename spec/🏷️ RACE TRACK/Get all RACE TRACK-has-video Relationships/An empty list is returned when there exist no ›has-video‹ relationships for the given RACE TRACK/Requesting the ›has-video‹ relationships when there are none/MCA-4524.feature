@REQ_MCA-4520
Feature: Get all RACE TRACK-has-video Relationships
  As an API consumer
  I want to be able to fetch all VIDEOS that are connected to a RACE TRACK
  So I can find out more about it - be it in form of a review, a promo video or a podcast

  @RULE_MCA-4523
  Rule: An empty list is returned when there exist no ›has-video‹ relationships for the given RACE TRACK

    @TEST_MCA-4524 @implemented
    Scenario: Requesting the ›has-video‹ relationships when there are none
      Given there exists a "RACE TRACK" "Nürburgring"
      And there exist 0 "has-video" relationships for "Nürburgring"
      When the user requests all "has-video" relationships for "Nürburgring"
      Then the request should be confirmed with status code 200
      And the response should return an empty list
