@REQ_MCA-206
Feature: Create REVISION on NODE update
  As a webmaster \
  I want a copy to be created whenever a user updates a node \
  So I am able to restore data when it was accidentally removed or overwritten

  @RULE_MCA-5415
  Rule: A new revision is created when a NODE was successfully updated

    @TEST_MCA-5543 @manual_test
    Scenario: Expecting a REVISION to be created whenever a NODE has been updated
      Given there exists a "COMPANY" "BMW AG"
      When the user updates the "BMW AG" as "BMW 2 AG"
      Then there should exist a REVISION for "BMW AG"
      But there should exist no REVISION for "BMW 2 AG"
