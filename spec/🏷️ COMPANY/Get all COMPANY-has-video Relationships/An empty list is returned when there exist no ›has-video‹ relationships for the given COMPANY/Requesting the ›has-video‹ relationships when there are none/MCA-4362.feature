@REQ_MCA-4358
Feature: Get all COMPANY-has-video Relationships
  As an API consumer
  I want to be able to fetch all VIDEOS that are connected to a COMPANY
  So I can find out more about it - be it in form of a review, a promo video or a podcast

  @RULE_MCA-4361
  Rule: An empty list is returned when there exist no ›has-video‹ relationships for the given COMPANY

    @TEST_MCA-4362
    Scenario: Requesting the ›has-video‹ relationships when there are none
      Given there exists a "COMPANY" "BMW AG"
      And there exist 0 "has-video" relationships for "BMW AG"
      When the user requests all "has-video" relationships for "BMW AG"
      Then the request should be confirmed with status code 200
      And the response should return an empty list
