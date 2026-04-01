@REQ_MCA-5136
Feature: Get all MAGAZINE ISSUE-has-video Relationships
  As an API consumer
  I want to be able to fetch all VIDEOS that are connected to a MAGAZINE ISSUE
  So I can find out more about it - be it in form of a review, a promo video or a podcast

  @RULE_MCA-5141
  Rule: A request to fetch all ›has-video‹ relationships is rejected when the provided data is invalid

    @TEST_MCA-5142 @implemented
    Scenario: Trying to fetch the ›has-video‹ relationships with an invalid MAGAZINE ISSUE ID
      Given "MAGAZINE ISSUE" "Top Gear 03_2026" does NOT exist
      When the user requests all "has-video" relationships for "Top Gear 03_2026"
      Then the request should be rejected with status code 404
