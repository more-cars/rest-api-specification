@REQ_MCA-5028
Feature: Get all MODEL CAR BRAND-has-video Relationships
  As an API consumer
  I want to be able to fetch all VIDEOS that are connected to a MODEL CAR BRAND
  So I can find out more about it - be it in form of a review, a promo video or a podcast

  @RULE_MCA-5033
  Rule: A request to fetch all ›has-video‹ relationships is rejected when the provided data is invalid

    @TEST_MCA-5034 @implemented
    Scenario: Trying to fetch the ›has-video‹ relationships with an invalid MODEL CAR BRAND ID
      Given "MODEL CAR BRAND" "Hot Wheels" does NOT exist
      When the user requests all "has-video" relationships for "Hot Wheels"
      Then the request should be rejected with status code 404
