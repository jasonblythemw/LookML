connection: "cch-synthea"

include: "*.view"

datagroup: cch_sandbox_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: cch_sandbox_default_datagroup


explore: condition {
  hidden: yes

}

explore: patient_identifier {
  hidden:  yes

  join: pat_CCF{ relationship: one_to_one  fields: []  type: left_outer  sql_on:  ${pat_CCF.pat_id} = ${patient_identifier.pat_id};; }
  #join: pat_EPI{ relationship: one_to_one  fields: []  type: left_outer  sql_on:  ${pat_EPI.pat_id} = ${patient_identifier.pat_id};; }
  join: pat_MEMRN{ relationship: one_to_one  fields: []  type: left_outer  sql_on:  ${pat_MEMRN.pat_id} = ${patient_identifier.pat_id};; }
  join: pat_FLA_CCF{ relationship: one_to_one  fields: []  type: left_outer  sql_on:  ${pat_FLA_CCF.pat_id} = ${patient_identifier.pat_id};; }
  join: pat_SB{ relationship: one_to_one  fields: []  type: left_outer  sql_on:  ${pat_SB.pat_id} = ${patient_identifier.pat_id};; }
  join: pat_DL{ relationship: one_to_one  fields: []  type: left_outer  sql_on:  ${pat_DL.pat_id} = ${patient_identifier.pat_id};; }
  join: pat_FVMRN{ relationship: one_to_one  fields: []  type: left_outer  sql_on:  ${pat_FVMRN.pat_id} = ${patient_identifier.pat_id};; }
  join: pat_IRISREG{ relationship: one_to_one  fields: []  type: left_outer  sql_on:  ${pat_IRISREG.pat_id} = ${patient_identifier.pat_id};; }
  join: pat_CCHS_ER_HCH{ relationship: one_to_one  fields: []  type: left_outer  sql_on:  ${pat_CCHS_ER_HCH.pat_id} = ${patient_identifier.pat_id};; }
  join: pat_CCHS_WR_MMH{ relationship: one_to_one  fields: []  type: left_outer  sql_on:  ${pat_CCHS_WR_MMH.pat_id} = ${patient_identifier.pat_id};; }
  join: pat_AVMRN{ relationship: one_to_one  fields: []  type: left_outer  sql_on:  ${pat_AVMRN.pat_id} = ${patient_identifier.pat_id};; }
  join: pat_CCHS_ER_EUH{ relationship: one_to_one  fields: []  type: left_outer  sql_on:  ${pat_CCHS_ER_EUH.pat_id} = ${patient_identifier.pat_id};; }
  join: pat_AGMRN{ relationship: one_to_one  fields: []  type: left_outer  sql_on:  ${pat_AGMRN.pat_id} = ${patient_identifier.pat_id};; }
  join: pat_AGLDMRN{ relationship: one_to_one  fields: []  type: left_outer  sql_on:  ${pat_AGLDMRN.pat_id} = ${patient_identifier.pat_id};; }
  join: pat_LUMRN{ relationship: one_to_one  fields: []  type: left_outer  sql_on:  ${pat_LUMRN.pat_id} = ${patient_identifier.pat_id};; }
  join: pat_CPC_AGAMBMR{ relationship: one_to_one  fields: []  type: left_outer  sql_on:  ${pat_CPC_AGAMBMR.pat_id} = ${patient_identifier.pat_id};; }
  join: pat_CPC_AGHS{ relationship: one_to_one  fields: []  type: left_outer  sql_on:  ${pat_CPC_AGHS.pat_id} = ${patient_identifier.pat_id};; }
  join: pat_CCHS_ER_SPH{ relationship: one_to_one  fields: []  type: left_outer  sql_on:  ${pat_CCHS_ER_SPH.pat_id} = ${patient_identifier.pat_id};; }
  join: pat_MYCHART{ relationship: one_to_one  fields: []  type: left_outer  sql_on:  ${pat_MYCHART.pat_id} = ${patient_identifier.pat_id};; }
  join: pat_CPC_RFPI{ relationship: one_to_one  fields: []  type: left_outer  sql_on:  ${pat_CPC_RFPI.pat_id} = ${patient_identifier.pat_id};; }
  join: pat_SELMED_EPI{ relationship: one_to_one  fields: []  type: left_outer  sql_on:  ${pat_SELMED_EPI.pat_id} = ${patient_identifier.pat_id};; }
  join: pat_SELMED_FH{ relationship: one_to_one  fields: []  type: left_outer  sql_on:  ${pat_SELMED_FH.pat_id} = ${patient_identifier.pat_id};; }

}

