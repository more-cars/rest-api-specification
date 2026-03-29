@REQ_MCA-4239
Feature: Create VIDEO-belongs-to-node Relationship

  @RULE_MCA-4242
  Rule: Requests to create a ›belongs-to-node‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-4244
    Scenario: Trying to create a ›belongs-to-node‹ relationship with invalid NODE ID
      Given there exists a "VIDEO" "P1 vs F40"
      And "NODE" "McLaren P1" does NOT exist
      When the user creates a "belongs to node" relationship between "P1 vs F40" and "McLaren P1"
      Then the request should be rejected with status code 404
