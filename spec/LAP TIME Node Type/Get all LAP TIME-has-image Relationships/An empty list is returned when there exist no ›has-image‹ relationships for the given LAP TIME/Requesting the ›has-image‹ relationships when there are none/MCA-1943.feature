@REQ_MCA-1939
Feature: Get all LAP TIME-has-image Relationships

  @RULE_MCA-1942
  Rule: An empty list is returned when there exist no ›has-image‹ relationships for the given LAP TIME

    @TEST_MCA-1943 @implemented
    Scenario: Requesting the ›has-image‹ relationships when there are none
      Given there exists a "LAP TIME" "fastest lap"
      And there exist 0 "has image" relationships for "fastest lap"
      When the user requests all "has image" relationships for "fastest lap"
      Then the request should be confirmed with status code 200
      And the response should return an empty list
