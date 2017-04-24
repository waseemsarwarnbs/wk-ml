view: case_information {
  sql_table_name: wkml.case_information ;;

  dimension: affirmed {
    type: number
    sql: ${TABLE}.affirmed ;;
  }

  dimension: case_type {
    type: string
    sql: ${TABLE}.case_type ;;
  }

  dimension: conclusion {
    type: string
    sql: ${TABLE}.conclusion ;;
  }

  dimension: dismissed {
    type: number
    sql: ${TABLE}.dismissed ;;
  }

  dimension: duration_in_months {
    type: number
    sql: ${TABLE}.duration_in_months ;;
  }

  dimension: end_date {
    type: string
    sql: ${TABLE}.end_date ;;
  }

  dimension: end_month {
    type: string
    sql: ${TABLE}.end_month ;;
  }

  dimension: end_year {
    type: number
    sql: ${TABLE}.end_year ;;
  }

  dimension: filename {
    type: string
    sql: ${TABLE}.filename ;;
  }

  dimension: judge {
    type: string
    sql: ${TABLE}.judge ;;
  }

  dimension: judge_type {
    type: string
    sql: ${TABLE}.judge_type ;;
  }

  dimension: panel {
    type: string
    sql: ${TABLE}.panel ;;
  }

  dimension: parties {
    type: string
    sql: ${TABLE}.parties ;;
  }

  dimension: remand {
    type: number
    sql: ${TABLE}.remand ;;
  }

  dimension: reversed {
    type: number
    sql: ${TABLE}.reversed ;;
  }

  dimension: sentence_no {
    type: number
    sql: ${TABLE}.sentence_no ;;
  }

  dimension: start_date {
    type: string
    sql: ${TABLE}.start_date ;;
  }

  dimension: start_month {
    type: string
    sql: ${TABLE}.start_month ;;
  }

  dimension: start_year {
    type: number
    sql: ${TABLE}.start_year ;;
  }

  dimension: total_occurance {
    type: number
    sql: ${TABLE}.total_occurance ;;
  }

  measure: count {
    type: count
    drill_fields: [filename]
  }

  measure: average_case_duration_in_months {
    type:  average
    sql:  ${TABLE}.duration_in_months;;
  }
}
