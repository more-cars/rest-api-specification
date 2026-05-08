@REQ_MCA-2039
Feature: Create CAR MODEL VARIANT Node
  As an API contributor
  I want to be able to create CAR MODEL VARIANTS
  So I can fill gaps in the database

  @RULE_MCA-2042
  Rule: Requests to create a CAR MODEL VARIANT are rejected when the provided data is invalid

    @TEST_MCA-2044 @implemented
    Scenario: Trying to create a CAR MODEL VARIANT with invalid data types
      When the user tries to create a "CAR MODEL VARIANT" with the following data
        | key                    | value |
        | name                   | true  |
        | internal_code          | true  |
        | built_from             | true  |
        | built_to               | true  |
        | body_style             | true  |
        | drag_coefficient       | true  |
        | doors                  | true  |
        | weight                 | true  |
        | weight_unit            | true  |
        | max_power              | true  |
        | max_power_unit         | true  |
        | max_torque             | true  |
        | max_torque_unit        | true  |
        | cylinders              | true  |
        | engine_configuration   | true  |
        | displacement           | true  |
        | displacement_unit      | true  |
        | air_induction          | true  |
        | engine_type            | true  |
        | energy_source          | true  |
        | energy_source_2        | true  |
        | consumption            | true  |
        | consumption_unit       | true  |
        | consumption_2          | true  |
        | consumption_2_unit     | true  |
        | energy_capacity        | true  |
        | energy_capacity_unit   | true  |
        | energy_capacity_2      | true  |
        | energy_capacity_2_unit | true  |
        | transmission           | true  |
        | gears                  | true  |
        | drivetrain             | true  |
        | sprint_time_0_100_kmh  | true  |
        | top_speed              | true  |
        | top_speed_unit         | true  |
        | total_production       | true  |
      Then the request should be rejected with status code 400
