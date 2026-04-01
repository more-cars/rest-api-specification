@REQ_MCA-5089
Feature: Delete MAGAZINE-has-video Relationship
  As an API contributor
  I want to be able to disconnect VIDEOS from MAGAZINES
  So I can clean up bad data or test data

  @RULE_MCA-5092
  Rule: Requests to delete the ›has-video‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-5094 @implemented
    Scenario: Trying to delete a ›has-video‹ relationship with invalid VIDEO ID
      Given there exists a "MAGAZINE" "Top Gear"
      And "VIDEO" "Promo Video" does NOT exist
      When the user deletes the "has-video" relationship between "Top Gear" and "Promo Video"
      Then the request should be rejected with status code 404
