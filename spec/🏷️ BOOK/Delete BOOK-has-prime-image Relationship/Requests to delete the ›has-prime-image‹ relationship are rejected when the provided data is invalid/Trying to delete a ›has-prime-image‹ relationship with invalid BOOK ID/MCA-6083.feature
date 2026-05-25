@REQ_MCA-6079
Feature: Delete BOOK-has-prime-image Relationship
  As an API contributor
  I want to be able to disconnect the prime IMAGE from a BOOK
  So I can clean up bad data or test data

  @RULE_MCA-6082
  Rule: Requests to delete the ›has-prime-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-6083 @implemented
    Scenario: Trying to delete a ›has-prime-image‹ relationship with invalid BOOK ID
      Given "BOOK" "F1 in Numbers" does NOT exist
      And there exists a "IMAGE" "Detail photo"
      When the user deletes the "has-prime-image" relationship between "F1 in Numbers" and "Detail photo"
      Then the request should be rejected with status code 404