explore: encounter {

  join: practitioner {
    relationship: one_to_one type: left_outer  sql_on: ${encounter_practitioner.practitioner_id} = ${practitioner.prac_id};;
  }

  join: prac_CCF{ relationship: one_to_one  fields: []  type: left_outer  sql_on: ${encounter_practitioner.practitioner_id} = ${prac_CCF.prac_id}  ;; }
  join: prac_SER_DR_NO{ relationship: one_to_one  fields: []  type: left_outer  sql_on: ${encounter_practitioner.practitioner_id} = ${prac_SER_DR_NO.prac_id}  ;; }
  join: prac_NPI{ relationship: one_to_one  fields: []  type: left_outer  sql_on: ${encounter_practitioner.practitioner_id} = ${prac_NPI.prac_id}  ;; }
  join: prac_CCFDRNO{ relationship: one_to_one  fields: []  type: left_outer  sql_on: ${encounter_practitioner.practitioner_id} = ${prac_CCFDRNO.prac_id}  ;; }
  join: prac_ATNDRW{ relationship: one_to_one  fields: []  type: left_outer  sql_on: ${encounter_practitioner.practitioner_id} = ${prac_ATNDRW.prac_id}  ;; }
  join: prac_MEDRNO{ relationship: one_to_one  fields: []  type: left_outer  sql_on: ${encounter_practitioner.practitioner_id} = ${prac_MEDRNO.prac_id}  ;; }
  join: prac_LKDRNO{ relationship: one_to_one  fields: []  type: left_outer  sql_on: ${encounter_practitioner.practitioner_id} = ${prac_LKDRNO.prac_id}  ;; }
  join: prac_ERFDRNO{ relationship: one_to_one  fields: []  type: left_outer  sql_on: ${encounter_practitioner.practitioner_id} = ${prac_ERFDRNO.prac_id}  ;; }
  join: prac_AGAMBDRNO{ relationship: one_to_one  fields: []  type: left_outer  sql_on: ${encounter_practitioner.practitioner_id} = ${prac_AGAMBDRNO.prac_id}  ;; }
  join: prac_FVLUDRNO{ relationship: one_to_one  fields: []  type: left_outer  sql_on: ${encounter_practitioner.practitioner_id} = ${prac_FVLUDRNO.prac_id}  ;; }
  join: prac_AGOBDRNO{ relationship: one_to_one  fields: []  type: left_outer  sql_on: ${encounter_practitioner.practitioner_id} = ${prac_AGOBDRNO.prac_id}  ;; }
  join: prac_ACDRNO{ relationship: one_to_one  fields: []  type: left_outer  sql_on: ${encounter_practitioner.practitioner_id} = ${prac_ACDRNO.prac_id}  ;; }
  join: prac_MMDRNO{ relationship: one_to_one  fields: []  type: left_outer  sql_on: ${encounter_practitioner.practitioner_id} = ${prac_MMDRNO.prac_id}  ;; }

  join: encounter_practitioner {
    relationship: one_to_one type: left_outer fields: [] sql_on:  ${encounter.enc_id} = ${encounter_practitioner.enc_id};;
  }

  join: patient {
    relationship: one_to_one type: left_outer sql_on:  ${encounter_patient.patient_id} = ${patient.patient_id};;
  }

  join: pat_CCF{ relationship: one_to_one  fields: []  type: left_outer  sql_on:  ${encounter_patient.patient_id} = ${pat_CCF.pat_id};; }
  join: pat_EPI{ relationship: one_to_one  fields: []  type: left_outer  sql_on:  ${encounter_patient.patient_id} = ${pat_EPI.pat_id};; }
  join: pat_MEMRN{ relationship: one_to_one  fields: []  type: left_outer  sql_on:  ${encounter_patient.patient_id} =${pat_MEMRN.pat_id};; }
  join: pat_FLA_CCF{ relationship: one_to_one  fields: []  type: left_outer  sql_on:  ${pat_FLA_CCF.pat_id} = ${encounter_patient.patient_id};; }
  join: pat_SB{ relationship: one_to_one  fields: []  type: left_outer  sql_on:  ${pat_SB.pat_id} = ${encounter_patient.patient_id};; }
  join: pat_DL{ relationship: one_to_one  fields: []  type: left_outer  sql_on:  ${pat_DL.pat_id} = ${encounter_patient.patient_id};; }
  join: pat_FVMRN{ relationship: one_to_one  fields: []  type: left_outer  sql_on:  ${pat_FVMRN.pat_id} = ${encounter_patient.patient_id};; }
  join: pat_IRISREG{ relationship: one_to_one  fields: []  type: left_outer  sql_on:  ${pat_IRISREG.pat_id} = ${encounter_patient.patient_id};; }
  join: pat_CCHS_ER_HCH{ relationship: one_to_one  fields: []  type: left_outer  sql_on:  ${pat_CCHS_ER_HCH.pat_id} = ${encounter_patient.patient_id};; }
  join: pat_CCHS_WR_MMH{ relationship: one_to_one  fields: []  type: left_outer  sql_on:  ${pat_CCHS_WR_MMH.pat_id} = ${encounter_patient.patient_id};; }
  join: pat_AVMRN{ relationship: one_to_one  fields: []  type: left_outer  sql_on:  ${pat_AVMRN.pat_id} = ${encounter_patient.patient_id};; }
  join: pat_CCHS_ER_EUH{ relationship: one_to_one  fields: []  type: left_outer  sql_on:  ${pat_CCHS_ER_EUH.pat_id} = ${encounter_patient.patient_id};; }
  join: pat_AGMRN{ relationship: one_to_one  fields: []  type: left_outer  sql_on:  ${pat_AGMRN.pat_id} = ${encounter_patient.patient_id};; }
  join: pat_AGLDMRN{ relationship: one_to_one  fields: []  type: left_outer  sql_on:  ${pat_AGLDMRN.pat_id} = ${encounter_patient.patient_id};; }
  join: pat_LUMRN{ relationship: one_to_one  fields: []  type: left_outer  sql_on:  ${pat_LUMRN.pat_id} = ${encounter_patient.patient_id};; }
  join: pat_CPC_AGAMBMR{ relationship: one_to_one  fields: []  type: left_outer  sql_on:  ${pat_CPC_AGAMBMR.pat_id} = ${encounter_patient.patient_id};; }
  join: pat_CPC_AGHS{ relationship: one_to_one  fields: []  type: left_outer  sql_on:  ${pat_CPC_AGHS.pat_id} = ${encounter_patient.patient_id};; }
  join: pat_CCHS_ER_SPH{ relationship: one_to_one  fields: []  type: left_outer  sql_on:  ${pat_CCHS_ER_SPH.pat_id} = ${encounter_patient.patient_id};; }
  join: pat_MYCHART{ relationship: one_to_one  fields: []  type: left_outer  sql_on:  ${pat_MYCHART.pat_id} = ${encounter_patient.patient_id};; }
  join: pat_CPC_RFPI{ relationship: one_to_one  fields: []  type: left_outer  sql_on:  ${pat_CPC_RFPI.pat_id} = ${encounter_patient.patient_id};; }
  join: pat_SELMED_EPI{ relationship: one_to_one  fields: []  type: left_outer  sql_on:  ${pat_SELMED_EPI.pat_id} = ${encounter_patient.patient_id};; }
  join: pat_SELMED_FH{ relationship: one_to_one  fields: []  type: left_outer  sql_on:  ${pat_SELMED_FH.pat_id} = ${encounter_patient.patient_id};; }


  join: encounter_patient {
    relationship: one_to_one  fields: [] type: left_outer  sql_on:  ${encounter.enc_id} = ${encounter_patient.enc_id};;
  }

  join: condition {
    relationship: one_to_one type: left_outer  sql_on:  ${encounter_condition.condition_id} = ${condition.condition_id};;
  }

  join: encounter_condition {
    relationship: one_to_one  fields: [] type: left_outer  sql_on:  ${encounter.enc_id} = ${encounter_condition.enc_id};;
  }

  join: enc_CSN{ relationship: one_to_one  fields: []  type: left_outer  sql_on:  ${encounter.enc_id} = ${enc_CSN.enc_id};; }
  join: enc_UCI{ relationship: one_to_one  fields: []  type: left_outer  sql_on:  ${encounter.enc_id} = ${enc_UCI.enc_id};; }
  join: enc_HAR{ relationship: one_to_one  fields: []  type: left_outer  sql_on:  ${encounter.enc_id} = ${enc_HAR.enc_id};; }
  join: enc_CONTACTTYPE{ relationship: one_to_one  fields: []  type: left_outer  sql_on:  ${encounter.enc_id} = ${enc_CONTACTTYPE.enc_id};; }
  join: enc_BEDID{ relationship: one_to_one  fields: []  type: left_outer  sql_on:  ${encounter.enc_id} = ${enc_BEDID.enc_id};; }
  join: enc_ADTYPE{ relationship: one_to_one  fields: []  type: left_outer  sql_on:  ${encounter.enc_id} = ${enc_ADTYPE.enc_id};; }
  join: enc_CHARGESLIP{ relationship: one_to_one  fields: []  type: left_outer  sql_on:  ${encounter.enc_id} = ${enc_CHARGESLIP.enc_id};; }

  join: enc_bed {
    relationship: one_to_one
    fields: []
    type: left_outer
    sql_on: ${encounter.enc_id} = ${enc_bed.enc_id} ;;
  }

  join: enc_level {
    relationship: one_to_one
    fields: []
    type: left_outer
    sql_on: ${encounter.enc_id} = ${enc_level.enc_id} ;;
  }

  join: enc_building {
    relationship: one_to_one
    fields: []
    type: left_outer
    sql_on: ${encounter.enc_id} = ${enc_building.enc_id} ;;
  }

  join: enc_site {
    relationship: one_to_one
    fields: []
    type: left_outer
    sql_on: ${encounter.enc_id} = ${enc_site.enc_id} ;;
  }

  join: enc_room {
    relationship: one_to_one
    fields: []
    type: left_outer
    sql_on: ${encounter.enc_id} = ${enc_room.enc_id} ;;
  }
}

