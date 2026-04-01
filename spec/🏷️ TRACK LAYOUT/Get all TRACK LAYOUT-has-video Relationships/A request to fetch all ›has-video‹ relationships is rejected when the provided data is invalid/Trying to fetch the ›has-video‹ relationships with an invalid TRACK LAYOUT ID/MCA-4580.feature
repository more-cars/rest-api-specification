@REQ_MCA-4574
Feature: Get all TRACK LAYOUT-has-video Relationships
  As an API consumer
  I want to be able to fetch all VIDEOS that are connected to a TRACK LAYOUT
  So I can find out more about it - be it in form of a review, a promo video or a podcast

  @RULE_MCA-4579
  Rule: A request to fetch all ›has-video‹ relationships is rejected when the provided data is invalid

    @TEST_MCA-4580 @implemented
    Scenario: Trying to fetch the ›has-video‹ relationships with an invalid TRACK LAYOUT ID
      Given "TRACK LAYOUT" "Nordschleife" does NOT exist
      When the user requests all "has-video" relationships for "Nordschleife"
      Then the request should be rejected with status code 404
