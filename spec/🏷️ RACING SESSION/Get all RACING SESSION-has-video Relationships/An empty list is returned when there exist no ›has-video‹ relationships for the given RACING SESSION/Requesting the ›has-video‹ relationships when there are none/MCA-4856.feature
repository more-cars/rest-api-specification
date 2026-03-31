@REQ_MCA-4852
Feature: Get all RACING SESSION-has-video Relationships
  As an API consumer
  I want to be able to fetch all VIDEOS that are connected to a RACING SESSION
  So I can find out more about it - be it in form of a review, a promo video or a podcast

  @RULE_MCA-4855
  Rule: An empty list is returned when there exist no ›has-video‹ relationships for the given RACING SESSION

    @TEST_MCA-4856
    Scenario: Requesting the ›has-video‹ relationships when there are none
      Given there exists a "RACING SESSION" "Qualifying"
      And there exist 0 "has-video" relationships for "Qualifying"
      When the user requests all "has-video" relationships for "Qualifying"
      Then the request should be confirmed with status code 200
      And the response should return an empty list
