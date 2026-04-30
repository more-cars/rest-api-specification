@REQ_MCA-3265
Feature: Create PROGRAMME Node
  As an API contributor
  I want to be able to create PROGRAMMES
  So I can fill gaps in the database

  @RULE_MCA-3276
  Rule: Read-only properties cannot be overridden by the user when creating a PROGRAMME

    @TEST_MCA-3277 @implemented
    Scenario: Expecting read-only properties to be ignored when creating a PROGRAMME
      When the user creates a "PROGRAMME" "Top Gear" with the following data
        | key          | value                |
        | name         | Lausitzring          |
        | opened       | 2000                 |
        | closed       |                      |
        | type         | permanent race track |
        | location     | Klettwitz            |
        | geo_position | 51°32'0"N 13°55'10"E |
        | country_code | DE                   |
        | id           | 1234                 |
        | created_at   | 2025-01-01           |
        | updated_at   | 2025-01-01           |
      Then the response should contain an ID
      And the response should contain the following keys
        | key        |
        | created_at |
        | updated_at |
      But the response should NOT contain the ID 1234
      And the response should NOT contain the following properties
        | key        | value      | datatype |
        | created_at | 2025-01-01 | string   |
        | updated_at | 2025-01-01 | string   |
