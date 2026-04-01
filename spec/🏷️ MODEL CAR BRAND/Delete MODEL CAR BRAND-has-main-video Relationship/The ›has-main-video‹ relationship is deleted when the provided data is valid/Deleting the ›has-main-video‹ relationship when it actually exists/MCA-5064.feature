@REQ_MCA-5062
Feature: Delete MODEL CAR BRAND-has-main-video Relationship
  As an API contributor
  I want to be able to disconnect the main VIDEO from a MODEL CAR BRAND
  So I can clean up bad data or test data

  @RULE_MCA-5063
  Rule: The ›has-main-video‹ relationship is deleted when the provided data is valid

    @TEST_MCA-5064 @implemented
    Scenario: Deleting the ›has-main-video‹ relationship when it actually exists
      Given there exists a "MODEL CAR BRAND" "Hot Wheels"
      And there exists a "VIDEO" "Promo Video"
      And there exists a "has-main-video" relationship "R" between "Hot Wheels" and "Promo Video"
      When the user deletes the "has-main-video" relationship between "Hot Wheels" and "Promo Video"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
