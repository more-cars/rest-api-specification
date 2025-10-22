@REQ_MCA-1097
Feature: Get all TRACK LAYOUT-has-image Relationships

  @RULE_MCA-1100
  Rule: An empty list is returned when there exist no ›has-image‹ relationships for the given TRACK LAYOUT

    @TEST_MCA-1101 @implemented
    Scenario: Requesting the ›has-image‹ relationships when there are none
      Given there exists a "TRACK LAYOUT" "GP Circuit"
      And there exist 0 "has image" relationships for "GP Circuit"
      When the user requests all "has image" relationships for "GP Circuit"
      Then the request should be confirmed with status code 200
      And the response should return an empty list
