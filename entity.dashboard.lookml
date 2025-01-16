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
    type: looker_grid
    fields: [events.data_source, events.severity, events.principal__hostname, events.source_entity,
      events__security_result.risk_score, events__security_result.confidence_score,
      events__security_result.url_back_to_product, events.event_time_time]
    filters:
      events__security_result.confidence_score: ">0"
      events__security_result.risk_score: ">0"
    sorts: [events.event_time_time desc]
    limit: 500
    column_limit: 50
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
    interpolation: linear
    defaults_version: 1
    listen: {}
    row: 12
    col: 0
    width: 24
    height: 12
  - title: 'Graph '
    name: 'Graph '
    model: vectra_detect_dashboards
    explore: events
    type: looker_column
    fields: [events__security_result.risk_score, events__security_result.confidence_score,
      events.severity]
    filters:
      events__security_result.risk_score: ">0"
      events__security_result.confidence_score: ">0"
    sorts: [events.severity]
    limit: 500
    column_limit: 50
    x_axis_gridlines: false
    y_axis_gridlines: true
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
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: ordinal
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: Threat, orientation: left, series: [{axisId: events__security_result.risk_score,
            id: events__security_result.risk_score, name: Risk Score}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_label: Severity
    x_axis_zoom: true
    y_axis_zoom: true
    defaults_version: 1
    listen: {}
    row: 0
    col: 0
    width: 24
    height: 12
