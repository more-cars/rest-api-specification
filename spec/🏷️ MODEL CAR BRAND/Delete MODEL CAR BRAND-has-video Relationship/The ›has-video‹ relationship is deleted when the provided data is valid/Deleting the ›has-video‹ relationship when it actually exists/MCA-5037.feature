@REQ_MCA-5035
Feature: Delete MODEL CAR BRAND-has-video Relationship
  As an API contributor
  I want to be able to disconnect VIDEOS from MODEL CAR BRANDS
  So I can clean up bad data or test data

  @RULE_MCA-5036
  Rule: The ›has-video‹ relationship is deleted when the provided data is valid

    @TEST_MCA-5037 @implemented
    Scenario: Deleting the ›has-video‹ relationship when it actually exists
      Given there exists a "MODEL CAR BRAND" "Hot Wheels"
      And there exists a "VIDEO" "Promo Video"
      And there exists a "has-video" relationship "R" between "Hot Wheels" and "Promo Video"
      When the user deletes the "has-video" relationship between "Hot Wheels" and "Promo Video"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
