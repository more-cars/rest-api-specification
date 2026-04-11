@REQ_MCA-234
Feature: 8-digit IDs
  As a user\
  I want the NODE IDs to be short enough \
  So I can remember them\
  But long enough \
  So they can be used as meaningful search terms

  @RULE_MCA-245
  Rule: Custom IDs are not allowed when creating a NODE

    @TEST_MCA-259 @implemented
    Scenario Outline: Trying to add a custom ID when creating a NODE
      When the user creates a "<node_type>" with the following data
        | key             | value     |
        | id              | 1234      |
        | name            | Test      |
        | driver_name     | Test      |
        | position        | 1         |
        | price           | 19999     |
        | price_year      | 1999      |
        | currency_code   | EUR       |
        | country_code    | DE        |
        | title           | Test      |
        | video_provider  | youtube   |
        | image_provider  | wikimedia |
        | external_id     | WM123456  |
        | rating_value    | 93        |
        | scale_minimum   | 0         |
        | scale_maximum   | 100       |
        | scale_direction | ASC       |
        | time            | PT2M      |
      Then the response should return with status code 201
      And the response should NOT contain the ID 1234

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
