@REQ_MCA-704
Feature: Get all COMPANY-has-image Relationships
  As an API consumer\
  I want to be fetch all IMAGES that are attached to a COMPANY\
  So I can create an image gallery for the COMPANY

  @RULE_MCA-709
  Rule: A request to fetch all ›has-image‹ relationships is rejected when the provided data is invalid

    @TEST_MCA-710 @implemented
    Scenario: Trying to fetch the ›has-image‹ relationships with an invalid COMPANY ID
      Given "COMPANY" "Audi AG" does NOT exist
      When the user requests all "has-image" relationships for "Audi AG"
      Then the request should be rejected with status code 404
