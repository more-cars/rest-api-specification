@REQ_MCA-4208
Feature: Create VIDEO Node
  As an API contributor\
  I want to be able to create VIDEO nodes\
  So I can later use them to illustrate other nodes

  @RULE_MCA-4211
  Rule: Requests to create a VIDEO are rejected when the provided data is invalid

    @TEST_MCA-4213 @implemented
    Scenario: Trying to create a VIDEO with invalid data types
      When the user tries to create a "VIDEO" "P1 vs F40" with the following data
        | key              | value                                                | datatype |
        | video_provider   | youtube                                              | boolean  |
        | external_id      | NqsBncRslsg                                          | boolean  |
        | title            | P1 vs F40                                            | boolean  |
        | description      | Drag Race - P1 vs F40                                | boolean  |
        | creator          | Lovecars                                             | boolean  |
        | license          | youtube                                              | boolean  |
        | tags             | F40, P1                                              | boolean  |
        | source           | https://www.youtube.com/watch?v=NqsBncRslsg          | boolean  |
        | duration         | PT7M24S                                              | boolean  |
        | thumbnail_url_l  | https://i.ytimg.com/vi/NqsBncRslsg/maxresdefault.jpg | boolean  |
        | thumbnail_url_m  | https://i.ytimg.com/vi/NqsBncRslsg/sddefault.jpg     | boolean  |
        | thumbnail_url_s  | https://i.ytimg.com/vi/NqsBncRslsg/mqdefault.jpg     | boolean  |
        | thumbnail_url_xs | https://i.ytimg.com/vi/NqsBncRslsg/default.jpg       | boolean  |
      Then the request should be rejected with status code 400
