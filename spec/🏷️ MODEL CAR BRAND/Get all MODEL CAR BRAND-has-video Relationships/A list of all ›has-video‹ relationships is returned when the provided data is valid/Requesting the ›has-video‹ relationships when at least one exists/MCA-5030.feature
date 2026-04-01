@REQ_MCA-5028
Feature: Get all MODEL CAR BRAND-has-video Relationships
  As an API consumer
  I want to be able to fetch all VIDEOS that are connected to a MODEL CAR BRAND
  So I can find out more about it - be it in form of a review, a promo video or a podcast

  @RULE_MCA-5029
  Rule: A list of all ›has-video‹ relationships is returned when the provided data is valid

    @TEST_MCA-5030 @implemented
    Scenario: Requesting the ›has-video‹ relationships when at least one exists
      Given there exists a "MODEL CAR BRAND" "Hot Wheels"
      And there exist 3 "has-video" relationships for "Hot Wheels"
      When the user requests all "has-video" relationships for "Hot Wheels"
      Then the request should be confirmed with status code 200
      And the response should return a collection with 3 "has-video" relationships
