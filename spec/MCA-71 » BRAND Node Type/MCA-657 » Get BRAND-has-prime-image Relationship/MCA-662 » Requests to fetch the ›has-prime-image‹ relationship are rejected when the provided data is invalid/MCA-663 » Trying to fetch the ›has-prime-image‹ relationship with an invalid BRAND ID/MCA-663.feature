@REQ_MCA-657
Feature: Get BRAND-has-prime-image Relationship
  As an API consumer
  I want to be able to request the prime image of a BRAND
  So I can represent the node in the best possible form in my frontend application
  (Because I don't know which image from the node's gallery is the best one)

  @RULE_MCA-662
  Rule: Requests to fetch the ›has-prime-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-663
    Scenario: Trying to fetch the ›has-prime-image‹ relationship with an invalid BRAND ID
      Given "BRAND" "Bentley" does NOT exist
      When the user requests the "has-prime-image" relationship for "Bentley"
      Then the request should be rejected with status code 404
