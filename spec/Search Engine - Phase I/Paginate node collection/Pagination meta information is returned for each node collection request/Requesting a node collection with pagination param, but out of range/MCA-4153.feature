@REQ_MCA-369
Feature: Paginate node collection
  As an API consumer\
  When requesting a list of NODEs (e.g. Images)\
  I want to fetch them in slices (instead of the whole collection at once)\
  So I don't have to wait for and parse a giant response object

  @RULE_MCA-4150
  Rule: Pagination meta information is returned for each node collection request

    @TEST_MCA-4153 @implemented
    Scenario: Requesting a node collection with pagination param, but out of range
      Given there exist 3 "BRAND"s
      When the user requests page 999 of the "BRAND" collection
      Then the response should contain pagination meta information
