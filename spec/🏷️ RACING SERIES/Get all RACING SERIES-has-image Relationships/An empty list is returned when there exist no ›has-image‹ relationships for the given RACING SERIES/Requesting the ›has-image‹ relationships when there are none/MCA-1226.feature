@REQ_MCA-1222
Feature: Get all RACING SERIES-has-image Relationships

  @RULE_MCA-1225
  Rule: An empty list is returned when there exist no ›has-image‹ relationships for the given RACING SERIES

    @TEST_MCA-1226 @implemented
    Scenario: Requesting the ›has-image‹ relationships when there are none
      Given there exists a "RACING SERIES" "DTM"
      And there exist 0 "has image" relationships for "DTM"
      When the user requests all "has image" relationships for "DTM"
      Then the request should be confirmed with status code 200
      And the response should return an empty list
