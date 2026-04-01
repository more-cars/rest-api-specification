@REQ_MCA-5082
Feature: Get all MAGAZINE-has-video Relationships
  As an API consumer
  I want to be able to fetch all VIDEOS that are connected to a MAGAZINE
  So I can find out more about it - be it in form of a review, a promo video or a podcast

  @RULE_MCA-5085
  Rule: An empty list is returned when there exist no ›has-video‹ relationships for the given MAGAZINE

    @TEST_MCA-5086 @implemented
    Scenario: Requesting the ›has-video‹ relationships when there are none
      Given there exists a "MAGAZINE" "Top Gear"
      And there exist 0 "has-video" relationships for "Top Gear"
      When the user requests all "has-video" relationships for "Top Gear"
      Then the request should be confirmed with status code 200
      And the response should return an empty list
