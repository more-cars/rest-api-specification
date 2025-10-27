@REQ_MCA-236
Feature: Get RELATIONSHIP by ID
  As an API consumer\
  I want to be able to fetch a specific relationship for which I only know its ID\
  So I can find out more about the relationship and its connected nodes

  @RULE_MCA-907
  Rule: Requests to fetch a relationship are rejected when the provided data is invalid

    @TEST_MCA-909 @implemented
    Scenario: Requesting a non-existent relationship
      Given relationship "R" does NOT exist
      When the user requests the relationship "R"
      Then the request should be confirmed with status code 404
