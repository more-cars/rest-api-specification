@REQ_MCA-1097
Feature: Get all TRACK LAYOUT-has-image Relationships

  @RULE_MCA-1098
  Rule: A list of all ›has-image‹ relationships is returned when the provided data is valid

    @TEST_MCA-1099 @implemented
    Scenario: Requesting the ›has-image‹ relationships when at least one exists
      Given there exists a "TRACK LAYOUT" "GP Circuit"
      And there exist 3 "has-image" relationships for "GP Circuit"
      When the user requests all "has-image" relationships for "GP Circuit"
      Then the request should be confirmed with status code 200
      And the response should return a collection with 3 "has-image" relationships
