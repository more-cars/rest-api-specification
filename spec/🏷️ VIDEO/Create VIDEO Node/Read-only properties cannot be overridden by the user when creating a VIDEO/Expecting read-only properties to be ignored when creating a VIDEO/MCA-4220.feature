@REQ_MCA-4208
Feature: Create VIDEO Node
  As an API contributor\
  I want to be able to create VIDEO nodes\
  So I can later use them to illustrate other nodes

  @RULE_MCA-4219
  Rule: Read-only properties cannot be overridden by the user when creating a VIDEO

    @TEST_MCA-4220 @implemented
    Scenario: Expecting read-only properties to be ignored when creating a VIDEO
      When the user creates a "VIDEO" "P1 vs F40" with the following data
        | key              | value                                                | datatype |
        | video_provider   | youtube                                              | string   |
        | external_id      | NqsBncRslsg                                          | string   |
        | title            | P1 vs F40                                            | string   |
        | description      | Drag Race - P1 vs F40                                | string   |
        | creator          | Lovecars                                             | string   |
        | license          | youtube                                              | string   |
        | tags             | F40, P1                                              | string   |
        | source           | https://www.youtube.com/watch?v=NqsBncRslsg          | string   |
        | duration         | PT7M24S                                              | string   |
        | thumbnail_url_l  | https://i.ytimg.com/vi/NqsBncRslsg/maxresdefault.jpg | string   |
        | thumbnail_url_m  | https://i.ytimg.com/vi/NqsBncRslsg/sddefault.jpg     | string   |
        | thumbnail_url_s  | https://i.ytimg.com/vi/NqsBncRslsg/mqdefault.jpg     | string   |
        | thumbnail_url_xs | https://i.ytimg.com/vi/NqsBncRslsg/default.jpg       | string   |
        | id               | 1234                                                 | number   |
        | created_at       | 2025-01-01                                           | string   |
        | updated_at       | 2025-01-01                                           | string   |
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
