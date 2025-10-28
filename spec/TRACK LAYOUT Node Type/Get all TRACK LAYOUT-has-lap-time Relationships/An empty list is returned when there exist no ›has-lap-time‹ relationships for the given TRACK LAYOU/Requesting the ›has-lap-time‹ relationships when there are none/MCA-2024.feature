@REQ_MCA-2020
Feature: Get all TRACK LAYOUT-has-lap-time Relationships

  @RULE_MCA-2023
  Rule: An empty list is returned when there exist no ›has-lap-time‹ relationships for the given TRACK LAYOUT

    @TEST_MCA-2024 @implemented
    Scenario: Requesting the ›has-lap-time‹ relationships when there are none
      Given there exists a "TRACK LAYOUT" "Club Circuit"
      And there exist 0 "has lap time" relationships for "Club Circuit"
      When the user requests all "has lap time" relationships for "Club Circuit"
      Then the request should be confirmed with status code 200
      And the response should return an empty list
