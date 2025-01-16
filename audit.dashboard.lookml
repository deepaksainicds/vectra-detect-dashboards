---
- dashboard: audit_dashboard
  title: audit_dashboard
  layout: newspaper
  description: ''
  preferred_slug: 3lMIMnP1ke7y8RoqnlGOSp
  elements:
  - title: Temp To be deleted
    name: Temp To be deleted
    model: vectra_detect_dashboards
    explore: events
    type: table
    fields: [events.metadata__description, events.metadata__event_timestamp__seconds,
      events__about__file__security_result__detection_fields.source]
    filters:
      events.metadata__description: "-NULL"
    sorts: [events.metadata__event_timestamp__seconds desc]
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
    hidden_pivots: {}
    defaults_version: 1
    listen:
      Result: events__security_result__detection_fields__result.result
      User: events.combined_name
      Timerange: events.event_time_time
    row: 12
    col: 0
    width: 24
    height: 12
  - title: Audit
    name: Audit
    model: vectra_detect_dashboards
    explore: events
    type: table
    fields: [events.metadata__description, events.metadata__event_timestamp__seconds,
      events__security_result__detection_fields.value, events.combined_name, events.combined_role,
      events__security_result__detection_fields.result]
    filters: {}
    sorts: [events.metadata__event_timestamp__seconds desc]
    limit: 500
    column_limit: 50
    show_view_names: false
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: high-contrast
    limit_displayed_rows: false
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_labels:
      events__security_result__detection_fields.value: Result
      events.metadata__description: Activity
      events.metadata__event_timestamp__seconds: Time
      events.combined_name: Name
      events.combined_role: Role
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#1A73E8",
        font_color: !!null '', color_application: {collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2,
          palette_id: 56d0c358-10a0-4fd6-aa0b-b117bef527ab}, bold: false, italic: false,
        strikethrough: false, fields: [events.metadata__event_timestamp__seconds]}]
    hidden_pivots: {}
    defaults_version: 1
    hidden_fields: [events__security_result__detection_fields.value]
    listen:
      Result: events__security_result__detection_fields__result.result
      User: events.combined_name
      Timerange: events.event_time_time
    row: 0
    col: 0
    width: 24
    height: 12
  filters:
  - name: Timerange
    title: Timerange
    type: field_filter
    default_value: 2025/01/10 15:20 to 2025/01/10 15:20
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
  - name: User
    title: User
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
    field: events.combined_name
  - name: Result
    title: Result
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: popover
    model: vectra_detect_dashboards
    explore: events
    listens_to_filters: []
    field: events__security_result__detection_fields__result.result
