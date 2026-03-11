@REQ_MCA-3556
Feature: Get all PROGRAMME EPISODE-has-image Relationships

  @RULE_MCA-3557
  Rule: A list of all ›has-image‹ relationships is returned when the provided data is valid

    @TEST_MCA-3558
    Scenario: Requesting the ›has-image‹ relationships when at least one exists
      Given there exists a "PROGRAMME EPISODE" "The Holy Trinity"
      And there exist 3 "has image" relationships for "The Holy Trinity"
      When the user requests all "has image" relationships for "The Holy Trinity"
      Then the request should be confirmed with status code 200
      And the response should return a collection with 3 "has image" relationships
