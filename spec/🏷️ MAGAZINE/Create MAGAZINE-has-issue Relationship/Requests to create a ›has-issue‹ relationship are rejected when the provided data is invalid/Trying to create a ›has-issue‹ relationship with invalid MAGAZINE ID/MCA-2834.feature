@REQ_MCA-2830
Feature: Create MAGAZINE-has-issue Relationship

  @RULE_MCA-2833
  Rule: Requests to create a ›has-issue‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-2834 @implemented
    Scenario: Trying to create a ›has-issue‹ relationship with invalid MAGAZINE ID
      Given "MAGAZINE" "Top Gear" does NOT exist
      And there exists a "MAGAZINE ISSUE" "Best Sportscars 2015"
      When the user creates a "has issue" relationship between "Top Gear" and "Best Sportscars 2015"
      Then the request should be rejected with status code 404
