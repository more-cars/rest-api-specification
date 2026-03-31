@REQ_MCA-5143
Feature: Delete MAGAZINE ISSUE-has-video Relationship
  As an API contributor
  I want to be able to disconnect VIDEOS from MAGAZINE ISSUES
  So I can clean up bad data or test data

  @RULE_MCA-5150
  Rule: Requests to delete the ›has-video‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-5151
    Scenario: Trying to delete a non-existent ›has-video‹ relationship
      Given there exists a "MAGAZINE ISSUE" "Top Gear 03_2026"
      And there exists a "VIDEO" "Promo Video"
      And there exists NO "has-video" relationship between "Top Gear 03_2026" and "Promo Video"
      When the user deletes the "has-video" relationship between "Top Gear 03_2026" and "Promo Video"
      Then the request should be rejected with status code 404
