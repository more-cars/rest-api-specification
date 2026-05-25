@REQ_MCA-6052
Feature: Delete BOOK-has-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from BOOKS
  So I can clean up bad data or test data

  @RULE_MCA-6059
  Rule: Requests to delete the ›has-image‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-6060 @implemented
    Scenario: Trying to delete a non-existent ›has-image‹ relationship
      Given there exists a "BOOK" "F1 in Numbers"
      And there exists a "IMAGE" "Detail photo"
      And there exists NO "has-image" relationship between "F1 in Numbers" and "Detail photo"
      When the user deletes the "has-image" relationship between "F1 in Numbers" and "Detail photo"
      Then the request should be rejected with status code 404