explore: encounter_identifier {

  hidden: yes
  join: enc_CSN{ relationship: one_to_one  fields: []  type: left_outer  sql_on:  ${enc_CSN.enc_id} = ${encounter_identifier.enc_id};; }
  join: enc_UCI{ relationship: one_to_one  fields: []  type: left_outer  sql_on:  ${enc_UCI.enc_id} = ${encounter_identifier.enc_id};; }
  join: enc_HAR{ relationship: one_to_one  fields: []  type: left_outer  sql_on:  ${enc_HAR.enc_id} = ${encounter_identifier.enc_id};; }
  join: enc_CONTACTTYPE{ relationship: one_to_one  fields: []  type: left_outer  sql_on:  ${enc_CONTACTTYPE.enc_id} = ${encounter_identifier.enc_id};; }
  join: enc_BEDID{ relationship: one_to_one  fields: []  type: left_outer  sql_on:  ${enc_BEDID.enc_id} = ${encounter_identifier.enc_id};; }
  join: enc_ADTYPE{ relationship: one_to_one  fields: []  type: left_outer  sql_on:  ${enc_ADTYPE.enc_id} = ${encounter_identifier.enc_id};; }
  join: enc_CHARGESLIP{ relationship: one_to_one  fields: []  type: left_outer  sql_on:  ${enc_CHARGESLIP.enc_id} = ${encounter_identifier.enc_id};; }

}


explore: encounter_location {
  hidden: yes
  join: enc_bed {
    relationship: one_to_one
    fields: []
    type: left_outer
    sql_on: ${enc_bed.enc_id} = ${encounter_location.enc_id} ;;
  }

  join: enc_level {
    relationship: one_to_one
    fields: []
    type: left_outer
    sql_on: ${enc_level.enc_id} = ${encounter_location.enc_id} ;;
  }

  join: enc_building {
    relationship: one_to_one
    fields: []
    type: left_outer
    sql_on: ${enc_building.enc_id} = ${encounter_location.enc_id} ;;
  }

  join: enc_site {
    relationship: one_to_one
    fields: []
    type: left_outer
    sql_on: ${enc_site.enc_id} = ${encounter_location.enc_id} ;;
  }

  join: enc_room {
    relationship: one_to_one
    fields: []
    type: left_outer
    sql_on: ${enc_room.enc_id} = ${encounter_location.enc_id} ;;
  }
}
