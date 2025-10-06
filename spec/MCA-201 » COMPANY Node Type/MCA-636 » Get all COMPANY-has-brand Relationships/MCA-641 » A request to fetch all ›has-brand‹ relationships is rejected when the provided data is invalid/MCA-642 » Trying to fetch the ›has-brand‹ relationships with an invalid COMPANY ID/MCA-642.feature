@REQ_MCA-636
Feature: Get all COMPANY-has-brand Relationships
  As an API consumer\
  I want to be able to get a list of all connected BRANDS for a COMPANY\
  So I can find out which BRANDS are owned by which COMPANY

  @RULE_MCA-641
  Rule: A request to fetch all ›has-brand‹ relationships is rejected when the provided data is invalid

    @TEST_MCA-642 @implemented
    Scenario: Trying to fetch the ›has-brand‹ relationships with an invalid COMPANY ID
      Given "COMPANY" "Ford Motor Company" does NOT exist
      When the user requests all "has-brand" relationships for "Ford Motor Company"
      Then the request should be rejected with status code 404
