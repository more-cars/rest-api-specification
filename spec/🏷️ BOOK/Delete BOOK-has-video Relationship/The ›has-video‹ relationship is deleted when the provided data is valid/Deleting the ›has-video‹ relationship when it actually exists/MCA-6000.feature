@REQ_MCA-5998
Feature: Delete BOOK-has-video Relationship
  As an API contributor
  I want to be able to disconnect VIDEOS from BOOKS
  So I can clean up bad data or test data

  @RULE_MCA-5999
  Rule: The ›has-video‹ relationship is deleted when the provided data is valid

    @TEST_MCA-6000 @implemented
    Scenario: Deleting the ›has-video‹ relationship when it actually exists
      Given there exists a "BOOK" "F1 in Numbers"
      And there exists a "VIDEO" "Promo Video"
      And there exists a "has-video" relationship "R" between "F1 in Numbers" and "Promo Video"
      When the user deletes the "has-video" relationship between "F1 in Numbers" and "Promo Video"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
