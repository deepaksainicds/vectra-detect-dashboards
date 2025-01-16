---
- dashboard: health_dashboards
  title: Health Dashboards
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: fplVDQRWE2NgZ5ZdEfbOsi
  elements:
  - title: health_dashboards
    name: health_dashboards
    model: vectra_detect_dashboards
    explore: events
    type: table
    fields: [events.metadata__description, events.metadata__event_timestamp__seconds,
      events__security_result.action_details, events.event_time_time]
    filters:
      events.metadata__description: "-NULL"
      events__security_result.action_details: "-NULL"
    sorts: [events.event_time_time desc]
    limit: 500
    column_limit: 50
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
    series_labels:
      events.metadata__description: Activity
      events__security_result.action_details: Result
      events.event_time_time: Time
    hidden_pivots: {}
    defaults_version: 1
    hidden_fields: [events.metadata__event_timestamp__seconds]
    listen:
      Result: events__security_result__detection_fields__result.result
      Timerange: events.event_time_time
    row: 0
    col: 0
    width: 24
    height: 12
  filters:
  - name: Timerange
    title: Timerange
    type: field_filter
    default_value: 2025/01/10 15:53 to 2025/01/10 15:53
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: vectra_detect_dashboards
    explore: events
    listens_to_filters: []
    field: events.event_time_time
  - name: Result
    title: Result
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
    model: vectra_detect_dashboards
    explore: events
    listens_to_filters: []
    field: events__security_result__detection_fields__result.result
