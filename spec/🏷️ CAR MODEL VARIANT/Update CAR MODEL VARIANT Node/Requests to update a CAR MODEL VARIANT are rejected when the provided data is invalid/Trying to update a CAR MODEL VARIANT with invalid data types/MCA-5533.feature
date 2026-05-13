@REQ_MCA-5525
Feature: Update CAR MODEL VARIANT Node
  As an API contributor
  I want to be able to update a CAR MODEL VARIANT
  So I can add missing information or fix incorrect data

  @RULE_MCA-5532
  Rule: Requests to update a CAR MODEL VARIANT are rejected when the provided data is invalid

    @TEST_MCA-5533 @implemented
    Scenario: Trying to update a CAR MODEL VARIANT with invalid data types
      Given there exists a "CAR MODEL VARIANT" "BMW M3 CSL"
      When the user updates the node "BMW M3 CSL" with the following data
        | key                    | value |
        | name                   | 1234  |
        | internal_code          | 1234  |
        | built_from             | TEST  |
        | built_to               | TEST  |
        | body_style             | 1234  |
        | drag_coefficient       | TEST  |
        | doors                  | TEST  |
        | weight                 | TEST  |
        | weight_unit            | 1234  |
        | max_power              | TEST  |
        | max_power_unit         | 1234  |
        | max_torque             | TEST  |
        | max_torque_unit        | 1234  |
        | cylinders              | TEST  |
        | engine_configuration   | 1234  |
        | displacement           | TEST  |
        | displacement_unit      | 1234  |
        | air_induction          | 1234  |
        | engine_type            | 1234  |
        | energy_source          | 1234  |
        | energy_source_2        | 1234  |
        | consumption            | TEST  |
        | consumption_unit       | 1234  |
        | consumption_2          | TEST  |
        | consumption_2_unit     | 1234  |
        | energy_capacity        | TEST  |
        | energy_capacity_unit   | 1234  |
        | energy_capacity_2      | TEST  |
        | energy_capacity_2_unit | 1234  |
        | transmission           | 1234  |
        | gears                  | TEST  |
        | drivetrain             | 1234  |
        | sprint_time_0_100_kmh  | TEST  |
        | top_speed              | TEST  |
        | top_speed_unit         | 1234  |
        | total_production       | TEST  |
      Then the request should be rejected with status code 400
