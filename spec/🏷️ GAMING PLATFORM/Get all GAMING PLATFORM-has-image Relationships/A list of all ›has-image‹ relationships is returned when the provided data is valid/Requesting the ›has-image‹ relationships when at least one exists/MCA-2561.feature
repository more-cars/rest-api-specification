@REQ_MCA-2559
Feature: Get all GAMING PLATFORM-has-image Relationships

  @RULE_MCA-2560
  Rule: A list of all ›has-image‹ relationships is returned when the provided data is valid

    @TEST_MCA-2561 @implemented
    Scenario: Requesting the ›has-image‹ relationships when at least one exists
      Given there exists a "GAMING PLATFORM" "PlayStation 5"
      And there exist 3 "has image" relationships for "PlayStation 5"
      When the user requests all "has image" relationships for "PlayStation 5"
      Then the request should be confirmed with status code 200
      And the response should return a collection with 3 "has image" relationships
