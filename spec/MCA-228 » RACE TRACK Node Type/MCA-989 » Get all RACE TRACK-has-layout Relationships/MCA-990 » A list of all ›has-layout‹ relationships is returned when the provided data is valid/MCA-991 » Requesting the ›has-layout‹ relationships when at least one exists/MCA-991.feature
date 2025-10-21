@REQ_MCA-989
Feature: Get all RACE TRACK-has-layout Relationships

  @RULE_MCA-990
  Rule: A list of all ›has-layout‹ relationships is returned when the provided data is valid

    @TEST_MCA-991 @implemented
    Scenario: Requesting the ›has-layout‹ relationships when at least one exists
      Given there exists a "RACE TRACK" "Hockenheimring"
      And there exist 3 "has-layout" relationships for "Hockenheimring"
      When the user requests all "has-layout" relationships for "Hockenheimring"
      Then the request should be confirmed with status code 200
      And the response should contain a collection of 3 "has-layout" relationships
