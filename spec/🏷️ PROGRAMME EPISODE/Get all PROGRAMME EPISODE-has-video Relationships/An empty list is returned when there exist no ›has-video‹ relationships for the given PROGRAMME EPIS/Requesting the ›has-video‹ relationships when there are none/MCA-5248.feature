@REQ_MCA-5244
Feature: Get all PROGRAMME EPISODE-has-video Relationships
  As an API consumer
  I want to be able to fetch all VIDEOS that are connected to a PROGRAMME EPISODE
  So I can find out more about it - be it in form of a review, a promo video or a podcast

  @RULE_MCA-5247
  Rule: An empty list is returned when there exist no ›has-video‹ relationships for the given PROGRAMME EPISODE

    @TEST_MCA-5248
    Scenario: Requesting the ›has-video‹ relationships when there are none
      Given there exists a "PROGRAMME EPISODE" "The Holy Trinity"
      And there exist 0 "has-video" relationships for "The Holy Trinity"
      When the user requests all "has-video" relationships for "The Holy Trinity"
      Then the request should be confirmed with status code 200
      And the response should return an empty list
