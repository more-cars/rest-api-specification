@REQ_MCA-5062
Feature: Delete MODEL CAR BRAND-has-main-video Relationship
  As an API contributor
  I want to be able to disconnect the main VIDEO from a MODEL CAR BRAND
  So I can clean up bad data or test data

  @RULE_MCA-5069
  Rule: Requests to delete the ›has-main-video‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-5070 @implemented
    Scenario: Trying to delete a non-existent ›has-main-video‹ relationship
      Given there exists a "MODEL CAR BRAND" "Hot Wheels"
      And there exists a "VIDEO" "Promo Video"
      And there exists NO "has-main-video" relationship between "Hot Wheels" and "Promo Video"
      When the user deletes the "has-main-video" relationship between "Hot Wheels" and "Promo Video"
      Then the request should be rejected with status code 404
