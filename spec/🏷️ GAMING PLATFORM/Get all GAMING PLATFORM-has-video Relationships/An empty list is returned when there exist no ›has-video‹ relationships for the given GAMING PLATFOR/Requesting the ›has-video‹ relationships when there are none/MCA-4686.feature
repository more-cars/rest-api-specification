@REQ_MCA-4682
Feature: Get all GAMING PLATFORM-has-video Relationships
  As an API consumer
  I want to be able to fetch all VIDEOS that are connected to a GAMING PLATFORM
  So I can find out more about it - be it in form of a review, a promo video or a podcast

  @RULE_MCA-4685
  Rule: An empty list is returned when there exist no ›has-video‹ relationships for the given GAMING PLATFORM

    @TEST_MCA-4686
    Scenario: Requesting the ›has-video‹ relationships when there are none
      Given there exists a "GAMING PLATFORM" "Xbox"
      And there exist 0 "has-video" relationships for "Xbox"
      When the user requests all "has-video" relationships for "Xbox"
      Then the request should be confirmed with status code 200
      And the response should return an empty list
