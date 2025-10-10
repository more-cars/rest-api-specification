@REQ_MCA-657
Feature: Get BRAND-has-prime-image Relationship
  As an API consumer
  I want to be able to request the prime image of a BRAND
  So I can represent the node in the best possible form in my frontend application
  (Because I don't know which image from the node's gallery is the best one)

  @RULE_MCA-660
  Rule: An empty response is returned when there exists no ›has-prime-image‹ relationship for the given BRAND

    @TEST_MCA-661
    Scenario: Requesting the ›has-prime-image‹ relationship when there exists none
      Given there exists a "BRAND" "Bentley"
      And there exists NO "has-prime-image" relationship for "Bentley"
      When the user requests the "has-prime-image" relationship for "Bentley"
      Then the request should be confirmed with status code 200
      But the response should return an empty body
