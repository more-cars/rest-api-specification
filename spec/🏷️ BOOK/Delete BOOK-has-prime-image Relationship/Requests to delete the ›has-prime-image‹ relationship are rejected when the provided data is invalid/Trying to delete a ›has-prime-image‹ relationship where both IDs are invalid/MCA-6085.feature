@REQ_MCA-6079
Feature: Delete BOOK-has-prime-image Relationship
  As an API contributor
  I want to be able to disconnect the prime IMAGE from a BOOK
  So I can clean up bad data or test data

  @RULE_MCA-6082
  Rule: Requests to delete the ›has-prime-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-6085 @implemented
    Scenario: Trying to delete a ›has-prime-image‹ relationship where both IDs are invalid
      Given "BOOK" "F1 in Numbers" does NOT exist
      And "IMAGE" "Detail photo" does NOT exist
      When the user deletes the "has-prime-image" relationship between "F1 in Numbers" and "Detail photo"
      Then the request should be rejected with status code 404
