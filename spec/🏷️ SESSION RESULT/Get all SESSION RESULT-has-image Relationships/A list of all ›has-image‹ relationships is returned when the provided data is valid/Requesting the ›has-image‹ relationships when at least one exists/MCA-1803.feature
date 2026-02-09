@REQ_MCA-1801
Feature: Get all SESSION RESULT-has-image Relationships

  @RULE_MCA-1802
  Rule: A list of all ›has-image‹ relationships is returned when the provided data is valid

    @TEST_MCA-1803 @implemented
    Scenario: Requesting the ›has-image‹ relationships when at least one exists
      Given there exists a "SESSION RESULT" "1st place"
      And there exist 3 "has image" relationships for "1st place"
      When the user requests all "has image" relationships for "1st place"
      Then the request should be confirmed with status code 200
      And the response should return a collection with 3 "has image" relationships
