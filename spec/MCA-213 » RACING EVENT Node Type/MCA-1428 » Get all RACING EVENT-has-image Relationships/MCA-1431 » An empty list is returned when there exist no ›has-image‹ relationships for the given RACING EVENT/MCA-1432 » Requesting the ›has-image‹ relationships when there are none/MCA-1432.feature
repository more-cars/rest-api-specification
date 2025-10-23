@REQ_MCA-1428
Feature: Get all RACING EVENT-has-image Relationships

  @RULE_MCA-1431
  Rule: An empty list is returned when there exist no ›has-image‹ relationships for the given RACING EVENT

    @TEST_MCA-1432 @implemented
    Scenario: Requesting the ›has-image‹ relationships when there are none
      Given there exists a "RACING EVENT" "GP Silverstone"
      And there exist 0 "has image" relationships for "GP Silverstone"
      When the user requests all "has image" relationships for "GP Silverstone"
      Then the request should be confirmed with status code 200
      And the response should return an empty list
