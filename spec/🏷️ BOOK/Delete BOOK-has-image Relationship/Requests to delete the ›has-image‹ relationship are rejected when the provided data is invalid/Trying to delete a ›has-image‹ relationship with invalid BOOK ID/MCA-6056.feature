@REQ_MCA-6052
Feature: Delete BOOK-has-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from BOOKS
  So I can clean up bad data or test data

  @RULE_MCA-6055
  Rule: Requests to delete the ›has-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-6056 @implemented
    Scenario: Trying to delete a ›has-image‹ relationship with invalid BOOK ID
      Given "BOOK" "F1 in Numbers" does NOT exist
      And there exists a "IMAGE" "Detail photo"
      When the user deletes the "has-image" relationship between "F1 in Numbers" and "Detail photo"
      Then the request should be rejected with status code 404
