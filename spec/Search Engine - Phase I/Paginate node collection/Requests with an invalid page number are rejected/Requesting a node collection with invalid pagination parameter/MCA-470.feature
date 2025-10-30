@REQ_MCA-369
Feature: Paginate node collection
  As an API consumer\
  When requesting a list of NODEs (e.g. Images)\
  I want to fetch them in slices (instead of the whole collection at once)\
  So I don't have to wait for and parse a giant response object

  @RULE_MCA-385
  Rule: Requests with an invalid page number are rejected

    @TEST_MCA-470 @implemented
    Scenario Outline: Requesting a node collection with invalid pagination parameter
      When the user requests page 0 of the "<node_type>" collection
      Then the response should return with status code 400
      When the user requests page -1 of the "<node_type>" collection
      Then the response should return with status code 400
      When the user requests page "three" of the "<node_type>" collection
      Then the response should return with status code 400
      When the user requests page "true" of the "<node_type>" collection
      Then the response should return with status code 400
      When the user requests page "false" of the "<node_type>" collection
      Then the response should return with status code 400

      Examples:
        | node_type     |
        | COMPANY       |
        | BRAND         |
        | CAR MODEL     |
        | RACE TRACK    |
        | TRACK LAYOUT  |
        | RACING SERIES |
        | RACING EVENT  |
        | IMAGE         |
