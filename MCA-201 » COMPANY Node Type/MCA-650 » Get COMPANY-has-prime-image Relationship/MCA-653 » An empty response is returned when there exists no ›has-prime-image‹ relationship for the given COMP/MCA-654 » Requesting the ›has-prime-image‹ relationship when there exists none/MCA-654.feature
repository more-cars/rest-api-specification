@REQ_MCA-650
Feature: Get COMPANY-has-prime-image Relationship
  As an API consumer\
  I want to be able to request the prime image of a COMPANY\
  So I can represent the node in the best possible form in my frontend application\
  (Because I don't know which image from the node's gallery is the best one)

  @RULE_MCA-653
  Rule: An empty response is returned when there exists no ›has-prime-image‹ relationship for the given COMPANY

    @TEST_MCA-654
    Scenario: Requesting the ›has-prime-image‹ relationship when there exists none
      Given there exists a "COMPANY" "Renault S.A."
      And there exists NO "has-prime-image" relationship for "Renault S.A."
      When the user requests the "has-prime-image" relationship for "Renault S.A."
      Then the request should be confirmed with status code 200
      But the response should return an empty body
