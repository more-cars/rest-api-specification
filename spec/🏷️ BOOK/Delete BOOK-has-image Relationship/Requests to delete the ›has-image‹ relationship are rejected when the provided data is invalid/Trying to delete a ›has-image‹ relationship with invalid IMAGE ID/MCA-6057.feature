@REQ_MCA-6052
Feature: Delete BOOK-has-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from BOOKS
  So I can clean up bad data or test data

  @RULE_MCA-6055
  Rule: Requests to delete the ›has-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-6057 @implemented
    Scenario: Trying to delete a ›has-image‹ relationship with invalid IMAGE ID
      Given there exists a "BOOK" "F1 in Numbers"
      And "IMAGE" "Detail photo" does NOT exist
      When the user deletes the "has-image" relationship between "F1 in Numbers" and "Detail photo"
      Then the request should be rejected with status code 404
