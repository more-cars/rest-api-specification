@REQ_MCA-5125
Feature: Create MAGAZINE ISSUE-has-video Relationship
  As an API contributor
  I want to be able to attach VIDEOS to a MAGAZINE ISSUE
  So an API consumer can illustrate the MAGAZINE ISSUE node in a frontend application

  @RULE_MCA-5128
  Rule: Requests to create a ›has-video‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-5130 @implemented
    Scenario: Trying to create a ›has-video‹ relationship with invalid VIDEO ID
      Given there exists a "MAGAZINE ISSUE" "Top Gear 03_2026"
      And "VIDEO" "Promo Video" does NOT exist
      When the user creates a "has-video" relationship between "Top Gear 03_2026" and "Promo Video"
      Then the request should be rejected with status code 404
