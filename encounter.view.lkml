view: encounter {

  derived_table: {
    sql:
      SELECT enc.id as enc_id
      FROM `cch-sandbox.fhir_dataset.Encounter` enc;;
  }

  dimension: enc_id {
    primary_key: yes
    type:  string
    sql: ${TABLE}.enc_id ;;
  }

  dimension: CSN { type: string label: "CSN" sql: ${enc_CSN.enc_CSN} ;; }
  dimension: UCI { type: string label: "UCI" sql: ${enc_UCI.enc_UCI} ;; }
  dimension: HAR { type: string label: "HAR" sql: ${enc_HAR.enc_HAR} ;; }
  dimension: CONTACTTYPE { type: string label: "CONTACTTYPE" sql: ${enc_CONTACTTYPE.enc_CONTACTTYPE} ;; }
  dimension: BEDID { type: string label: "BEDID" sql: ${enc_BEDID.enc_BEDID} ;; }
  dimension: ADTYPE { type: string label: "ADTYPE" sql: ${enc_ADTYPE.enc_ADTYPE} ;; }
  dimension: CHARGESLIP { type: string label: "CHARGESLIP" sql: ${enc_CHARGESLIP.enc_CHARGESLIP} ;; }

  dimension: bed {
    type: string
    sql:  ${enc_bed.bed};;
  }

  dimension: room {
    type: string
    sql:  ${enc_room.room};;
  }

  dimension: site {
    type: string
    sql:  ${enc_site.site};;
  }

  dimension: building {
    type: string
    sql:  ${enc_building.building};;
  }

  dimension: level {
    type: string
    sql:  ${enc_level.level};;
  }

}

view: encounter_practitioner {
  derived_table: {
    sql: SELECT enc.id as enc_id, p.individual.practitionerId as practitioner_id
      FROM `cch-sandbox.fhir_dataset.Encounter` enc,  unnest(participant) p ;;
  }

  dimension: enc_id {
    type: string
    sql: ${TABLE}.enc_id ;;
  }

  dimension: practitioner_id {
    type: string
    sql: ${TABLE}.practitioner_id ;;
  }
}

view: encounter_patient {
  derived_table: {
    sql: SELECT distinct id as enc_id, subject.patientid as patient_id
      FROM `cch-sandbox.fhir_dataset.Encounter` enc ;;
  }

  dimension: enc_id {
    type: string
    sql: ${TABLE}.enc_id ;;
  }

  dimension: patient_id {
    type: string
    sql: ${TABLE}.patient_id ;;
  }
}

view: encounter_condition {
  derived_table: {
    sql: SELECT distinct id as enc_id, d.condition.conditionid as condition_id
      FROM `cch-sandbox.fhir_dataset.Encounter` enc, unnest(diagnosis) d ;;
  }

  dimension: enc_id {
    type: string
    sql: ${TABLE}.enc_id ;;
  }

  dimension: condition_id {
    type: string
    sql: ${TABLE}.condition_id ;;
  }
}

view: encounter_identifier {
  derived_table: {
    sql:
      SELECT distinct enc.id as enc_id
      FROM `cch-sandbox.fhir_dataset.Encounter` enc;;
  }

  dimension: enc_id {type: string  label: "Enc ID" sql: ${TABLE}.enc_id ;;}
  dimension: CSN { type: string label: "CSN" sql: ${enc_CSN.enc_CSN} ;; }
  dimension: UCI { type: string label: "UCI" sql: ${enc_UCI.enc_UCI} ;; }
  dimension: HAR { type: string label: "HAR" sql: ${enc_HAR.enc_HAR} ;; }
  dimension: CONTACTTYPE { type: string label: "CONTACTTYPE" sql: ${enc_CONTACTTYPE.enc_CONTACTTYPE} ;; }
  dimension: BEDID { type: string label: "BEDID" sql: ${enc_BEDID.enc_BEDID} ;; }
  dimension: ADTYPE { type: string label: "ADTYPE" sql: ${enc_ADTYPE.enc_ADTYPE} ;; }
  dimension: CHARGESLIP { type: string label: "CHARGESLIP" sql: ${enc_CHARGESLIP.enc_CHARGESLIP} ;; }
}

