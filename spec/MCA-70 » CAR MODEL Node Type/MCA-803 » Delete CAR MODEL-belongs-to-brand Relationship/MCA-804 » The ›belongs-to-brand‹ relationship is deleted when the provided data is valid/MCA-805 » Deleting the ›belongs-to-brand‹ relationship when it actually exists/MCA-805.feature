@REQ_MCA-803
Feature: Delete CAR MODEL-belongs-to-brand Relationship
  As an API contributor
  I want to be able to disconnect BRANDS from CAR MODELS
  So I can clean up bad data or test data

  @RULE_MCA-804
  Rule: The ›belongs-to-brand‹ relationship is deleted when the provided data is valid

    @TEST_MCA-805 @implemented
    Scenario: Deleting the ›belongs-to-brand‹ relationship when it actually exists
      Given there exists a "CAR MODEL" "XJ220"
      And there exists a "BRAND" "Audi"
      And there exists a "belongs to brand" relationship "R" between "XJ220" and "Audi"
      When the user deletes the "belongs to brand" relationship between "XJ220" and "Audi"
      Then the request should be confirmed with status code 204
      And the relationship "R" should not exist anymore
