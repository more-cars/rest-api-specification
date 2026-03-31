@REQ_MCA-4304
Feature: Get all BRAND-has-video Relationships
  As an API consumer
  I want to be able to fetch all VIDEOS that are connected to a BRAND
  So I can find out more about it - be it in form of a review, a promo video or a podcast

  @RULE_MCA-4309
  Rule: A request to fetch all ›has-video‹ relationships is rejected when the provided data is invalid

    @TEST_MCA-4310
    Scenario: Trying to fetch the ›has-video‹ relationships with an invalid BRAND ID
      Given "BRAND" "BMW" does NOT exist
      When the user requests all "has-video" relationships for "BMW"
      Then the request should be rejected with status code 404
