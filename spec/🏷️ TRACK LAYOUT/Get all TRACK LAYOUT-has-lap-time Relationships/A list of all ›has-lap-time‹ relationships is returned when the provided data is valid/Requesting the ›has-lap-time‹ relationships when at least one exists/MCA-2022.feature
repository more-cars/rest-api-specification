@REQ_MCA-2020
Feature: Get all TRACK LAYOUT-has-lap-time Relationships

  @RULE_MCA-2021
  Rule: A list of all ›has-lap-time‹ relationships is returned when the provided data is valid

    @TEST_MCA-2022 @implemented
    Scenario: Requesting the ›has-lap-time‹ relationships when at least one exists
      Given there exists a "TRACK LAYOUT" "Club Circuit"
      And there exist 3 "has lap time" relationships for "Club Circuit"
      When the user requests all "has lap time" relationships for "Club Circuit"
      Then the request should be confirmed with status code 200
      And the response should return a collection with 3 "has lap time" relationships
