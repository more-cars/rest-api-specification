@REQ_MCA-369
Feature: Paginate node collection
  As an API consumer\
  When requesting a list of NODEs (e.g. Images)\
  I want to fetch them in slices (instead of the whole collection at once)\
  So I don't have to wait for and parse a giant response object

  @RULE_MCA-4150
  Rule: Pagination meta information is returned for each node collection request

    @TEST_MCA-4152
    Scenario: Requesting a node collection with pagination param
      When the user requests page 1 of the "BRAND" collection
      Then the reponse should contain pagination meta information
