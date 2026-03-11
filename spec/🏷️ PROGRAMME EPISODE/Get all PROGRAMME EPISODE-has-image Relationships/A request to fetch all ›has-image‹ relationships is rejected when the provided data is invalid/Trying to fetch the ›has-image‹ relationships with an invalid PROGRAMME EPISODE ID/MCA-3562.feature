@REQ_MCA-3556
Feature: Get all PROGRAMME EPISODE-has-image Relationships

  @RULE_MCA-3561
  Rule: A request to fetch all ›has-image‹ relationships is rejected when the provided data is invalid

    @TEST_MCA-3562
    Scenario: Trying to fetch the ›has-image‹ relationships with an invalid PROGRAMME EPISODE ID
      Given "PROGRAMME EPISODE" "The Holy Trinity" does NOT exist
      When the user requests all "has image" relationships for "The Holy Trinity"
      Then the request should be rejected with status code 404
