@REQ_MCA-664
Feature: Create COMPANY-has-prime-image Relationship
  As an API contributor\
  I want to be able to select one image to be used as prime image for a COMPANY\
  So the node can be represented as good as possible in any frontend application

  @RULE_MCA-667
  Rule: Requests to create a ›has-prime-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-669 @implemented
    Scenario: Trying to create a ›has-prime-image‹ relationship with invalid IMAGE ID
      Given there exists a "COMPANY" "Bugatti"
      And "IMAGE" "logo" does NOT exist
      When the user creates a "has-prime-image" relationship between "Bugatti" and "logo"
      Then the request should be rejected with status code 404
