@REQ_MCA-2559
Feature: Get all GAMING PLATFORM-has-image Relationships

  @RULE_MCA-2562
  Rule: An empty list is returned when there exist no ›has-image‹ relationships for the given GAMING PLATFORM

    @TEST_MCA-2563 @implemented
    Scenario: Requesting the ›has-image‹ relationships when there are none
      Given there exists a "GAMING PLATFORM" "PlayStation 5"
      And there exist 0 "has image" relationships for "PlayStation 5"
      When the user requests all "has image" relationships for "PlayStation 5"
      Then the request should be confirmed with status code 200
      And the response should return an empty list
