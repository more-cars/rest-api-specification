@REQ_MCA-75
Feature: Create IMAGE Node
  As an API contributor\
  I want to be able to create IMAGE nodes\
  So I can later use them to illustrate other nodes

  @RULE_MCA-116
  Rule: Read-only properties cannot be overridden by the user when creating an IMAGE

  @TEST_MCA-140 @implemented
  Scenario: Expecting read-only properties to be ignored when creating an IMAGE
    When the user creates a "IMAGE" "Ferrari logo" with the following data
      | key                | value                |
      | image_provider     | wikimedia            |
      | external_id        | WM123456             |
      | name               | TEST                 |
      | description        | TEST                 |
      | creator            | TEST                 |
      | license            | TEST                 |
      | tags               | TEST                 |
      | source             | TEST                 |
      | image_url_original | TEST                 |
      | image_url_xxl      | TEST                 |
      | image_url_xl       | TEST                 |
      | image_url_l        | TEST                 |
      | image_url_m        | TEST                 |
      | image_url_s        | TEST                 |
      | image_url_xs       | TEST                 |
      | id                 | 1234                 |
      | created_at         | 2022-07-23T03:00:00Z |
      | updated_at         | 2022-07-23T03:00:00Z |
    Then the response should contain an ID
    And the response should contain the following keys
      | key        |
      | created_at |
      | updated_at |
    But the response should NOT contain the ID 1234
    And the response should NOT contain the following properties
      | key        | value                |
      | created_at | 2022-07-23T03:00:00Z |
      | updated_at | 2022-07-23T03:00:00Z |
