@REQ_MCA-4284
Feature: Delete VIDEO-is-main-video-of-node Relationship
  As an API contributor
  I want to be able to disconnect NODES from VIDEOS
  So I can clean up bad data or test data

  @RULE_MCA-4287
  Rule: Requests to delete the ›is-main-video-of-node‹ relationship are rejected when the provided data is invalid

    @TEST_MCA-4288
    Scenario: Trying to delete a ›is-main-video-of-node‹ relationship with invalid VIDEO ID
      Given "VIDEO" "P1 vs F40" does NOT exist
      And there exists a "NODE" "Renault Twingo"
      When the user deletes the "is main video of node" relationship between "P1 vs F40" and "Renault Twingo"
      Then the request should be rejected with status code 404
