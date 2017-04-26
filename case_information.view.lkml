view: case_information {
  sql_table_name: case_information ;;

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

  dimension: cases_per_year {
    type: string
    sql: ${TABLE}.end_year ;;
  }

  dimension: cases_per_month {
    type: string
    sql: ${TABLE}.end_month;;

  }

  measure: count_per_year {
    type: count
    drill_fields: [cases_per_month,count_per_month]
  }

  measure: count_per_month {
    type: count
    drill_fields: [sum_of_cases_affirmed,sum_of_cases_dismissed,sum_of_cases_remand,sum_of_cases_reversed]
  }

  measure: number_of_cases {
    type: count
    drill_fields: [sum_of_cases_affirmed,sum_of_cases_dismissed,sum_of_cases_remand,sum_of_cases_reversed]
  }

  measure: count {
    type: count
    drill_fields: [filename]
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
