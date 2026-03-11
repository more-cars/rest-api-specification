@REQ_MCA-3657
Feature: Get all MOTOR SHOW-has-image Relationships

  @RULE_MCA-3658
  Rule: A list of all ›has-image‹ relationships is returned when the provided data is valid

    @TEST_MCA-3659
    Scenario: Requesting the ›has-image‹ relationships when at least one exists
      Given there exists a "MOTOR SHOW" "IAA Frankfurt"
      And there exist 3 "has image" relationships for "IAA Frankfurt"
      When the user requests all "has image" relationships for "IAA Frankfurt"
      Then the request should be confirmed with status code 200
      And the response should return a collection with 3 "has image" relationships
