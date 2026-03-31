@REQ_MCA-4744
Feature: Get all RACING SERIES-has-video Relationships
  As an API consumer
  I want to be able to fetch all VIDEOS that are connected to a RACING SERIES
  So I can find out more about it - be it in form of a review, a promo video or a podcast

  @RULE_MCA-4749
  Rule: A request to fetch all ›has-video‹ relationships is rejected when the provided data is invalid

    @TEST_MCA-4750
    Scenario: Trying to fetch the ›has-video‹ relationships with an invalid RACING SERIES ID
      Given "RACING SERIES" "Formula 1" does NOT exist
      When the user requests all "has-video" relationships for "Formula 1"
      Then the request should be rejected with status code 404
