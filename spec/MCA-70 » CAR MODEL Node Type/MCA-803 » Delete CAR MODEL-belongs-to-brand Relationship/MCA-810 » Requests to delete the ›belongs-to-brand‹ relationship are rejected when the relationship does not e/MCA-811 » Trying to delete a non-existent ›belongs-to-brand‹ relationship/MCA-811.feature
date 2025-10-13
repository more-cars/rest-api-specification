@REQ_MCA-803
Feature: Delete CAR MODEL-belongs-to-brand Relationship
  As an API contributor
  I want to be able to disconnect BRANDS from CAR MODELS
  So I can clean up bad data or test data

  @RULE_MCA-810
  Rule: Requests to delete the ›belongs-to-brand‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-811 @implemented
    Scenario: Trying to delete a non-existent ›belongs-to-brand‹ relationship
      Given there exists a "CAR MODEL" "XJ220"
      And there exists a "BRAND" "Audi"
      And there exists NO "belongs to brand" relationship between "XJ220" and "Audi"
      When the user deletes the "belongs to brand" relationship between "XJ220" and "Audi"
      Then the request should be rejected with status code 404
