@REQ_MCA-5244
Feature: Get all PROGRAMME EPISODE-has-video Relationships
  As an API consumer
  I want to be able to fetch all VIDEOS that are connected to a PROGRAMME EPISODE
  So I can find out more about it - be it in form of a review, a promo video or a podcast

  @RULE_MCA-5249
  Rule: A request to fetch all ›has-video‹ relationships is rejected when the provided data is invalid

    @TEST_MCA-5250 @implemented
    Scenario: Trying to fetch the ›has-video‹ relationships with an invalid PROGRAMME EPISODE ID
      Given "PROGRAMME EPISODE" "The Holy Trinity" does NOT exist
      When the user requests all "has-video" relationships for "The Holy Trinity"
      Then the request should be rejected with status code 404
