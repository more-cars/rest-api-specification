@REQ_MCA-4906
Feature: Get all LAP TIME-has-video Relationships
  As an API consumer
  I want to be able to fetch all VIDEOS that are connected to a LAP TIME
  So I can find out more about it - be it in form of a review, a promo video or a podcast

  @RULE_MCA-4909
  Rule: An empty list is returned when there exist no ›has-video‹ relationships for the given LAP TIME

    @TEST_MCA-4910 @implemented
    Scenario: Requesting the ›has-video‹ relationships when there are none
      Given there exists a "LAP TIME" "Fastest Lap"
      And there exist 0 "has-video" relationships for "Fastest Lap"
      When the user requests all "has-video" relationships for "Fastest Lap"
      Then the request should be confirmed with status code 200
      And the response should return an empty list
