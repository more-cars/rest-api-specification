@REQ_MCA-3556
Feature: Get all PROGRAMME EPISODE-has-image Relationships

  @RULE_MCA-3559
  Rule: An empty list is returned when there exist no ›has-image‹ relationships for the given PROGRAMME EPISODE

    @TEST_MCA-3560
    Scenario: Requesting the ›has-image‹ relationships when there are none
      Given there exists a "PROGRAMME EPISODE" "The Holy Trinity"
      And there exist 0 "has image" relationships for "The Holy Trinity"
      When the user requests all "has image" relationships for "The Holy Trinity"
      Then the request should be confirmed with status code 200
      And the response should return an empty list
