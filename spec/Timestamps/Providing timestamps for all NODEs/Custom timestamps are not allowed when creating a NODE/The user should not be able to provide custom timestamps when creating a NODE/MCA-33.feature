@REQ_MCA-17
Feature: Providing timestamps for all NODEs
  As an API consumer\
  I want all nodes to have timestamps\
  So I can assess how up-to-date the provided information is

  @RULE_MCA-23
  Rule: Custom timestamps are not allowed when creating a NODE

    @TEST_MCA-33 @implemented
    Scenario Outline: The user should not be able to provide custom timestamps when creating a NODE
      When the user creates a "<node_type>" with the following data
        | key             | value                |
        | name            | Test                 |
        | driver_name     | Test                 |
        | position        | 1                    |
        | price           | 19999                |
        | price_year      | 1999                 |
        | currency_code   | EUR                  |
        | country_code    | DE                   |
        | title           | Test                 |
        | video_provider  | youtube              |
        | image_provider  | wikimedia            |
        | external_id     | WM123456             |
        | rating_value    | 93                   |
        | scale_minimum   | 0                    |
        | scale_maximum   | 100                  |
        | scale_direction | up                   |
        | time            | PT2M                 |
        | created_at      | 2022-07-23T03:00:00Z |
        | updated_at      | 2022-07-23T03:00:00Z |
      Then the response should return with status code 201
      And the response should NOT contain the following properties
        | key        | value                |
        | updated_at | 2022-07-23T03:00:00Z |
        | created_at | 2022-07-23T03:00:00Z |

      Examples:
        | node_type         |
        | COMPANY           |
        | BRAND             |
        | CAR MODEL         |
        | CAR MODEL VARIANT |
        | PRICE             |
        | RACE TRACK        |
        | TRACK LAYOUT      |
        | RACING SERIES     |
        | RACING EVENT      |
        | RACING SESSION    |
        | SESSION RESULT    |
        | LAP TIME          |
        | RACING GAME       |
        | GAMING PLATFORM   |
        | MODEL CAR         |
        | MODEL CAR BRAND   |
        | MAGAZINE          |
        | MAGAZINE ISSUE    |
        | RATING            |
        | PROGRAMME         |
        | PROGRAMME EPISODE |
        | MOTOR SHOW        |
        | IMAGE             |
        | VIDEO             |
