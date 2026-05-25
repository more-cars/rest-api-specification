@REQ_MCA-6052
Feature: Delete BOOK-has-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from BOOKS
  So I can clean up bad data or test data

  @RULE_MCA-6053
  Rule: The ›has-image‹ relationship is deleted when the provided data is valid

    @TEST_MCA-6054 @implemented
    Scenario: Deleting the ›has-image‹ relationship when it actually exists
      Given there exists a "BOOK" "F1 in Numbers"
      And there exists a "IMAGE" "Detail photo"
      And there exists a "has-image" relationship "R" between "F1 in Numbers" and "Detail photo"
      When the user deletes the "has-image" relationship between "F1 in Numbers" and "Detail photo"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
