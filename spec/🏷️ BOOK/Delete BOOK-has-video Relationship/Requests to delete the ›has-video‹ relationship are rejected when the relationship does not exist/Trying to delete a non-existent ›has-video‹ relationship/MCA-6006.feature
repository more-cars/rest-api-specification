@REQ_MCA-5998
Feature: Delete BOOK-has-video Relationship
  As an API contributor
  I want to be able to disconnect VIDEOS from BOOKS
  So I can clean up bad data or test data

  @RULE_MCA-6005
  Rule: Requests to delete the ›has-video‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-6006 @implemented
    Scenario: Trying to delete a non-existent ›has-video‹ relationship
      Given there exists a "BOOK" "F1 in Numbers"
      And there exists a "VIDEO" "Promo Video"
      And there exists NO "has-video" relationship between "F1 in Numbers" and "Promo Video"
      When the user deletes the "has-video" relationship between "F1 in Numbers" and "Promo Video"
      Then the request should be rejected with status code 404
