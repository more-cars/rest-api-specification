@REQ_MCA-2704
Feature: Delete MAGAZINE-has-prime-image Relationship
  As an API contributor
  I want to be able to disconnect IMAGES from MAGAZINES
  So I can clean up bad data or test data

  @RULE_MCA-2711
  Rule: Requests to delete the ›has-prime-image‹ relationship are rejected when the relationship does not exist

    @TEST_MCA-2712 @implemented
    Scenario: Trying to delete a non-existent ›has-prime-image‹ relationship
      Given there exists a "MAGAZINE" "Top Gear"
      And there exists a "IMAGE" "ComputerBild cover"
      And there exists NO "has prime image" relationship between "Top Gear" and "ComputerBild cover"
      When the user deletes the "has prime image" relationship between "Top Gear" and "ComputerBild cover"
      Then the request should be rejected with status code 404
