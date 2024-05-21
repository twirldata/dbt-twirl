# dbt-twirl

## Installation

1. Add dbt-twirl to your dbt project, adding the following to `packages.yml` in your dbt project root folder (create it if it does not exist already):

    ```
    packages:
    - package: twirldata/dbt_twirl
    - version: v0.0.2
    ```

2. Install it by running `dbt deps`.
3. If you want your dbt deployment to use the same naming convention for dev tables as that Twirl uses (e.g. all dev tables in one dev schema/dataset, named like `dev_username.schema_name__table_name` / `dev_username.dataset_name__table_name`), you can add the following macro named `twirl_names.yml` to you project:
```yaml title="macros/twirl_names.yml"
{% macro generate_alias_name(custom_alias_name=none, node=none) -%}
{{ dbt_twirl.twirl_alias_name(custom_alias_name, node) }}
{%- endmacro %}

{% macro generate_schema_name(custom_schema_name, node) -%}
{{ dbt_twirl.twirl_schema_name(custom_schema_name, node) }}
{%- endmacro %}
```
