---
- dashboard: large_logistics_agency__budget_planning_demo
  title: Large Logistics Agency - Budget Planning Demo
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: Axwmlhr55iqVLLrv7ZvJW2
  elements:
  - title: IBPS BOPR DEMO
    name: IBPS BOPR DEMO
    model: usps_ibps
    explore: bopr_paul
    type: table
    fields: [bopr_paul.BoprReportDescription, bopr_paul.line, bopr_paul.fiscal_year_month,
      bopr_paul.ttl, bopr_paul.description, bopr_paul.BoprReportLineNumberLabel]
    pivots: [bopr_paul.fiscal_year_month]
    filters: {}
    sorts: [bopr_paul.fiscal_year_month, bopr_paul.line, bopr_paul.description]
    limit: 500
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      expression: round(sum(pivot_row(${bopr_paul.ttl})), 0)
      label: Total Line Value
      value_format:
      value_format_name:
      _kind_hint: supermeasure
      table_calculation: total_line_value
      _type_hint: number
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_pivots: {}
    defaults_version: 1
    hidden_fields: [bopr_paul.description, bopr_paul.line]
    listen:
      BoprReportDescription: bopr_paul.BoprReportDescription
      Area Region Code: bopr_paul.area_region_code
      District Division Code: bopr_paul.district_division_code
      Pricing Group Number: bopr_paul.pricing_group_number
      Function Distribution Code: bopr_paul.function_distribution_code
      Finance Number: bopr_paul.finance_number
    row: 0
    col: 0
    width: 24
    height: 13
  filters:
  - name: Area Region Code
    title: Area Region Code
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: usps_ibps
    explore: bopr_paul
    listens_to_filters: []
    field: bopr_paul.area_region_code
  - name: District Division Code
    title: District Division Code
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: usps_ibps
    explore: bopr_paul
    listens_to_filters: []
    field: bopr_paul.district_division_code
  - name: Function Distribution Code
    title: Function Distribution Code
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: usps_ibps
    explore: bopr_paul
    listens_to_filters: []
    field: bopr_paul.function_distribution_code
  - name: Pricing Group Number
    title: Pricing Group Number
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: usps_ibps
    explore: bopr_paul
    listens_to_filters: []
    field: bopr_paul.pricing_group_number
  - name: Finance Number
    title: Finance Number
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: usps_ibps
    explore: bopr_paul
    listens_to_filters: []
    field: bopr_paul.finance_number
  - name: BoprReportDescription
    title: BoprReportDescription
    type: field_filter
    default_value: "-NULL"
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: usps_ibps
    explore: bopr_paul
    listens_to_filters: []
    field: bopr_paul.BoprReportDescription
