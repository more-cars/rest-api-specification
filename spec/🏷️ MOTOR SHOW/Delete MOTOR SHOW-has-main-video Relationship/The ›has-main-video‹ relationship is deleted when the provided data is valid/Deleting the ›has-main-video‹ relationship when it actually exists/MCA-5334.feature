@REQ_MCA-5332
Feature: Delete MOTOR SHOW-has-main-video Relationship
  As an API contributor
  I want to be able to disconnect the main VIDEO from a MOTOR SHOW
  So I can clean up bad data or test data

  @RULE_MCA-5333
  Rule: The ›has-main-video‹ relationship is deleted when the provided data is valid

    @TEST_MCA-5334
    Scenario: Deleting the ›has-main-video‹ relationship when it actually exists
      Given there exists a "MOTOR SHOW" "IAA Frankfurt"
      And there exists a "VIDEO" "Promo Video"
      And there exists a "has-main-video" relationship "R" between "IAA Frankfurt" and "Promo Video"
      When the user deletes the "has-main-video" relationship between "IAA Frankfurt" and "Promo Video"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
