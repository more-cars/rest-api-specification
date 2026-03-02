@REQ_MCA-2848
Feature: Delete MAGAZINE-has-issue Relationship
  As an API contributor
  I want to be able to disconnect MAGAZINE ISSUES from MAGAZINES
  So I can clean up bad data or test data

  @RULE_MCA-2849
  Rule: The ›has-issue‹ relationship is deleted when the provided data is valid

    @TEST_MCA-2850 @implemented
    Scenario: Deleting the ›has-issue‹ relationship when it actually exists
      Given there exists a "MAGAZINE" "Top Gear"
      And there exists a "MAGAZINE ISSUE" "AutoBild Highlights 2015"
      And there exists a "has issue" relationship "R" between "Top Gear" and "AutoBild Highlights 2015"
      When the user deletes the "has issue" relationship between "Top Gear" and "AutoBild Highlights 2015"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
