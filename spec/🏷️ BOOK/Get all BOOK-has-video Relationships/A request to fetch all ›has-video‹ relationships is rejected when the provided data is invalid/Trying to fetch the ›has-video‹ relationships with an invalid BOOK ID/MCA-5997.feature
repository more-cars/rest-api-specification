@REQ_MCA-5991
Feature: Get all BOOK-has-video Relationships
  As an API consumer
  I want to be able to fetch all VIDEOS that are connected to a BOOK
  So I can find out more about it - be it in form of a review, a promo video or a podcast

  @RULE_MCA-5996
  Rule: A request to fetch all ›has-video‹ relationships is rejected when the provided data is invalid

    @TEST_MCA-5997 @implemented
    Scenario: Trying to fetch the ›has-video‹ relationships with an invalid BOOK ID
      Given "BOOK" "F1 in Numbers" does NOT exist
      When the user requests all "has-video" relationships for "F1 in Numbers"
      Then the request should be rejected with status code 404
