@REQ_MCA-2039
Feature: Create CAR MODEL VARIANT Node
  As an API contributor
  I want to be able to create CAR MODEL VARIANTS
  So I can fill gaps in the database

  @RULE_MCA-2042
  Rule: Requests to create a CAR MODEL VARIANT are rejected when the provided data is invalid

    @TEST_MCA-2044 @implemented
    Scenario: Trying to create a CAR MODEL VARIANT with invalid data types
      When the user tries to create a "CAR MODEL VARIANT" "BMW M3" with the following data
        | key                    | value               | datatype |
        | name                   | BMW M3              | boolean  |
        | internal_code          | E46                 | boolean  |
        | built_from             | 2000                | boolean  |
        | built_to               | 2006                | boolean  |
        | body_style             | coupe               | boolean  |
        | drag_coefficient       | 0.31                | boolean  |
        | doors                  | 2                   | boolean  |
        | weight                 | 1549                | boolean  |
        | weight_unit            | kg                  | boolean  |
        | max_power              | 343                 | boolean  |
        | max_power_unit         | PS                  | boolean  |
        | max_torque             | 365                 | boolean  |
        | max_torque_unit        | Nm                  | boolean  |
        | cylinders              | 6                   | boolean  |
        | engine_configuration   | inline              | boolean  |
        | displacement           | 3246                | boolean  |
        | displacement_unit      | ccm                 | boolean  |
        | air_induction          | naturally aspirated | boolean  |
        | engine_type            | otto                | boolean  |
        | energy_source          | petrol              | boolean  |
        | energy_source_2        |                     | boolean  |
        | consumption            | 11.9                | boolean  |
        | consumption_unit       | l                   | boolean  |
        | consumption_2          |                     | boolean  |
        | consumption_2_unit     |                     | boolean  |
        | energy_capacity        | 63                  | boolean  |
        | energy_capacity_unit   | l                   | boolean  |
        | energy_capacity_2      |                     | boolean  |
        | energy_capacity_2_unit |                     | boolean  |
        | transmission           | sequential          | boolean  |
        | gears                  | 6                   | boolean  |
        | drivetrain             | rwd                 | boolean  |
        | sprint_time_0_100_kmh  | 5.2                 | boolean  |
        | top_speed              | 250                 | boolean  |
        | top_speed_unit         | km/h                | boolean  |
        | total_production       | 50000               | boolean  |
      Then the request should be rejected with status code 400
