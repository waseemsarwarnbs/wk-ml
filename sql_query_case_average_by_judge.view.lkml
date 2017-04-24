view: sql_query_case_average_by_judge {
  derived_table: {
    sql: SELECT
        case_information.judge  AS `case_information.judge`,
        avg(case_information.duration_in_months)  AS `case_information.duration_in_months`
      FROM case_information

      GROUP BY case_information.duration_in_months
      ORDER BY case_information.judge
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: case_information_judge {
    type: string
    sql: ${TABLE}.`case_information.judge` ;;
  }

  dimension: case_information_duration_in_months {
    type: number
    sql: ${TABLE}.`case_information.duration_in_months` ;;
  }

  set: detail {
    fields: [case_information_judge, case_information_duration_in_months]
  }
}
