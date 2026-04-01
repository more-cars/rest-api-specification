@REQ_MCA-5028
Feature: Get all MODEL CAR BRAND-has-video Relationships
  As an API consumer
  I want to be able to fetch all VIDEOS that are connected to a MODEL CAR BRAND
  So I can find out more about it - be it in form of a review, a promo video or a podcast

  @RULE_MCA-5031
  Rule: An empty list is returned when there exist no ›has-video‹ relationships for the given MODEL CAR BRAND

    @TEST_MCA-5032 @implemented
    Scenario: Requesting the ›has-video‹ relationships when there are none
      Given there exists a "MODEL CAR BRAND" "Hot Wheels"
      And there exist 0 "has-video" relationships for "Hot Wheels"
      When the user requests all "has-video" relationships for "Hot Wheels"
      Then the request should be confirmed with status code 200
      And the response should return an empty list
