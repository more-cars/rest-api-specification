@REQ_MCA-5706
Feature: Update GAMING PLATFORM Node
  As an API contributor
  I want to be able to update a GAMING PLATFORM
  So I can add missing information or fix incorrect data

  @RULE_MCA-5711
  Rule: Updating a GAMING PLATFORM changes the updated_at timestamp

    @TEST_MCA-5712 @implemented
    Scenario: Expecting the updated_at timestamp to change when updating a GAMING PLATFORM
      Given there exists a "GAMING PLATFORM" "PlayStation 5"
      When the user updates the node "PlayStation 5"
      Then both timestamps in the response should be different
