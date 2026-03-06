@REQ_MCA-3168
Feature: Get all RATING-has-image Relationships

  @RULE_MCA-3171
  Rule: An empty list is returned when there exist no ›has-image‹ relationships for the given RATING

    @TEST_MCA-3172 @implemented
    Scenario: Requesting the ›has-image‹ relationships when there are none
      Given there exists a "RATING" "93 Percent"
      And there exist 0 "has image" relationships for "93 Percent"
      When the user requests all "has image" relationships for "93 Percent"
      Then the request should be confirmed with status code 200
      And the response should return an empty list
