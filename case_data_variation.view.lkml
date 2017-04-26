view: case_data_variation {
  sql_table_name: aws_wk_ml_db.case_data_variation ;;

  dimension: document_type {
    type: string
    sql: ${TABLE}.document_type ;;
  }

  dimension: percentage {
    type: string
    sql: ${TABLE}.percentage ;;
  }

  measure: no_of_files {
    type: number
    sql: ${TABLE}.no_of_files ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
