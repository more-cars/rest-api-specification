@REQ_MCA-4574
Feature: Get all TRACK LAYOUT-has-video Relationships
  As an API consumer
  I want to be able to fetch all VIDEOS that are connected to a TRACK LAYOUT
  So I can find out more about it - be it in form of a review, a promo video or a podcast

  @RULE_MCA-4577
  Rule: An empty list is returned when there exist no ›has-video‹ relationships for the given TRACK LAYOUT

    @TEST_MCA-4578
    Scenario: Requesting the ›has-video‹ relationships when there are none
      Given there exists a "TRACK LAYOUT" "Nordschleife"
      And there exist 0 "has-video" relationships for "Nordschleife"
      When the user requests all "has-video" relationships for "Nordschleife"
      Then the request should be confirmed with status code 200
      And the response should return an empty list
