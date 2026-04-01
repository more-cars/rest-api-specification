@REQ_MCA-5143
Feature: Delete MAGAZINE ISSUE-has-video Relationship
  As an API contributor
  I want to be able to disconnect VIDEOS from MAGAZINE ISSUES
  So I can clean up bad data or test data

  @RULE_MCA-5144
  Rule: The ›has-video‹ relationship is deleted when the provided data is valid

    @TEST_MCA-5145 @implemented
    Scenario: Deleting the ›has-video‹ relationship when it actually exists
      Given there exists a "MAGAZINE ISSUE" "Top Gear 03_2026"
      And there exists a "VIDEO" "Promo Video"
      And there exists a "has-video" relationship "R" between "Top Gear 03_2026" and "Promo Video"
      When the user deletes the "has-video" relationship between "Top Gear 03_2026" and "Promo Video"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
