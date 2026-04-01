@REQ_MCA-4608
Feature: Delete TRACK LAYOUT-has-main-video Relationship
  As an API contributor
  I want to be able to disconnect the main VIDEO from a TRACK LAYOUT
  So I can clean up bad data or test data

  @RULE_MCA-4609
  Rule: The ›has-main-video‹ relationship is deleted when the provided data is valid

    @TEST_MCA-4610 @implemented
    Scenario: Deleting the ›has-main-video‹ relationship when it actually exists
      Given there exists a "TRACK LAYOUT" "Nordschleife"
      And there exists a "VIDEO" "Promo Video"
      And there exists a "has-main-video" relationship "R" between "Nordschleife" and "Promo Video"
      When the user deletes the "has-main-video" relationship between "Nordschleife" and "Promo Video"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
