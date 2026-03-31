@REQ_MCA-4906
Feature: Get all LAP TIME-has-video Relationships
  As an API consumer
  I want to be able to fetch all VIDEOS that are connected to a LAP TIME
  So I can find out more about it - be it in form of a review, a promo video or a podcast

  @RULE_MCA-4911
  Rule: A request to fetch all ›has-video‹ relationships is rejected when the provided data is invalid

    @TEST_MCA-4912
    Scenario: Trying to fetch the ›has-video‹ relationships with an invalid LAP TIME ID
      Given "LAP TIME" "Fastest Lap" does NOT exist
      When the user requests all "has-video" relationships for "Fastest Lap"
      Then the request should be rejected with status code 404
