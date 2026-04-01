@REQ_MCA-4798
Feature: Get all RACING EVENT-has-video Relationships
  As an API consumer
  I want to be able to fetch all VIDEOS that are connected to a RACING EVENT
  So I can find out more about it - be it in form of a review, a promo video or a podcast

  @RULE_MCA-4799
  Rule: A list of all ›has-video‹ relationships is returned when the provided data is valid

    @TEST_MCA-4800 @implemented
    Scenario: Requesting the ›has-video‹ relationships when at least one exists
      Given there exists a "RACING EVENT" "F1 GP Monaco"
      And there exist 3 "has-video" relationships for "F1 GP Monaco"
      When the user requests all "has-video" relationships for "F1 GP Monaco"
      Then the request should be confirmed with status code 200
      And the response should return a collection with 3 "has-video" relationships
