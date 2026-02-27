@REQ_MCA-2659
Feature: Create MAGAZINE-has-image Relationship

  @RULE_MCA-2666
  Rule: The same ›has-image‹ relationship between the same nodes can only be created once

    @TEST_MCA-2667
    Scenario: Trying to create the same ›has-image‹ relationship again
      Given there exists a "MAGAZINE" "Top Gear"
      And there exists a "IMAGE" "cover"
      And there exists a "has image" relationship between "Top Gear" and "cover"
      When the user creates a "has image" relationship between "Top Gear" and "cover"
      Then the response should return with status code 304
