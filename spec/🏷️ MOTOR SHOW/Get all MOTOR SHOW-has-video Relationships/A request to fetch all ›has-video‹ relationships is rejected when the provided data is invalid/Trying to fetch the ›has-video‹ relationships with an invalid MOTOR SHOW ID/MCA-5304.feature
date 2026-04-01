@REQ_MCA-5298
Feature: Get all MOTOR SHOW-has-video Relationships
  As an API consumer
  I want to be able to fetch all VIDEOS that are connected to a MOTOR SHOW
  So I can find out more about it - be it in form of a review, a promo video or a podcast

  @RULE_MCA-5303
  Rule: A request to fetch all ›has-video‹ relationships is rejected when the provided data is invalid

    @TEST_MCA-5304 @implemented
    Scenario: Trying to fetch the ›has-video‹ relationships with an invalid MOTOR SHOW ID
      Given "MOTOR SHOW" "IAA Frankfurt" does NOT exist
      When the user requests all "has-video" relationships for "IAA Frankfurt"
      Then the request should be rejected with status code 404
