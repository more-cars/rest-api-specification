@REQ_MCA-910
Feature: Create RACE TRACK Node
  As an API contributor
  I want to be able to create RACE TRACK nodes
  So I can fill gaps in the database

  @RULE_MCA-922
  Rule: Read-only properties cannot be overridden by the user when creating a RACE TRACK

    @TEST_MCA-923 @implemented
    Scenario: Expecting read-only properties to be ignored when creating a RACE TRACK
      | key          | value                | datatype |
      | name         | Lausitzring          | string   |
      | opened       | 2000                 | number   |
      | closed       |                      | number   |
      | type         | permanent race track | string   |
      | location     | Klettwitz            | string   |
      | geo_position | 51°32'0"N 13°55'10"E | string   |
      | id           | 1234                 | number   |
      | created_at   | 2025-01-01           | string   |
      | updated_at   | 2025-01-01           | string   |

      Then the response should contain the following keys
        | key        |
        | id         |
        | created_at |
        | updated_at |
      But the response should NOT contain the following properties
        | key        | value      | datatype |
        | id         | 1234       | number   |
        | created_at | 2025-01-01 | string   |
        | updated_at | 2025-01-01 | string   |
