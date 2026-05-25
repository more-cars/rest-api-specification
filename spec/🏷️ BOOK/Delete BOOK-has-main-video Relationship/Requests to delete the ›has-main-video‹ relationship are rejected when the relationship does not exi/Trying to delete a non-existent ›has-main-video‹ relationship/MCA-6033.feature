@REQ_MCA-6025
Feature: Delete BOOK-has-main-video Relationship
  As an API contributor
  I want to be able to disconnect the main VIDEO from a BOOK
  So I can clean up bad data or test data

  @RULE_MCA-6032
  Rule: Requests to delete the ›has-main-video‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-6033 @implemented
    Scenario: Trying to delete a non-existent ›has-main-video‹ relationship
      Given there exists a "BOOK" "F1 in Numbers"
      And there exists a "VIDEO" "Promo Video"
      And there exists NO "has-main-video" relationship between "F1 in Numbers" and "Promo Video"
      When the user deletes the "has-main-video" relationship between "F1 in Numbers" and "Promo Video"
      Then the request should be rejected with status code 404
