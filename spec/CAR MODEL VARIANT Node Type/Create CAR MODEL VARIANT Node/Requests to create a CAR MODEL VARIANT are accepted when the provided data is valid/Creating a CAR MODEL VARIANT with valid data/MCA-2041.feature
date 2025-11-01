@REQ_MCA-2039
Feature: Create CAR MODEL VARIANT Node
  As an API contributor
  I want to be able to create CAR MODEL VARIANTS
  So I can fill gaps in the database

  @RULE_MCA-2040
  Rule: Requests to create a CAR MODEL VARIANT are accepted when the provided data is valid

    @TEST_MCA-2041 @implemented
    Scenario: Creating a CAR MODEL VARIANT with valid data
      When the user creates a "CAR MODEL VARIANT" "BMW M3" with the following data
        | key                    | value               | datatype |
        | name                   | BMW M3              | string   |
        | internal_code          | E46                 | string   |
        | built_from             | 2000                | number   |
        | built_to               | 2006                | number   |
        | body_style             | coupe               | string   |
        | drag_coefficient       | 0.31                | number   |
        | doors                  | 2                   | number   |
        | weight                 | 1549                | number   |
        | weight_unit            | kg                  | string   |
        | max_power              | 343                 | number   |
        | max_power_unit         | PS                  | string   |
        | max_torque             | 365                 | number   |
        | max_torque_unit        | Nm                  | string   |
        | cylinders              | 6                   | number   |
        | engine_configuration   | inline              | string   |
        | displacement           | 3246                | number   |
        | displacement_unit      | ccm                 | string   |
        | air_induction          | naturally aspirated | string   |
        | engine_type            | otto                | string   |
        | energy_source          | petrol              | string   |
        | energy_source_2        |                     | string   |
        | consumption            | 11.9                | number   |
        | consumption_unit       | l                   | string   |
        | consumption_2          |                     | number   |
        | consumption_2_unit     |                     | string   |
        | energy_capacity        | 63                  | number   |
        | energy_capacity_unit   | l                   | string   |
        | energy_capacity_2      |                     | number   |
        | energy_capacity_2_unit |                     | string   |
        | transmission           | sequential          | string   |
        | gears                  | 6                   | number   |
        | drivetrain             | rwd                 | string   |
        | sprint_time_0_100_kmh  | 5.2                 | number   |
        | top_speed              | 250                 | number   |
        | top_speed_unit         | km/h                | string   |
        | total_production       | 50000               | number   |
      Then the request should be confirmed with status code 201
      And the response should return the "CAR MODEL VARIANT" "BMW M3"
