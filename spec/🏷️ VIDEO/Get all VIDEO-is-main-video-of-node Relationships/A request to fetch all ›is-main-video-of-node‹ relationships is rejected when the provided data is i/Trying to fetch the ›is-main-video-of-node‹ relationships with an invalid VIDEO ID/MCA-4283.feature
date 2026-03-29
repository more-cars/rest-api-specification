@REQ_MCA-4277
Feature: Get all VIDEO-is-main-video-of-node Relationships

  @RULE_MCA-4282
  Rule: A request to fetch all ›is-main-video-of-node‹ relationships is rejected when the provided data is invalid

    @TEST_MCA-4283
    Scenario: Trying to fetch the ›is-main-video-of-node‹ relationships with an invalid VIDEO ID
      Given "VIDEO" "P1 vs F40" does NOT exist
      When the user requests all "is main video of node" relationships for "P1 vs F40"
      Then the request should be rejected with status code 404
