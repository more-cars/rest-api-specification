@REQ_MCA-4107
Feature: Get all PRICE-has-image Relationships

  @RULE_MCA-4110
  Rule: An empty list is returned when there exist no ›has-image‹ relationships for the given PRICE

    @TEST_MCA-4111 @implemented
    Scenario: Requesting the ›has-image‹ relationships when there are none
      Given there exists a "PRICE" "Brand New"
      And there exist 0 "has image" relationships for "Brand New"
      When the user requests all "has image" relationships for "Brand New"
      Then the request should be confirmed with status code 200
      And the response should return an empty list
