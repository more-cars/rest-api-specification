@REQ_MCA-845
Feature: Get BRAND-belongs-to-company Relationship

  @RULE_MCA-848
  Rule: An empty response is returned when there exists no ›belongs-to-company‹ relationship for the given BRAND

    @TEST_MCA-849 @implemented
    Scenario: Requesting the ›belongs-to-company‹ relationship when there exists none
      Given there exists a "BRAND" "Audi"
      And there exists NO "belongs to company" relationship for "Audi"
      When the user requests the "belongs to company" relationship for "Audi"
      Then the request should be confirmed with status code 200
      But the response should return an empty body
