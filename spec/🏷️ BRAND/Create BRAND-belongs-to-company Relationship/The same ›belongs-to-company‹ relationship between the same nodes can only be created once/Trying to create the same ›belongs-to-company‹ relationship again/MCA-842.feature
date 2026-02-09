@REQ_MCA-834
Feature: Create BRAND-belongs-to-company Relationship

  @RULE_MCA-841
  Rule: The same ›belongs-to-company‹ relationship between the same nodes can only be created once

    @TEST_MCA-842 @implemented
    Scenario: Trying to create the same ›belongs-to-company‹ relationship again
      Given there exists a "BRAND" "Bentley"
      And there exists a "COMPANY" "VW AG"
      And there exists a "belongs to company" relationship between "Bentley" and "VW AG"
      When the user creates a "belongs to company" relationship between "Bentley" and "VW AG"
      Then the response should return with status code 304
