---
- dashboard: match_5th
  title: match_5th
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: TzXRfeSqczVWResdKC7kqf
  elements:
  - title: match_5th
    name: match_5th
    model: vectra_detect_dashboards
    explore: events
    type: table
    fields: [events__principal__ip.events__principal__ip, events__target__ip.events__target__ip,
      events__security_result.threat_name, events.event_time_time, events.last_threat_id,
      events.last_target_port, events.last_principal_port, events.last_direction]
    filters:
      events.network__application_protocol: NOT NULL
      events.network__direction: NOT NULL
      events__principal__ip.events__principal__ip: "-NULL"
      events__target__ip.events__target__ip: "-NULL"
    sorts: [events.event_time_time desc]
    limit: 100
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
    hidden_fields: []
    defaults_version: 1
    listen:
      Log Type: events.log_type
      Direction: events.direction
    row: 0
    col: 0
    width: 8
    height: 6
  filters:
  - name: Log Type
    title: Log Type
    type: field_filter
    default_value: Match
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
    model: vectra_detect_dashboards
    explore: events
    listens_to_filters: []
    field: events.log_type
  - name: Direction
    title: Direction
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
    field: events.direction
