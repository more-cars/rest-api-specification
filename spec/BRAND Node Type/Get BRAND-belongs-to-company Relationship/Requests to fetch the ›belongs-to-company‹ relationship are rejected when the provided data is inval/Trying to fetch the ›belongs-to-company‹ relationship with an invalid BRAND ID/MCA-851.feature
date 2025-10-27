@REQ_MCA-845
Feature: Get BRAND-belongs-to-company Relationship

  @RULE_MCA-850
  Rule: Requests to fetch the ›belongs-to-company‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-851 @implemented
    Scenario: Trying to fetch the ›belongs-to-company‹ relationship with an invalid BRAND ID
      Given "BRAND" "Audi" does NOT exist
      When the user requests the "belongs to company" relationship for "Audi"
      Then the request should be rejected with status code 404
