# dbt-twirl

## Installation

1. Add dbt-twirl to your dbt project, adding the following to `packages.yml` in your dbt project root folder (create it if it does not exist already):

    ```
    packages:
    - package: twirldata/dbt_twirl
    - version: 0.0.1
    ```

2. Install it by running `dbt deps`.
3. Add the following to your `dbt_project.yml`, to allow dbt_twirl to override some builtin dbt macros:
    ```
    dispatch:
    - macro_namespace: dbt
        search_order: ['your_dbt_project_name', 'dbt_twirl', 'dbt']
    ```
    where `your_dbt_project_name` must be the same as you put after `name:` in your `dbt_project.yml` file.
