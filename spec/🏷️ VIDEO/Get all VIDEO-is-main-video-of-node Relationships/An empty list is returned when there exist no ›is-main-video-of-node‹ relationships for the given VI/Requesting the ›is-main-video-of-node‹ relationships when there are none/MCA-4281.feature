@REQ_MCA-4277
Feature: Get all VIDEO-is-main-video-of-node Relationships

  @RULE_MCA-4280
  Rule: An empty list is returned when there exist no ›is-main-video-of-node‹ relationships for the given VIDEO

    @TEST_MCA-4281
    Scenario: Requesting the ›is-main-video-of-node‹ relationships when there are none
      Given there exists a "VIDEO" "P1 vs F40"
      And there exist 0 "is main video of node" relationships for "P1 vs F40"
      When the user requests all "is main video of node" relationships for "P1 vs F40"
      Then the request should be confirmed with status code 200
      And the response should return an empty list
