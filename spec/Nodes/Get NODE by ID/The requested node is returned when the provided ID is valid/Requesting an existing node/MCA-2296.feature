@REQ_MCA-238
Feature: Get NODE by ID
  As an API consumer\
  I want to be able to fetch a specific node for which I only know its ID\
  So I can find out what data is hiding behind the ID

  @RULE_MCA-2294
  Rule: The requested node is returned when the provided ID is valid

    @TEST_MCA-2296 @implemented
    Scenario: Requesting an existing node
      Given there exists a "BRAND" "Toyota"
      When the user requests the NODE "Toyota"
      Then the request should be confirmed with status code 200
      And the response should return the "BRAND" "Toyota"
