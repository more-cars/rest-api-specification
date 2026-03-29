@REQ_MCA-4277
Feature: Get all VIDEO-is-main-video-of-node Relationships

  @RULE_MCA-4278
  Rule: A list of all ›is-main-video-of-node‹ relationships is returned when the provided data is valid

    @TEST_MCA-4279
    Scenario: Requesting the ›is-main-video-of-node‹ relationships when at least one exists
      Given there exists a "VIDEO" "P1 vs F40"
      And there exist 3 "is main video of node" relationships for "P1 vs F40"
      When the user requests all "is main video of node" relationships for "P1 vs F40"
      Then the request should be confirmed with status code 200
      And the response should return a collection with 3 "is main video of node" relationships
