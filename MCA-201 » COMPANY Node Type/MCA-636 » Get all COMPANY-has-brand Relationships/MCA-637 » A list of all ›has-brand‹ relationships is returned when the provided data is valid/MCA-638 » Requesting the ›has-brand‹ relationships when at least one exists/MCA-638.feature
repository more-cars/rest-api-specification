@REQ_MCA-636
Feature: Get all COMPANY-has-brand Relationships
  As an API consumer\
  I want to be able to get a list of all connected BRANDS for a COMPANY\
  So I can find out which BRANDS are owned by which COMPANY

  @RULE_MCA-637
  Rule: A list of all ›has-brand‹ relationships is returned when the provided data is valid

    @TEST_MCA-638 @implemented
    Scenario: Requesting the ›has-brand‹ relationships when at least one exists
      Given there exists a "COMPANY" "Ford Motor Company"
      And there exist 3 "has-brand" relationships for "Ford Motor Company"
      When the user requests all "has-brand" relationships for "Ford Motor Company"
      Then the request should be confirmed with status code 200
      And the response should return a collection with 3 "has-brand" relationships
