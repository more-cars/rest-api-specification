@REQ_MCA-650
Feature: Get COMPANY-has-prime-image Relationship
  As an API consumer\
  I want to be able to request the prime image of a COMPANY\
  So I can represent the node in the best possible form in my frontend application\
  (Because I don't know which image from the node's gallery is the best one)

  @RULE_MCA-655
  Rule: Requests to fetch the ›has-prime-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-656 @implemented
    Scenario: Trying to fetch the ›has-prime-image‹ relationship with an invalid COMPANY ID
      Given "COMPANY" "Renault S.A." does NOT exist
      When the user requests the "has-prime-image" relationship for "Renault S.A."
      Then the request should be rejected with status code 404
