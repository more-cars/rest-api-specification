@REQ_MCA-4798
Feature: Get all RACING EVENT-has-video Relationships
  As an API consumer
  I want to be able to fetch all VIDEOS that are connected to a RACING EVENT
  So I can find out more about it - be it in form of a review, a promo video or a podcast

  @RULE_MCA-4803
  Rule: A request to fetch all ›has-video‹ relationships is rejected when the provided data is invalid

    @TEST_MCA-4804 @implemented
    Scenario: Trying to fetch the ›has-video‹ relationships with an invalid RACING EVENT ID
      Given "RACING EVENT" "F1 GP Monaco" does NOT exist
      When the user requests all "has-video" relationships for "F1 GP Monaco"
      Then the request should be rejected with status code 404
