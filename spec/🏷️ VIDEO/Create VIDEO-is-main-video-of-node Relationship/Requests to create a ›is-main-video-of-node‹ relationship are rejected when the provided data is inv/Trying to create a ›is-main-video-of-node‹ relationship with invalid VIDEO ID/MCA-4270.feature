@REQ_MCA-4266
Feature: Create VIDEO-is-main-video-of-node Relationship

  @RULE_MCA-4269
  Rule: Requests to create a ›is-main-video-of-node‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-4270 @implemented
    Scenario: Trying to create a ›is-main-video-of-node‹ relationship with invalid VIDEO ID
      Given "VIDEO" "P1 vs F40" does NOT exist
      And there exists a "NODE" "McLaren P1"
      When the user creates a "is main video of node" relationship between "P1 vs F40" and "McLaren P1"
      Then the request should be rejected with status code 404
