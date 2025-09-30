@REQ_MCA-693
Feature: Create COMPANY-has-image Relationship
  As an API contributor\
  I want to be able to attach IMAGES to COMPANIES\
  So an API consumer can illustrate COMPANY nodes in a frontend application

  @RULE_MCA-696
  Rule: Requests to create a ›has-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-697
    Scenario: Trying to create a ›has-image‹ relationship with invalid COMPANY ID
      Given "COMPANY" "Audi AG" does NOT exist
      And there exists a "IMAGE" "logo"
      When the user creates a "has-image" relationship between "Audi AG" and "logo"
      Then the request should be rejected with status code 404
