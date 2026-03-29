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
        | key                | value                | datatype |
        | image_provider     | flickr               | string   |
        | external_id        | A12345               | string   |
        | name               | TEST                 | string   |
        | description        | TEST                 | string   |
        | creator            | TEST                 | string   |
        | license            | TEST                 | string   |
        | tags               | TEST                 | string   |
        | source             | TEST                 | string   |
        | image_url_original | TEST                 | string   |
        | image_url_xxl      | TEST                 | string   |
        | image_url_xl       | TEST                 | string   |
        | image_url_l        | TEST                 | string   |
        | image_url_m        | TEST                 | string   |
        | image_url_s        | TEST                 | string   |
        | image_url_xs       | TEST                 | string   |
        | id                 | 1234                 | number   |
        | created_at         | 2022-07-23T03:00:00Z | string   |
        | updated_at         | 2022-07-23T03:00:00Z | string   |
      Then the response should contain an ID
      And the response should contain the following keys
        | key        |
        | created_at |
        | updated_at |
      But the response should NOT contain the ID 1234
      And the response should NOT contain the following properties
        | key        | value                | datatype |
        | created_at | 2022-07-23T03:00:00Z | string   |
        | updated_at | 2022-07-23T03:00:00Z | string   |
