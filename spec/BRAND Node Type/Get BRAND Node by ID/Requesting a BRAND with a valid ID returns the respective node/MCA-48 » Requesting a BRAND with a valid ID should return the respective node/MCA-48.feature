@REQ_MCA-38
Feature: Get BRAND Node by ID
  As an API consumer \
  When I only have the ID of a brand\
  I want to be able to load that brand\
  So I can find out its name and other information

  @RULE_MCA-39
  Rule: Requesting a BRAND with a valid ID returns the respective node

    @TEST_MCA-48 @implemented
    Scenario: Requesting a BRAND with a valid ID should return the respective node
      Given there exists a "BRAND" "Audi"
      When the user requests the "BRAND" "Audi"
      Then the response should return with status code 200
      And the response should return the "BRAND" "Audi"
