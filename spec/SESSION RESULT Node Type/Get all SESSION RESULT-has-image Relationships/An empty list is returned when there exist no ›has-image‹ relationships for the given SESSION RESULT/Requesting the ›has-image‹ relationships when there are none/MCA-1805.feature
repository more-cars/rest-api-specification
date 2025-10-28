@REQ_MCA-1801
Feature: Get all SESSION RESULT-has-image Relationships

  @RULE_MCA-1804
  Rule: An empty list is returned when there exist no ›has-image‹ relationships for the given SESSION RESULT

    @TEST_MCA-1805 @implemented
    Scenario: Requesting the ›has-image‹ relationships when there are none
      Given there exists a "SESSION RESULT" "1st place"
      And there exist 0 "has image" relationships for "1st place"
      When the user requests all "has image" relationships for "1st place"
      Then the request should be confirmed with status code 200
      And the response should return an empty list
