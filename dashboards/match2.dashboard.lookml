---
- dashboard: match
  title: Vectra - Match
  layout: newspaper
  description: ''
  preferred_slug: KdahO2kLpdRB0Cjb4pG8B2
  elements:
  - title: Top signatures
    name: Top signatures
    model: vectra_detect_dashboards
    explore: events
    type: looker_grid
    fields: [events__security_result.threat_id, count_of_threat_id_2]
    filters: {}
    sorts: [events__security_result.threat_id]
    limit: 10
    column_limit: 50
    dynamic_fields:
    - _kind_hint: measure
      _type_hint: number
      based_on: events__security_result.threat_id
      expression: ''
      label: Count of Threat ID
      measure: count_of_threat_id_2
      type: count_distinct
    - category: table_calculation
      label: Percent of Signature
      value_format:
      value_format_name: percent_2
      calculation_type: percent_of_column_sum
      table_calculation: percent_of_signature
      args:
      - count_of_threat_id_2
      _kind_hint: measure
      _type_hint: number
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Source IP: events__principal__ip.events__principal__ip
      Destination IP: events__target__ip.events__target__ip
      Log Type: events.log_type
      Timerange: events.event_time_time
    row: 0
    col: 0
    width: 6
    height: 6
  - title: Top Sources
    name: Top Sources
    model: vectra_detect_dashboards
    explore: events
    type: looker_grid
    fields: [events__principal__ip.events__principal__ip, count_of_events_principal_ip]
    filters: {}
    sorts: [count_of_events_principal_ip desc]
    limit: 10
    column_limit: 50
    dynamic_fields:
    - _kind_hint: measure
      _type_hint: number
      based_on: events__principal__ip.events__principal__ip
      expression: ''
      label: Count of Events Principal IP
      measure: count_of_events_principal_ip
      type: count_distinct
    - category: table_calculation
      label: Percent of Source IP
      value_format:
      value_format_name: percent_2
      calculation_type: percent_of_column_sum
      table_calculation: percent_of_source_ip
      args:
      - count_of_events_principal_ip
      _kind_hint: measure
      _type_hint: number
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields: []
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Log Type: events.log_type
      Timerange: events.event_time_time
    row: 0
    col: 12
    width: 6
    height: 6
  - title: Top Destinations
    name: Top Destinations
    model: vectra_detect_dashboards
    explore: events
    type: looker_grid
    fields: [events__target__ip.events__target__ip, count_of_events_target_ip]
    filters: {}
    sorts: [count_of_events_target_ip desc 0]
    limit: 10
    column_limit: 50
    dynamic_fields:
    - _kind_hint: measure
      _type_hint: number
      based_on: events__target__ip.events__target__ip
      expression: ''
      label: Count of Events Target IP
      measure: count_of_events_target_ip
      type: count_distinct
    - category: table_calculation
      label: Percent of Destination
      value_format:
      value_format_name: percent_2
      calculation_type: percent_of_column_sum
      table_calculation: percent_of_destination
      args:
      - count_of_events_target_ip
      _kind_hint: measure
      _type_hint: number
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    hidden_fields: []
    defaults_version: 1
    hidden_pivots: {}
    listen:
      Log Type: events.log_type
      Timerange: events.event_time_time
    row: 0
    col: 18
    width: 6
    height: 6
  - title: Protocols
    name: Protocols
    model: vectra_detect_dashboards
    explore: events
    type: looker_grid
    fields: [events.network__application_protocol, count_of_network_application_protocol]
    filters: {}
    sorts: [count_of_network_application_protocol desc]
    limit: 10
    column_limit: 50
    dynamic_fields:
    - category: table_calculation
      label: Percent of Application Protocal
      value_format:
      value_format_name: percent_2
      calculation_type: percent_of_column_sum
      table_calculation: percent_of_application_protocal
      args:
      - count_of_network_application_protocol
      _kind_hint: measure
      _type_hint: number
    - _kind_hint: measure
      _type_hint: number
      based_on: events.network__application_protocol
      expression: ''
      label: Count of Network Application Protocol
      measure: count_of_network_application_protocol
      type: count_distinct
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    defaults_version: 1
    hidden_fields: []
    hidden_pivots: {}
    listen:
      Log Type: events.log_type
      Timerange: events.event_time_time
    row: 0
    col: 6
    width: 6
    height: 6
  filters:
  - name: Log Type
    title: Log Type
    type: field_filter
    default_value: Match
    allow_multiple_values: true
    required: true
    ui_config:
      type: dropdown_menu
      display: inline
      options:
      - Match
    model: vectra_detect_dashboards
    explore: events
    listens_to_filters: []
    field: events.log_type
  - name: Timerange
    title: Timerange
    type: field_filter
    default_value: 7 day
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
  - name: Source IP
    title: Source IP
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
    model: vectra_detect_dashboards
    explore: events
    listens_to_filters: [Log Type, Event Time Time]
    field: events__principal__ip.events__principal__ip
  - name: Destination IP
    title: Destination IP
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
    model: vectra_detect_dashboards
    explore: events
    listens_to_filters: [Log Type, Event Time Time]
    field: events__target__ip.events__target__ip
