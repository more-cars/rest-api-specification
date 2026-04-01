@REQ_MCA-4358
Feature: Get all COMPANY-has-video Relationships
  As an API consumer
  I want to be able to fetch all VIDEOS that are connected to a COMPANY
  So I can find out more about it - be it in form of a review, a promo video or a podcast

  @RULE_MCA-4359
  Rule: A list of all ›has-video‹ relationships is returned when the provided data is valid

    @TEST_MCA-4360 @implemented
    Scenario: Requesting the ›has-video‹ relationships when at least one exists
      Given there exists a "COMPANY" "BMW AG"
      And there exist 3 "has-video" relationships for "BMW AG"
      When the user requests all "has-video" relationships for "BMW AG"
      Then the request should be confirmed with status code 200
      And the response should return a collection with 3 "has-video" relationships
