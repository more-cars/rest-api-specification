@REQ_MCA-941
Feature: Create TRACK LAYOUT Node
  As an API contributor\
  I want to be able to add missing LAYOUTS for a RACE TRACK\
  So I can fill gaps in the database

  @RULE_MCA-944
  Rule: Requests to create a TRACK LAYOUT are rejected when the provided data is invalid

    @TEST_MCA-945 @implemented
    Scenario: Trying to create a TRACK LAYOUT with missing mandatory information
      When the user tries to create a "TRACK LAYOUT" "GP Circuit" with the following data
        | key | value | datatype |
      Then the request should be rejected with status code 400
