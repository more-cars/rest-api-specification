@REQ_MCA-236
Feature: Get RELATIONSHIP by ID
  As an API consumer\
  I want to be able to fetch a specific relationship for which I only know its ID\
  So I can find out more about the relationship and its connected nodes

  @RULE_MCA-906
  Rule: The requested relationship is returned when the provided data is valid

    @TEST_MCA-908 @implemented
    Scenario: Requesting a relationship that exists
      Given there exists a "CAR MODEL" "Corolla"
      And there exists a "belongs to brand" relationship "R" for "Corolla"
      When the user requests the relationship "R"
      Then the request should be confirmed with status code 200
      And the response should return the relationship "R"
