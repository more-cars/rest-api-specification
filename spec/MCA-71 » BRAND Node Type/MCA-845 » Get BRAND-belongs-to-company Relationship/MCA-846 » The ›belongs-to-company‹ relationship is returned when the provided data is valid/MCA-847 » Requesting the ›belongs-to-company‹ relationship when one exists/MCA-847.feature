@REQ_MCA-845
Feature: Get BRAND-belongs-to-company Relationship

  @RULE_MCA-846
  Rule: The ›belongs-to-company‹ relationship is returned when the provided data is valid

    @TEST_MCA-847 @implemented
    Scenario: Requesting the ›belongs-to-company‹ relationship when one exists
      Given there exists a "BRAND" "Company"
      And there exists a "belongs to company" relationship "R" for "Company"
      When the user requests the "belongs to company" relationship for "Company"
      Then the request should be confirmed with status code 200
      And the response should return the relationship "R"
