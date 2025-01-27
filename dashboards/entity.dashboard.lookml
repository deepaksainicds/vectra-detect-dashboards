---
- dashboard: entity_dashboard
  title: Entity Dashboard
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  preferred_slug: K3qmAs1hGqyGecu9yJdlZQ
  elements:
  - title: Data
    name: Data
    model: vectra_detect_dashboards
    explore: events
    type: table
    fields: [events.source_entity, events.values_severity, events.values_data_source,
      events.values_events_principal_ip, events.values_metadata__url_back_to_product,
      events.values_event_time_time, events.values_assigned_to, events.values_principal__hostname,
      events.values_url_back_to_product]
    filters:
      events__security_result.confidence_score: ">0"
      events__security_result.risk_score: ">0"
      events.values_assigned_to: "-N/A"
    sorts: [events.source_entity desc]
    limit: 100
    column_limit: 50
    dynamic_fields:
    - category: dimension
      expression: coalesce(${entity_dashboard_1.user_assigned},${entity_dashboard_2.user_assigned},
        "N/A")
      label: Combined User Assigned
      value_format:
      value_format_name:
      dimension: combined_user_assigned
      _kind_hint: dimension
      _type_hint: string
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
    defaults_version: 1
    hidden_fields: []
    hidden_pivots: {}
    listen:
      Timerange: events.event_time_time
      Severity: events.severity
      Source: events.data_source
      Entity type: events.type
      Log Type: events.log_type
    row: 12
    col: 0
    width: 24
    height: 12
  - title: 'Graph '
    name: 'Graph '
    model: vectra_detect_dashboards
    explore: events
    type: looker_scatter
    fields: [events__security_result.risk_score, events__security_result.confidence_score,
      events.severity, events.source_entity, events.principal__hostname, events__principal__user__email_addresses.events__principal__user__email_addresses,
      events.last_source_entity]
    filters:
      events__security_result.risk_score: ">0"
      events__security_result.confidence_score: ">0"
    sorts: [events.source_entity desc]
    limit: 100
    column_limit: 50
    x_axis_gridlines: true
    y_axis_gridlines: false
    show_view_names: false
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
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    y_axes: [{label: '', orientation: bottom, series: [{axisId: events__security_result.confidence_score,
            id: events__security_result.confidence_score, name: Certainty}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, type: linear}]
    x_axis_label: Certainty
    x_axis_zoom: true
    y_axis_zoom: true
    series_colors:
      events__security_result.confidence_score: "#FF8168"
    series_labels:
      events__security_result.confidence_score: Certainty
      events__security_result.risk_score: Threat
    series_point_styles:
      events.severity: square
      events__security_result.confidence_score: square
      events__security_result.risk_score: square
    swap_axes: false
    cluster_points: false
    quadrants_enabled: false
    quadrant_properties:
      '0':
        color: ''
        label: Quadrant 1
      '1':
        color: ''
        label: Quadrant 2
      '2':
        color: ''
        label: Quadrant 3
      '3':
        color: ''
        label: Quadrant 4
    custom_quadrant_point_x: 5
    custom_quadrant_point_y: 5
    custom_x_column: ''
    custom_y_column: ''
    custom_value_label_column: ''
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", events__security_result.risk_score, events__security_result.confidence_score]
    show_totals: true
    show_row_totals: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    truncate_header: false
    size_to_fit: true
    minimum_column_width: 75
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    hide_totals: false
    hide_row_totals: false
    hidden_fields: [events__principal__user__email_addresses.events__principal__user__email_addresses,
      events.principal__hostname, events.source_entity, events.last_source_entity]
    listen:
      Timerange: events.event_time_time
      Severity: events.severity
      Source: events.data_source
      Entity type: events.type
      Log Type: events.log_type
    row: 0
    col: 0
    width: 24
    height: 12
  filters:
  - name: Log Type
    title: Log Type
    type: field_filter
    default_value: Scoring
    allow_multiple_values: true
    required: true
    ui_config:
      type: dropdown_menu
      display: inline
      options:
      - Scoring
    model: vectra_detect_dashboards
    explore: events
    listens_to_filters: []
    field: events.log_type
  - name: Timerange
    title: Timerange
    type: field_filter
    default_value: 7 day
    allow_multiple_values: true
    required: true
    ui_config:
      type: advanced
      display: popover
      options: []
    model: vectra_detect_dashboards
    explore: events
    listens_to_filters: []
    field: events.event_time_time
  - name: Severity
    title: Severity
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
    model: vectra_detect_dashboards
    explore: events
    listens_to_filters: [Log Type, Timerange]
    field: events.severity
  - name: Source
    title: Source
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
    model: vectra_detect_dashboards
    explore: events
    listens_to_filters: [Log Type, Timerange]
    field: events.data_source
  - name: Entity type
    title: Entity type
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
    model: vectra_detect_dashboards
    explore: events
    listens_to_filters: [Log Type, Timerange]
    field: events.type
