@REQ_MCA-3657
Feature: Get all MOTOR SHOW-has-image Relationships

  @RULE_MCA-3660
  Rule: An empty list is returned when there exist no ›has-image‹ relationships for the given MOTOR SHOW

    @TEST_MCA-3661
    Scenario: Requesting the ›has-image‹ relationships when there are none
      Given there exists a "MOTOR SHOW" "IAA Frankfurt"
      And there exist 0 "has image" relationships for "IAA Frankfurt"
      When the user requests all "has image" relationships for "IAA Frankfurt"
      Then the request should be confirmed with status code 200
      And the response should return an empty list
