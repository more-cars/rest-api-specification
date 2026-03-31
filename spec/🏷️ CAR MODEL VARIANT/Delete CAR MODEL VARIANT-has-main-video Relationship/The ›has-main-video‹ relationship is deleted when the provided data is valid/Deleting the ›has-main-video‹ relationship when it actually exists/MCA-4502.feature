@REQ_MCA-4500
Feature: Delete CAR MODEL VARIANT-has-main-video Relationship
  As an API contributor
  I want to be able to disconnect the main VIDEO from a CAR MODEL VARIANT
  So I can clean up bad data or test data

  @RULE_MCA-4501
  Rule: The ›has-main-video‹ relationship is deleted when the provided data is valid

    @TEST_MCA-4502
    Scenario: Deleting the ›has-main-video‹ relationship when it actually exists
      Given there exists a "CAR MODEL VARIANT" "BMW M3 CSL"
      And there exists a "VIDEO" "Promo Video"
      And there exists a "has-main-video" relationship "R" between "BMW M3 CSL" and "Promo Video"
      When the user deletes the "has-main-video" relationship between "BMW M3 CSL" and "Promo Video"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
