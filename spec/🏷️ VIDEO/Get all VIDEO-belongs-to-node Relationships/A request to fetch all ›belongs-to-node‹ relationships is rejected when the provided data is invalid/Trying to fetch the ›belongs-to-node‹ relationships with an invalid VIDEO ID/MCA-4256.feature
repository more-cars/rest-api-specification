@REQ_MCA-4250
Feature: Get all VIDEO-belongs-to-node Relationships

  @RULE_MCA-4255
  Rule: A request to fetch all ›belongs-to-node‹ relationships is rejected when the provided data is invalid

    @TEST_MCA-4256 @implemented
    Scenario: Trying to fetch the ›belongs-to-node‹ relationships with an invalid VIDEO ID
      Given "VIDEO" "P1 vs F40" does NOT exist
      When the user requests all "belongs to node" relationships for "P1 vs F40"
      Then the request should be rejected with status code 404
