@REQ_MCA-4852
Feature: Get all RACING SESSION-has-video Relationships
  As an API consumer
  I want to be able to fetch all VIDEOS that are connected to a RACING SESSION
  So I can find out more about it - be it in form of a review, a promo video or a podcast

  @RULE_MCA-4857
  Rule: A request to fetch all ›has-video‹ relationships is rejected when the provided data is invalid

    @TEST_MCA-4858 @implemented
    Scenario: Trying to fetch the ›has-video‹ relationships with an invalid RACING SESSION ID
      Given "RACING SESSION" "Qualifying" does NOT exist
      When the user requests all "has-video" relationships for "Qualifying"
      Then the request should be rejected with status code 404
