@REQ_MCA-5170
Feature: Delete MAGAZINE ISSUE-has-main-video Relationship
  As an API contributor
  I want to be able to disconnect the main VIDEO from a MAGAZINE ISSUE
  So I can clean up bad data or test data

  @RULE_MCA-5177
  Rule: Requests to delete the ›has-main-video‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-5178 @implemented
    Scenario: Trying to delete a non-existent ›has-main-video‹ relationship
      Given there exists a "MAGAZINE ISSUE" "Top Gear 03_2026"
      And there exists a "VIDEO" "Promo Video"
      And there exists NO "has-main-video" relationship between "Top Gear 03_2026" and "Promo Video"
      When the user deletes the "has-main-video" relationship between "Top Gear 03_2026" and "Promo Video"
      Then the request should be rejected with status code 404
