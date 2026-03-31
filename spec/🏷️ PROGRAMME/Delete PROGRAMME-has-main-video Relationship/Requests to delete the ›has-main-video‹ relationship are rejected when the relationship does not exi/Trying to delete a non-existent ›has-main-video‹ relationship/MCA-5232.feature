@REQ_MCA-5224
Feature: Delete PROGRAMME-has-main-video Relationship
  As an API contributor
  I want to be able to disconnect the main VIDEO from a PROGRAMME
  So I can clean up bad data or test data

  @RULE_MCA-5231
  Rule: Requests to delete the ›has-main-video‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-5232
    Scenario: Trying to delete a non-existent ›has-main-video‹ relationship
      Given there exists a "PROGRAMME" "The Grand Tour"
      And there exists a "VIDEO" "Promo Video"
      And there exists NO "has-main-video" relationship between "The Grand Tour" and "Promo Video"
      When the user deletes the "has-main-video" relationship between "The Grand Tour" and "Promo Video"
      Then the request should be rejected with status code 404
