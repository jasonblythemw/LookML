view: condition {
  derived_table: {
    sql: SELECT id as condition_id, subject.patientid as patient_id, c.system as system, c.code, c.display
      FROM `cch-sandbox.fhir_dataset.Condition` cd, unnest(code.coding) c ;;
  }

  dimension: condition_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.condition_id ;;
  }

  dimension: patient_id {
    type: string
    sql: ${TABLE}.patient_id ;;
  }

  dimension: system {
    type: string
    sql: ${TABLE}.system ;;
  }

  dimension: code {
    type: string
    sql: ${TABLE}.code ;;
  }

  dimension: display {
    type: string
    sql: ${TABLE}.display ;;
  }


}

view: condition_orig {
  sql_table_name: `cch-sandbox.fhir_dataset.Condition`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: abatement {
    hidden: yes
    sql: ${TABLE}.abatement ;;
  }

  dimension: asserted_date {
    type: string
    sql: ${TABLE}.assertedDate ;;
  }

  dimension: asserter {
    hidden: yes
    sql: ${TABLE}.asserter ;;
  }

  dimension: body_site {
    hidden: yes
    sql: ${TABLE}.bodySite ;;
  }

  dimension: category {
    hidden: yes
    sql: ${TABLE}.category ;;
  }

  dimension: clinical_status {
    type: string
    sql: ${TABLE}.clinicalStatus ;;
  }

  dimension: code {
    hidden: yes
    sql: ${TABLE}.code ;;
  }

  dimension: context {
    hidden: yes
    sql: ${TABLE}.context ;;
  }

  dimension: evidence {
    hidden: yes
    sql: ${TABLE}.evidence ;;
  }

  dimension: identifier {
    hidden: yes
    sql: ${TABLE}.identifier ;;
  }

  dimension: implicit_rules {
    type: string
    sql: ${TABLE}.implicitRules ;;
  }

  dimension: language {
    type: string
    sql: ${TABLE}.language ;;
  }

  dimension: meta {
    hidden: yes
    sql: ${TABLE}.meta ;;
  }

  dimension: note {
    hidden: yes
    sql: ${TABLE}.note ;;
  }

  dimension: onset {
    hidden: yes
    sql: ${TABLE}.onset ;;
  }

  dimension: severity {
    hidden: yes
    sql: ${TABLE}.severity ;;
  }

  dimension: stage {
    hidden: yes
    sql: ${TABLE}.stage ;;
  }

  dimension: subject {
    hidden: yes
    sql: ${TABLE}.subject ;;
  }

  dimension: text {
    hidden: yes
    sql: ${TABLE}.text ;;
  }

  dimension: verification_status {
    type: string
    sql: ${TABLE}.verificationStatus ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
