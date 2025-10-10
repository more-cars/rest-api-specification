@REQ_MCA-657
Feature: Get BRAND-has-prime-image Relationship
  As an API consumer
  I want to be able to request the prime image of a BRAND
  So I can represent the node in the best possible form in my frontend application
  (Because I don't know which image from the node's gallery is the best one)

  @RULE_MCA-658
  Rule: The ›has-prime-image‹ relationship is returned when the provided data is valid

    @TEST_MCA-659
    Scenario: Requesting the ›has-prime-image‹ relationship when one exists
      Given there exists a "BRAND" "Bentley"
      And there exist a "has-prime-image" relationship "R" for "Bentley"
      When the user requests the "has-prime-image" relationship for "Bentley"
      Then the request should be confirmed with status code 200
      And the response should contain the relationship "R"
