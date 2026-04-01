@REQ_MCA-5082
Feature: Get all MAGAZINE-has-video Relationships
  As an API consumer
  I want to be able to fetch all VIDEOS that are connected to a MAGAZINE
  So I can find out more about it - be it in form of a review, a promo video or a podcast

  @RULE_MCA-5087
  Rule: A request to fetch all ›has-video‹ relationships is rejected when the provided data is invalid

    @TEST_MCA-5088 @implemented
    Scenario: Trying to fetch the ›has-video‹ relationships with an invalid MAGAZINE ID
      Given "MAGAZINE" "Top Gear" does NOT exist
      When the user requests all "has-video" relationships for "Top Gear"
      Then the request should be rejected with status code 404
