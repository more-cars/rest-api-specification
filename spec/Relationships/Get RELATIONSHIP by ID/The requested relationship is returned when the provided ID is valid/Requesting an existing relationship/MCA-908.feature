@REQ_MCA-236
Feature: Get RELATIONSHIP by ID
  As an API consumer\
  I want to be able to fetch a specific relationship for which I only know its ID\
  So I can find out more about the relationship and its connected nodes

  @RULE_MCA-906
  Rule: The requested relationship is returned when the provided ID is valid

    @TEST_MCA-908 @deactivated @implemented
    Scenario: Requesting an existing relationship
      Given there exists a "BRAND" "Toyota"
      And there exists a "has car model" relationship "R" for "Toyota"
      When the user requests the relationship "R"
      Then the request should be confirmed with status code 200
      And the response should return the relationship "R"
