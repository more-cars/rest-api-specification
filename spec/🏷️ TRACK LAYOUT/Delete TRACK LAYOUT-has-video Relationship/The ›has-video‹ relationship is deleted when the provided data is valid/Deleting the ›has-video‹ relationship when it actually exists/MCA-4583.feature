@REQ_MCA-4581
Feature: Delete TRACK LAYOUT-has-video Relationship
  As an API contributor
  I want to be able to disconnect VIDEOS from TRACK LAYOUTS
  So I can clean up bad data or test data

  @RULE_MCA-4582
  Rule: The ›has-video‹ relationship is deleted when the provided data is valid

    @TEST_MCA-4583 @implemented
    Scenario: Deleting the ›has-video‹ relationship when it actually exists
      Given there exists a "TRACK LAYOUT" "Nordschleife"
      And there exists a "VIDEO" "Promo Video"
      And there exists a "has-video" relationship "R" between "Nordschleife" and "Promo Video"
      When the user deletes the "has-video" relationship between "Nordschleife" and "Promo Video"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
