@REQ_MCA-636
Feature: Get all COMPANY-has-brand Relationships
  As an API consumer\
  I want to be able to get a list of all connected BRANDS for a COMPANY\
  So I can find out which BRANDS are owned by which COMPANY

  @RULE_MCA-639
  Rule: An empty list is returned when there exist no ›has-brand‹ relationships for the given COMPANY

    @TEST_MCA-640
    Scenario: Requesting the ›has-brand‹ relationships when there are none
      Given there exists a "COMPANY" "Ford Motor Company"
      And there exist 0 "has-brand" relationships for "Ford Motor Company"
      When the user requests all "has-brand" relationships for "Ford Motor Company"
      Then the request should be confirmed with status code 200
      And the response should return an empty list
