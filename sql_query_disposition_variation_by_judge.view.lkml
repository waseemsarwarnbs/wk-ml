view: sql_query_disposition_variation_by_judge {
  derived_table: {
    sql: SELECT
        sum(case_information.affirmed)  AS `case_information.affirmed`,
        sum(case_information.dismissed)  AS `case_information.dismissed`,
        sum(case_information.remand)  AS `case_information.remand`,
        sum(case_information.reversed) AS `case_information.reversed`,
        case_information.judge  AS `case_information.judge`
      FROM wkml.case_information  AS case_information

      GROUP BY case_information.judge
      ORDER BY case_information.judge
      LIMIT 500
       ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: case_information_affirmed {
    type: number
    sql: ${TABLE}.`case_information.affirmed` ;;
  }

  dimension: case_information_dismissed {
    type: number
    sql: ${TABLE}.`case_information.dismissed` ;;
  }

  dimension: case_information_remand {
    type: number
    sql: ${TABLE}.`case_information.remand` ;;
  }

  dimension: case_information_reversed {
    type: number
    sql: ${TABLE}.`case_information.reversed` ;;
  }

  dimension: case_information_judge {
    type: string
    sql: ${TABLE}.`case_information.judge` ;;
  }

  set: detail {
    fields: [case_information_affirmed, case_information_dismissed, case_information_remand, case_information_reversed, case_information_judge]
  }
}
