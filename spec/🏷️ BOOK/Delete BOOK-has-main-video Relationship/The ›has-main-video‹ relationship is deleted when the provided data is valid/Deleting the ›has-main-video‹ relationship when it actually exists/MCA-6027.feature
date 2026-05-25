@REQ_MCA-6025
Feature: Delete BOOK-has-main-video Relationship
  As an API contributor
  I want to be able to disconnect the main VIDEO from a BOOK
  So I can clean up bad data or test data

  @RULE_MCA-6026
  Rule: The ›has-main-video‹ relationship is deleted when the provided data is valid

    @TEST_MCA-6027 @implemented
    Scenario: Deleting the ›has-main-video‹ relationship when it actually exists
      Given there exists a "BOOK" "F1 in Numbers"
      And there exists a "VIDEO" "Promo Video"
      And there exists a "has-main-video" relationship "R" between "F1 in Numbers" and "Promo Video"
      When the user deletes the "has-main-video" relationship between "F1 in Numbers" and "Promo Video"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
