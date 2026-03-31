@REQ_MCA-4358
Feature: Get all COMPANY-has-video Relationships
  As an API consumer
  I want to be able to fetch all VIDEOS that are connected to a COMPANY
  So I can find out more about it - be it in form of a review, a promo video or a podcast

  @RULE_MCA-4363
  Rule: A request to fetch all ›has-video‹ relationships is rejected when the provided data is invalid

    @TEST_MCA-4364
    Scenario: Trying to fetch the ›has-video‹ relationships with an invalid COMPANY ID
      Given "COMPANY" "BMW AG" does NOT exist
      When the user requests all "has-video" relationships for "BMW AG"
      Then the request should be rejected with status code 404
