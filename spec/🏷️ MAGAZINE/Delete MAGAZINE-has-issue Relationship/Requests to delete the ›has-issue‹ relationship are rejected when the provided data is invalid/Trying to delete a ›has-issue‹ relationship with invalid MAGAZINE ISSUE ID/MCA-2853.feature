@REQ_MCA-2848
Feature: Delete MAGAZINE-has-issue Relationship
  As an API contributor
  I want to be able to disconnect MAGAZINE ISSUES from MAGAZINES
  So I can clean up bad data or test data

  @RULE_MCA-2851
  Rule: Requests to delete the ›has-issue‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-2853 @implemented
    Scenario: Trying to delete a ›has-issue‹ relationship with invalid MAGAZINE ISSUE ID
      Given there exists a "MAGAZINE" "Top Gear"
      And "MAGAZINE ISSUE" "AutoBild Highlights 2015" does NOT exist
      When the user deletes the "has issue" relationship between "Top Gear" and "AutoBild Highlights 2015"
      Then the request should be rejected with status code 404
