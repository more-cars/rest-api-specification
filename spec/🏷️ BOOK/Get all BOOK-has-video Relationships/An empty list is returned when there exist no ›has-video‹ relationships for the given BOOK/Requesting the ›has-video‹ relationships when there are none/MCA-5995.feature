@REQ_MCA-5991
Feature: Get all BOOK-has-video Relationships
  As an API consumer
  I want to be able to fetch all VIDEOS that are connected to a BOOK
  So I can find out more about it - be it in form of a review, a promo video or a podcast

  @RULE_MCA-5994
  Rule: An empty list is returned when there exist no ›has-video‹ relationships for the given BOOK

    @TEST_MCA-5995 @implemented
    Scenario: Requesting the ›has-video‹ relationships when there are none
      Given there exists a "BOOK" "F1 in Numbers"
      And there exist 0 "has-video" relationships for "F1 in Numbers"
      When the user requests all "has-video" relationships for "F1 in Numbers"
      Then the request should be confirmed with status code 200
      And the response should return an empty list
