@REQ_MCA-3448
Feature: Get all PROGRAMME EPISODE-covers-car-model Relationships

  @RULE_MCA-3453
  Rule: A request to fetch all ›covers-car-model‹ relationships is rejected when the provided data is invalid

    @TEST_MCA-3454 @implemented
    Scenario: Trying to fetch the ›covers-car-model‹ relationships with an invalid PROGRAMME EPISODE ID
      Given "PROGRAMME EPISODE" "The Holy Trinity" does NOT exist
      When the user requests all "covers car model" relationships for "The Holy Trinity"
      Then the request should be rejected with status code 404
