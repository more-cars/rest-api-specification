@REQ_MCA-4798
Feature: Get all RACING EVENT-has-video Relationships
  As an API consumer
  I want to be able to fetch all VIDEOS that are connected to a RACING EVENT
  So I can find out more about it - be it in form of a review, a promo video or a podcast

  @RULE_MCA-4801
  Rule: An empty list is returned when there exist no ›has-video‹ relationships for the given RACING EVENT

    @TEST_MCA-4802 @implemented
    Scenario: Requesting the ›has-video‹ relationships when there are none
      Given there exists a "RACING EVENT" "F1 GP Monaco"
      And there exist 0 "has-video" relationships for "F1 GP Monaco"
      When the user requests all "has-video" relationships for "F1 GP Monaco"
      Then the request should be confirmed with status code 200
      And the response should return an empty list
