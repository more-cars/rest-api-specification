@REQ_MCA-1016
Feature: Get all RACE TRACK-has-image Relationships

  @RULE_MCA-1019
  Rule: An empty list is returned when there exist no ›has-image‹ relationships for the given RACE TRACK

    @TEST_MCA-1020 @implemented
    Scenario: Requesting the ›has-image‹ relationships when there are none
      Given there exists a "RACE TRACK" "Hockenheimring"
      And there exist 0 "has-image" relationships for "Hockenheimring"
      When the user requests all "has-image" relationships for "Hockenheimring"
      Then the request should be confirmed with status code 200
      And the response should return an empty list
