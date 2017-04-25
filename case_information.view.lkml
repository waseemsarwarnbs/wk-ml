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
  dimension: judge_to_disposition {
    type: string
    sql: ${TABLE}.judge ;;
    drill_fields: [sum_of_dispositions]

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

  dimension: end_year_to_end_month {
    type: string
    sql: ${TABLE}.end_year ;;
    drill_fields: [end_month_to_diposition,]
  }

  dimension: end_month_to_diposition {
    type: string
    sql: ${TABLE}.end_month;;
    drill_fields: [sum_of_cases_affirmed,sum_of_cases_dismissed,sum_of_cases_remand,sum_of_cases_reversed ]
#     drill_fields: [sum_of_dispositions,count]
  }

  measure: count {
    type: count
    drill_fields: [filename]
  }

  measure: count_simple {
    type: count
  }

  measure: average_case_duration_in_months {
    type:  average
    sql:  ${TABLE}.duration_in_months;;
  }
  dimension: sum_of_dispositions {
    type:  number
    sql:sum_of_cases_affirmed,sum_of_cases_dismissed,sum_of_cases_remand,sum_of_cases_reversed ;;
#     sql: ${TABLE}.affirmed,${TABLE}.dismissed,${TABLE}.remand,${TABLE}.reversed;;

  }
  measure: sum_of_cases_affirmed {
    type:  sum
    sql:  ${TABLE}.affirmed;;
  }
  measure: sum_of_cases_dismissed {
    type:  sum
    sql:  ${TABLE}.dismissed;;
  }
  measure: sum_of_cases_remand {
    type:  sum
    sql:  ${TABLE}.remand;;
  }
  measure: sum_of_cases_reversed {
    type:  sum
    sql:  ${TABLE}.reversed;;
  }


}
