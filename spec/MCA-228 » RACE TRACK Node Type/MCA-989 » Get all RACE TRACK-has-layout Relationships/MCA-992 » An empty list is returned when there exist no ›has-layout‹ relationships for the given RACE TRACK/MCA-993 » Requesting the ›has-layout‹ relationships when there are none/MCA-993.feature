@REQ_MCA-989
Feature: Get all RACE TRACK-has-layout Relationships

  @RULE_MCA-992
  Rule: An empty list is returned when there exist no ›has-layout‹ relationships for the given RACE TRACK

    @TEST_MCA-993 @implemented
    Scenario: Requesting the ›has-layout‹ relationships when there are none
      Given there exists a "RACE TRACK" "Hockenheimring"
      And there exist 0 "has layout" relationships for "Hockenheimring"
      When the user requests all "has layout" relationships for "Hockenheimring"
      Then the request should be confirmed with status code 200
      And the response should return an empty list
