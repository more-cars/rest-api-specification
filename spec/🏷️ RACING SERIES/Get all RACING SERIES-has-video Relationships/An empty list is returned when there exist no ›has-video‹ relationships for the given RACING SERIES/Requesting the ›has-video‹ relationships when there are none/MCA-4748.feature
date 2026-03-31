@REQ_MCA-4744
Feature: Get all RACING SERIES-has-video Relationships
  As an API consumer
  I want to be able to fetch all VIDEOS that are connected to a RACING SERIES
  So I can find out more about it - be it in form of a review, a promo video or a podcast

  @RULE_MCA-4747
  Rule: An empty list is returned when there exist no ›has-video‹ relationships for the given RACING SERIES

    @TEST_MCA-4748
    Scenario: Requesting the ›has-video‹ relationships when there are none
      Given there exists a "RACING SERIES" "Formula 1"
      And there exist 0 "has-video" relationships for "Formula 1"
      When the user requests all "has-video" relationships for "Formula 1"
      Then the request should be confirmed with status code 200
      And the response should return an empty list
