@REQ_MCA-693
Feature: Create COMPANY-has-image Relationship
  As an API contributor\
  I want to be able to attach IMAGES to COMPANIES\
  So an API consumer can illustrate COMPANY nodes in a frontend application

  @RULE_MCA-696
  Rule: Requests to create a ›has-image‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-698 @implemented
    Scenario: Trying to create a ›has-image‹ relationship with invalid IMAGE ID
      Given there exists a "COMPANY" "Audi AG"
      And "IMAGE" "logo" does NOT exist
      When the user creates a "has-image" relationship between "Audi AG" and "logo"
      Then the request should be rejected with status code 404
