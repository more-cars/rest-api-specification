@REQ_MCA-4960
Feature: Get all MODEL CAR-has-video Relationships
  As an API consumer
  I want to be able to fetch all VIDEOS that are connected to a MODEL CAR
  So I can find out more about it - be it in form of a review, a promo video or a podcast

  @RULE_MCA-4965
  Rule: A request to fetch all ›has-video‹ relationships is rejected when the provided data is invalid

    @TEST_MCA-4966
    Scenario: Trying to fetch the ›has-video‹ relationships with an invalid MODEL CAR ID
      Given "MODEL CAR" "Hot Wheels F40" does NOT exist
      When the user requests all "has-video" relationships for "Hot Wheels F40"
      Then the request should be rejected with status code 404
