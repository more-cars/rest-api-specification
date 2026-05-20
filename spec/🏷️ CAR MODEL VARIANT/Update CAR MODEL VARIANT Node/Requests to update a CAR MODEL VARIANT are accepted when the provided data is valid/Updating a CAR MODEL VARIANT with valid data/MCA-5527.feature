@REQ_MCA-5525
Feature: Update CAR MODEL VARIANT Node
  As an API contributor
  I want to be able to update a CAR MODEL VARIANT
  So I can add missing information or fix incorrect data

  @RULE_MCA-5526
  Rule: Requests to update a CAR MODEL VARIANT are accepted when the provided data is valid

    @TEST_MCA-5527 @implemented
    Scenario: Updating a CAR MODEL VARIANT with valid data
      Given there exists a "CAR MODEL VARIANT" "BMW M3 CSL"
      When the user updates the node "BMW M3 CSL" with the following data
        | key                    | value       |
        | name                   | BMW M3_2    |
        | internal_code          | E46_2       |
        | built_from             | 2002        |
        | built_to               | 2008        |
        | body_style             | convertible |
        | drag_coefficient       | 2.31        |
        | doors                  | 4           |
        | weight                 | 1551        |
        | weight_unit            | kg          |
        | max_power              | 345         |
        | max_power_unit         | PS          |
        | max_torque             | 367         |
        | max_torque_unit        | Nm          |
        | cylinders              | 8           |
        | engine_configuration   | V           |
        | displacement           | 3248        |
        | displacement_unit      | ccm         |
        | air_induction          | turbo       |
        | engine_type            | otto        |
        | energy_source          | petrol      |
        | energy_source_2        |             |
        | consumption            | 13.9        |
        | consumption_unit       | l / 100 km  |
        | consumption_2          |             |
        | consumption_2_unit     |             |
        | energy_capacity        | 65          |
        | energy_capacity_unit   | l           |
        | energy_capacity_2      |             |
        | energy_capacity_2_unit |             |
        | transmission           | sequential  |
        | gears                  | 8           |
        | drivetrain             | AWD         |
        | sprint_time_0_100_kmh  | 7.2         |
        | top_speed              | 252         |
        | top_speed_unit         | km/h        |
        | total_production       | 50002       |
      Then the request should be confirmed with status code 200
