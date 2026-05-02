@REQ_MCA-206
Feature: Create REVISION on NODE update
  As a webmaster \
  I want a copy to be created whenever a user updates a node \
  So I am able to restore data when it was accidentally removed or overwritten

  @RULE_MCA-5416
  Rule: Each revision contains the necessary meta information

    @TEST_MCA-5420 @deactivated @implemented
    Scenario: Expecting a REVISION to contain the mandatory meta information
      Given there exists a "CAR MODEL" "Passat"
      When the user updates the "Passat"
      Then the request should be accepted with status code "201"
      And a revision "REV" should have been created
      And the revision "REV" should contain the node type "CAR MODEL"
      And the revision "REV" should contain the node id of "Passat"
      And the revision "REV" should contain the node created at timestamp of "Passat"
      And the revision "REV" should contain the node updated at timestamp of "Passat"