view: enc_CSN { derived_table: { sql: SELECT distinct id as enc_id, i.value as CSN  FROM `cch-sandbox.fhir_dataset.Encounter`enc, unnest(identifier) i, unnest(i.type.coding) c where c.code = 'CSN';; } dimension: enc_id {primary_key: yes  type: string  sql: ${TABLE}.enc_id;; } dimension: enc_CSN { type: string sql: ${TABLE}.CSN ;;}}
view: enc_UCI { derived_table: { sql: SELECT distinct id as enc_id, i.value as UCI  FROM `cch-sandbox.fhir_dataset.Encounter`enc, unnest(identifier) i, unnest(i.type.coding) c where c.code = 'UCI';; } dimension: enc_id {primary_key: yes  type: string  sql: ${TABLE}.enc_id;; } dimension: enc_UCI { type: string sql: ${TABLE}.UCI ;;}}
view: enc_HAR { derived_table: { sql: SELECT distinct id as enc_id, i.value as HAR  FROM `cch-sandbox.fhir_dataset.Encounter`enc, unnest(identifier) i, unnest(i.type.coding) c where c.code = 'HAR';; } dimension: enc_id {primary_key: yes  type: string  sql: ${TABLE}.enc_id;; } dimension: enc_HAR { type: string sql: ${TABLE}.HAR ;;}}
view: enc_CONTACTTYPE { derived_table: { sql: SELECT distinct id as enc_id, i.value as CONTACTTYPE  FROM `cch-sandbox.fhir_dataset.Encounter`enc, unnest(identifier) i, unnest(i.type.coding) c where c.code = 'CONTACTTYPE';; } dimension: enc_id {primary_key: yes  type: string  sql: ${TABLE}.enc_id;; } dimension: enc_CONTACTTYPE { type: string sql: ${TABLE}.CONTACTTYPE ;;}}
view: enc_BEDID { derived_table: { sql: SELECT distinct id as enc_id, i.value as BEDID  FROM `cch-sandbox.fhir_dataset.Encounter`enc, unnest(identifier) i, unnest(i.type.coding) c where c.code = 'BEDID';; } dimension: enc_id {primary_key: yes  type: string  sql: ${TABLE}.enc_id;; } dimension: enc_BEDID { type: string sql: ${TABLE}.BEDID ;;}}
view: enc_ADTYPE { derived_table: { sql: SELECT distinct id as enc_id, i.value as ADTYPE  FROM `cch-sandbox.fhir_dataset.Encounter`enc, unnest(identifier) i, unnest(i.type.coding) c where c.code = 'ADTYPE';; } dimension: enc_id {primary_key: yes  type: string  sql: ${TABLE}.enc_id;; } dimension: enc_ADTYPE { type: string sql: ${TABLE}.ADTYPE ;;}}
view: enc_CHARGESLIP { derived_table: { sql: SELECT distinct id as enc_id, i.value as CHARGESLIP  FROM `cch-sandbox.fhir_dataset.Encounter`enc, unnest(identifier) i, unnest(i.type.coding) c where c.code = 'CHARGESLIP';; } dimension: enc_id {primary_key: yes  type: string  sql: ${TABLE}.enc_id;; } dimension: enc_CHARGESLIP { type: string sql: ${TABLE}.CHARGESLIP ;;}}


view: encounter_location {
  derived_table: {
    sql:
      SELECT distinct enc.id as enc_id
      FROM `cch-sandbox.fhir_dataset.Encounter` enc;;
  }

  dimension: bed {
    type: string
    sql:  ${enc_bed.bed};;
  }

  dimension: room {
    type: string
    sql:  ${enc_room.room};;
  }

  dimension: site {
    type: string
    sql:  ${enc_site.site};;
  }

  dimension: building {
    type: string
    sql:  ${enc_building.building};;
  }

  dimension: level {
    type: string
    sql:  ${enc_level.level};;
  }

  dimension: CSN {
    primary_key: yes
    type: string
    sql: ${TABLE}.CSN ;;
  }

  dimension: enc_code {
    sql: ${TABLE}.enc_code ;;
  }

  dimension: enc_id {
    sql: ${TABLE}.enc_id ;;
  }

  dimension: enc_patient_id {
    hidden: no
    sql: ${TABLE}.enc_patient_id ;;
  }

  dimension: PID {
    hidden: no
    sql: ${TABLE}.PID ;;
  }

  dimension: pat_code {
    hidden: no
    sql: ${TABLE}.pat_code ;;
  }


  measure: count {
    type: count
    drill_fields: [enc_id]
  }
}
