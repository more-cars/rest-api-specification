@REQ_MCA-5190
Feature: Get all PROGRAMME-has-video Relationships
  As an API consumer
  I want to be able to fetch all VIDEOS that are connected to a PROGRAMME
  So I can find out more about it - be it in form of a review, a promo video or a podcast

  @RULE_MCA-5193
  Rule: An empty list is returned when there exist no ›has-video‹ relationships for the given PROGRAMME

    @TEST_MCA-5194 @implemented
    Scenario: Requesting the ›has-video‹ relationships when there are none
      Given there exists a "PROGRAMME" "The Grand Tour"
      And there exist 0 "has-video" relationships for "The Grand Tour"
      When the user requests all "has-video" relationships for "The Grand Tour"
      Then the request should be confirmed with status code 200
      And the response should return an empty list
