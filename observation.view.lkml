view: observation {
  derived_table: {
    sql: SELECT id as observation_id,  subject.patientid as patient_id, c.code,
          c.display, value.quantity.value as quantity_value, value.quantity.unit as quantity_unit, value.string as value_string
        FROM `cch-sandbox.fhir_dataset.Observation` ob, unnest(code.coding) c ;;
  }

  dimension: observation_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.observation_id ;;
  }

  dimension: patient_id {
    type: string
    sql: ${TABLE}.patient_id ;;
  }

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }

  dimension: quantity_value {
    type: string
    sql: ${TABLE}.quantity_value ;;
  }

  dimension: quantity_unit {
    type: string
    sql: ${TABLE}.quantity_unit ;;
  }

  dimension: values_string {
    type: string
    sql: ${TABLE}.values_string ;;
  }
}

view: observation_orig {
  sql_table_name: `cch-sandbox.fhir_dataset.Observation`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: based_on {
    hidden: yes
    sql: ${TABLE}.basedOn ;;
  }

  dimension: body_site {
    hidden: yes
    sql: ${TABLE}.bodySite ;;
  }

  dimension: category {
    hidden: yes
    sql: ${TABLE}.category ;;
  }

  dimension: code {
    hidden: yes
    sql: ${TABLE}.code ;;
  }

  dimension: comment {
    type: string
    sql: ${TABLE}.comment ;;
  }

  dimension: component {
    hidden: yes
    sql: ${TABLE}.component ;;
  }

  dimension: context {
    hidden: yes
    sql: ${TABLE}.context ;;
  }

  dimension: data_absent_reason {
    hidden: yes
    sql: ${TABLE}.dataAbsentReason ;;
  }

  dimension: device {
    hidden: yes
    sql: ${TABLE}.device ;;
  }

  dimension: effective {
    hidden: yes
    sql: ${TABLE}.effective ;;
  }

  dimension: identifier {
    hidden: yes
    sql: ${TABLE}.identifier ;;
  }

  dimension: implicit_rules {
    type: string
    sql: ${TABLE}.implicitRules ;;
  }

  dimension: interpretation {
    hidden: yes
    sql: ${TABLE}.interpretation ;;
  }

  dimension_group: issued {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.issued ;;
  }

  dimension: language {
    type: string
    sql: ${TABLE}.language ;;
  }

  dimension: meta {
    hidden: yes
    sql: ${TABLE}.meta ;;
  }

  dimension: method {
    hidden: yes
    sql: ${TABLE}.method ;;
  }

  dimension: performer {
    hidden: yes
    sql: ${TABLE}.performer ;;
  }

  dimension: reference_range {
    hidden: yes
    sql: ${TABLE}.referenceRange ;;
  }

  dimension: related {
    hidden: yes
    sql: ${TABLE}.related ;;
  }

  dimension: specimen {
    hidden: yes
    sql: ${TABLE}.specimen ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: subject {
    hidden: yes
    sql: ${TABLE}.subject ;;
  }

  dimension: text {
    hidden: yes
    sql: ${TABLE}.text ;;
  }

  dimension: value {
    hidden: yes
    sql: ${TABLE}.value ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
