@REQ_MCA-2677
Feature: Delete MAGAZINE-has-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from MAGAZINES
  So I can clean up bad data or test data

  @RULE_MCA-2684
  Rule: Requests to delete the ›has-image‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-2685
    Scenario: Trying to delete a non-existent ›has-image‹ relationship
      Given there exists a "MAGAZINE" "Top Gear"
      And there exists a "IMAGE" "ComputerBild Cover"
      And there exists NO "has image" relationship between "Top Gear" and "ComputerBild Cover"
      When the user deletes the "has image" relationship between "Top Gear" and "ComputerBild Cover"
      Then the request should be rejected with status code 404
