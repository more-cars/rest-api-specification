@REQ_MCA-6079
Feature: Delete BOOK-has-prime-image Relationship
  As an API contributor
  I want to be able to disconnect the prime IMAGE from a BOOK
  So I can clean up bad data or test data

  @RULE_MCA-6086
  Rule: Requests to delete the ›has-prime-image‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-6087 @implemented
    Scenario: Trying to delete a non-existent ›has-prime-image‹ relationship
      Given there exists a "BOOK" "F1 in Numbers"
      And there exists a "IMAGE" "Detail photo"
      And there exists NO "has-prime-image" relationship between "F1 in Numbers" and "Detail photo"
      When the user deletes the "has-prime-image" relationship between "F1 in Numbers" and "Detail photo"
      Then the request should be rejected with status code 404
