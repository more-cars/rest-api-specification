@REQ_MCA-4208
Feature: Create VIDEO Node
  As an API contributor\
  I want to be able to create VIDEO nodes\
  So I can later use them to illustrate other nodes

  @RULE_MCA-4214
  Rule: The response contains all specified properties when creating a VIDEO

    @TEST_MCA-4215 @implemented
    Scenario: Expecting all properties to be returned when creating a VIDEO
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
      Then the response should contain the following properties
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
