view: patient {

  derived_table: {
    sql:  select p.id as patient_id
      from `cch-sandbox.fhir_dataset.Patient` p ;;
  }


  dimension: patient_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.patient_id ;;
  }


  dimension: CCF { type: string label: "CCF" sql: ${pat_CCF.pat_CCF} ;; }
  #dimension: EPI { type: string label: "EPI" sql: ${pat_EPI.pat_EPI} ;; }
  #dimension: MEMRN { type: string label: "MEMRN" sql: ${pat_MEMRN.pat_MEMRN} ;; }
  dimension: FLA_CCF { type: string label: "FLA-CCF" sql: ${pat_FLA_CCF.pat_FLA_CCF} ;; }
  dimension: SB { type: string label: "SB" sql: ${pat_SB.pat_SB} ;; }
  dimension: DL { type: string label: "DL" sql: ${pat_DL.pat_DL} ;; }
  dimension: FVMRN { type: string label: "FVMRN" sql: ${pat_FVMRN.pat_FVMRN} ;; }
  dimension: IRISREG { type: string label: "IRISREG" sql: ${pat_IRISREG.pat_IRISREG} ;; }
  dimension: CCHS_ER_HCH { type: string label: "CCHS-ER-HCH" sql: ${pat_CCHS_ER_HCH.pat_CCHS_ER_HCH} ;; }
  dimension: CCHS_WR_MMH { type: string label: "CCHS-WR-MMH" sql: ${pat_CCHS_WR_MMH.pat_CCHS_WR_MMH} ;; }
  dimension: AVMRN { type: string label: "AVMRN" sql: ${pat_AVMRN.pat_AVMRN} ;; }
  dimension: CCHS_ER_EUH { type: string label: "CCHS-ER-EUH" sql: ${pat_CCHS_ER_EUH.pat_CCHS_ER_EUH} ;; }
  dimension: AGMRN { type: string label: "AGMRN" sql: ${pat_AGMRN.pat_AGMRN} ;; }
  dimension: AGLDMRN { type: string label: "AGLDMRN" sql: ${pat_AGLDMRN.pat_AGLDMRN} ;; }
  dimension: LUMRN { type: string label: "LUMRN" sql: ${pat_LUMRN.pat_LUMRN} ;; }
  dimension: CPC_AGAMBMR { type: string label: "CPC-AGAMBMR" sql: ${pat_CPC_AGAMBMR.pat_CPC_AGAMBMR} ;; }
  dimension: CPC_AGHS { type: string label: "CPC-AGHS" sql: ${pat_CPC_AGHS.pat_CPC_AGHS} ;; }
  dimension: CCHS_ER_SPH { type: string label: "CCHS-ER-SPH" sql: ${pat_CCHS_ER_SPH.pat_CCHS_ER_SPH} ;; }
  dimension: MYCHART { type: string label: "MYCHART" sql: ${pat_MYCHART.pat_MYCHART} ;; }
  dimension: CPC_RFPI { type: string label: "CPC-RFPI" sql: ${pat_CPC_RFPI.pat_CPC_RFPI} ;; }
  dimension: SELMED_EPI { type: string label: "SELMED-EPI" sql: ${pat_SELMED_EPI.pat_SELMED_EPI} ;; }
  dimension: SELMED_FH { type: string label: "SELMED-FH" sql: ${pat_SELMED_FH.pat_SELMED_FH} ;; }

}

view: patient_identifier {

  derived_table: {
    sql:  select p.id as pat_id
      from `cch-sandbox.fhir_dataset.Patient` p ;;
  }

  dimension: pat_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.pat_id ;;
  }

  dimension: CCF { type: string label: "CCF" sql: ${pat_CCF.pat_CCF} ;; }
  #dimension: EPI { type: string label: "EPI" sql: ${pat_EPI.pat_EPI} ;; }
  dimension: MEMRN { type: string label: "MEMRN" sql: ${pat_MEMRN.pat_MEMRN} ;; }
  dimension: FLA_CCF { type: string label: "FLA-CCF" sql: ${pat_FLA_CCF.pat_FLA_CCF} ;; }
  dimension: SB { type: string label: "SB" sql: ${pat_SB.pat_SB} ;; }
  dimension: DL { type: string label: "DL" sql: ${pat_DL.pat_DL} ;; }
  dimension: FVMRN { type: string label: "FVMRN" sql: ${pat_FVMRN.pat_FVMRN} ;; }
  dimension: IRISREG { type: string label: "IRISREG" sql: ${pat_IRISREG.pat_IRISREG} ;; }
  dimension: CCHS_ER_HCH { type: string label: "CCHS-ER-HCH" sql: ${pat_CCHS_ER_HCH.pat_CCHS_ER_HCH} ;; }
  dimension: CCHS_WR_MMH { type: string label: "CCHS-WR-MMH" sql: ${pat_CCHS_WR_MMH.pat_CCHS_WR_MMH} ;; }
  dimension: AVMRN { type: string label: "AVMRN" sql: ${pat_AVMRN.pat_AVMRN} ;; }
  dimension: CCHS_ER_EUH { type: string label: "CCHS-ER-EUH" sql: ${pat_CCHS_ER_EUH.pat_CCHS_ER_EUH} ;; }
  dimension: AGMRN { type: string label: "AGMRN" sql: ${pat_AGMRN.pat_AGMRN} ;; }
  dimension: AGLDMRN { type: string label: "AGLDMRN" sql: ${pat_AGLDMRN.pat_AGLDMRN} ;; }
  dimension: LUMRN { type: string label: "LUMRN" sql: ${pat_LUMRN.pat_LUMRN} ;; }
  dimension: CPC_AGAMBMR { type: string label: "CPC-AGAMBMR" sql: ${pat_CPC_AGAMBMR.pat_CPC_AGAMBMR} ;; }
  dimension: CPC_AGHS { type: string label: "CPC-AGHS" sql: ${pat_CPC_AGHS.pat_CPC_AGHS} ;; }
  dimension: CCHS_ER_SPH { type: string label: "CCHS-ER-SPH" sql: ${pat_CCHS_ER_SPH.pat_CCHS_ER_SPH} ;; }
  dimension: MYCHART { type: string label: "MYCHART" sql: ${pat_MYCHART.pat_MYCHART} ;; }
  dimension: CPC_RFPI { type: string label: "CPC-RFPI" sql: ${pat_CPC_RFPI.pat_CPC_RFPI} ;; }
  dimension: SELMED_EPI { type: string label: "SELMED-EPI" sql: ${pat_SELMED_EPI.pat_SELMED_EPI} ;; }
  dimension: SELMED_FH { type: string label: "SELMED-FH" sql: ${pat_SELMED_FH.pat_SELMED_FH} ;; }

}

view: pat_CCF {
  derived_table: {
    sql: SELECT distinct id as pat_id, i.value as ccf
          FROM `cch-sandbox.fhir_dataset.Patient` pat, unnest(identifier) i, unnest(i.type.coding) c
          where c.code = 'CCF';;
  }

  dimension: pat_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.pat_id ;;
  }

  dimension: pat_CCF {
    type: string
    sql: ${TABLE}.CCF ;;
  }
}

view: pat_EPI { derived_table: { sql: SELECT distinct id as pat_id, i.value as EPI  FROM `cch-sandbox.fhir_dataset.Patient` pat, unnest(identifier) i, unnest(i.type.coding) c where c.code = 'EPI';; } dimension: pat_id {primary_key: yes  type: string  sql: ${TABLE}.pat_id;; } dimension: pat_EPI { type: string sql: ${TABLE}.EPI ;;}}
view: pat_MEMRN { derived_table: { sql: SELECT distinct id as pat_id, i.value as MEMRN  FROM `cch-sandbox.fhir_dataset.Patient` pat, unnest(identifier) i, unnest(i.type.coding) c where c.code = 'MEMRN';; } dimension: pat_id {primary_key: yes  type: string  sql: ${TABLE}.pat_id;; } dimension: pat_MEMRN { type: string sql: ${TABLE}.MEMRN ;;}}
view: pat_FLA_CCF { derived_table: { sql: SELECT distinct id as pat_id, i.value as FLA_CCF  FROM `cch-sandbox.fhir_dataset.Patient` pat, unnest(identifier) i, unnest(i.type.coding) c where c.code = 'FLA-CCF';; } dimension: pat_id {primary_key: yes  type: string  sql: ${TABLE}.pat_id;; } dimension: pat_FLA_CCF { type: string sql: ${TABLE}.FLA_CCF ;;}}
view: pat_SB { derived_table: { sql: SELECT distinct id as pat_id, i.value as SB  FROM `cch-sandbox.fhir_dataset.Patient` pat, unnest(identifier) i, unnest(i.type.coding) c where c.code = 'SB';; } dimension: pat_id {primary_key: yes  type: string  sql: ${TABLE}.pat_id;; } dimension: pat_SB { type: string sql: ${TABLE}.SB ;;}}
view: pat_DL { derived_table: { sql: SELECT distinct id as pat_id, i.value as DL  FROM `cch-sandbox.fhir_dataset.Patient` pat, unnest(identifier) i, unnest(i.type.coding) c where c.code = 'DL';; } dimension: pat_id {primary_key: yes  type: string  sql: ${TABLE}.pat_id;; } dimension: pat_DL { type: string sql: ${TABLE}.DL ;;}}
view: pat_FVMRN { derived_table: { sql: SELECT distinct id as pat_id, i.value as FVMRN  FROM `cch-sandbox.fhir_dataset.Patient` pat, unnest(identifier) i, unnest(i.type.coding) c where c.code = 'FVMRN';; } dimension: pat_id {primary_key: yes  type: string  sql: ${TABLE}.pat_id;; } dimension: pat_FVMRN { type: string sql: ${TABLE}.FVMRN ;;}}
view: pat_IRISREG { derived_table: { sql: SELECT distinct id as pat_id, i.value as IRISREG  FROM `cch-sandbox.fhir_dataset.Patient` pat, unnest(identifier) i, unnest(i.type.coding) c where c.code = 'IRISREG';; } dimension: pat_id {primary_key: yes  type: string  sql: ${TABLE}.pat_id;; } dimension: pat_IRISREG { type: string sql: ${TABLE}.IRISREG ;;}}
view: pat_CCHS_ER_HCH { derived_table: { sql: SELECT distinct id as pat_id, i.value as CCHS_ER_HCH  FROM `cch-sandbox.fhir_dataset.Patient` pat, unnest(identifier) i, unnest(i.type.coding) c where c.code = 'CCHS-ER-HCH';; } dimension: pat_id {primary_key: yes  type: string  sql: ${TABLE}.pat_id;; } dimension: pat_CCHS_ER_HCH { type: string sql: ${TABLE}.CCHS_ER_HCH ;;}}
view: pat_CCHS_WR_MMH { derived_table: { sql: SELECT distinct id as pat_id, i.value as CCHS_WR_MMH  FROM `cch-sandbox.fhir_dataset.Patient` pat, unnest(identifier) i, unnest(i.type.coding) c where c.code = 'CCHS-WR-MMH';; } dimension: pat_id {primary_key: yes  type: string  sql: ${TABLE}.pat_id;; } dimension: pat_CCHS_WR_MMH { type: string sql: ${TABLE}.CCHS_WR_MMH ;;}}
view: pat_AVMRN { derived_table: { sql: SELECT distinct id as pat_id, i.value as AVMRN  FROM `cch-sandbox.fhir_dataset.Patient` pat, unnest(identifier) i, unnest(i.type.coding) c where c.code = 'AVMRN';; } dimension: pat_id {primary_key: yes  type: string  sql: ${TABLE}.pat_id;; } dimension: pat_AVMRN { type: string sql: ${TABLE}.AVMRN ;;}}
view: pat_CCHS_ER_EUH { derived_table: { sql: SELECT distinct id as pat_id, i.value as CCHS_ER_EUH  FROM `cch-sandbox.fhir_dataset.Patient` pat, unnest(identifier) i, unnest(i.type.coding) c where c.code = 'CCHS-ER-EUH';; } dimension: pat_id {primary_key: yes  type: string  sql: ${TABLE}.pat_id;; } dimension: pat_CCHS_ER_EUH { type: string sql: ${TABLE}.CCHS_ER_EUH ;;}}
view: pat_AGMRN { derived_table: { sql: SELECT distinct id as pat_id, i.value as AGMRN  FROM `cch-sandbox.fhir_dataset.Patient` pat, unnest(identifier) i, unnest(i.type.coding) c where c.code = 'AGMRN';; } dimension: pat_id {primary_key: yes  type: string  sql: ${TABLE}.pat_id;; } dimension: pat_AGMRN { type: string sql: ${TABLE}.AGMRN ;;}}
view: pat_AGLDMRN { derived_table: { sql: SELECT distinct id as pat_id, i.value as AGLDMRN  FROM `cch-sandbox.fhir_dataset.Patient` pat, unnest(identifier) i, unnest(i.type.coding) c where c.code = 'AGLDMRN';; } dimension: pat_id {primary_key: yes  type: string  sql: ${TABLE}.pat_id;; } dimension: pat_AGLDMRN { type: string sql: ${TABLE}.AGLDMRN ;;}}
view: pat_LUMRN { derived_table: { sql: SELECT distinct id as pat_id, i.value as LUMRN  FROM `cch-sandbox.fhir_dataset.Patient` pat, unnest(identifier) i, unnest(i.type.coding) c where c.code = 'LUMRN';; } dimension: pat_id {primary_key: yes  type: string  sql: ${TABLE}.pat_id;; } dimension: pat_LUMRN { type: string sql: ${TABLE}.LUMRN ;;}}
view: pat_CPC_AGAMBMR { derived_table: { sql: SELECT distinct id as pat_id, i.value as CPC_AGAMBMR  FROM `cch-sandbox.fhir_dataset.Patient` pat, unnest(identifier) i, unnest(i.type.coding) c where c.code = 'CPC-AGAMBMR';; } dimension: pat_id {primary_key: yes  type: string  sql: ${TABLE}.pat_id;; } dimension: pat_CPC_AGAMBMR { type: string sql: ${TABLE}.CPC_AGAMBMR ;;}}
view: pat_CPC_AGHS { derived_table: { sql: SELECT distinct id as pat_id, i.value as CPC_AGHS  FROM `cch-sandbox.fhir_dataset.Patient` pat, unnest(identifier) i, unnest(i.type.coding) c where c.code = 'CPC-AGHS';; } dimension: pat_id {primary_key: yes  type: string  sql: ${TABLE}.pat_id;; } dimension: pat_CPC_AGHS { type: string sql: ${TABLE}.CPC_AGHS ;;}}
view: pat_CCHS_ER_SPH { derived_table: { sql: SELECT distinct id as pat_id, i.value as CCHS_ER_SPH  FROM `cch-sandbox.fhir_dataset.Patient` pat, unnest(identifier) i, unnest(i.type.coding) c where c.code = 'CCHS-ER-SPH';; } dimension: pat_id {primary_key: yes  type: string  sql: ${TABLE}.pat_id;; } dimension: pat_CCHS_ER_SPH { type: string sql: ${TABLE}.CCHS_ER_SPH ;;}}
view: pat_MYCHART { derived_table: { sql: SELECT distinct id as pat_id, i.value as MYCHART  FROM `cch-sandbox.fhir_dataset.Patient` pat, unnest(identifier) i, unnest(i.type.coding) c where c.code = 'MYCHART';; } dimension: pat_id {primary_key: yes  type: string  sql: ${TABLE}.pat_id;; } dimension: pat_MYCHART { type: string sql: ${TABLE}.MYCHART ;;}}
view: pat_CPC_RFPI { derived_table: { sql: SELECT distinct id as pat_id, i.value as CPC_RFPI  FROM `cch-sandbox.fhir_dataset.Patient` pat, unnest(identifier) i, unnest(i.type.coding) c where c.code = 'CPC-RFPI';; } dimension: pat_id {primary_key: yes  type: string  sql: ${TABLE}.pat_id;; } dimension: pat_CPC_RFPI { type: string sql: ${TABLE}.CPC_RFPI ;;}}
view: pat_SELMED_EPI { derived_table: { sql: SELECT distinct id as pat_id, i.value as SELMED_EPI  FROM `cch-sandbox.fhir_dataset.Patient` pat, unnest(identifier) i, unnest(i.type.coding) c where c.code = 'SELMED-EPI';; } dimension: pat_id {primary_key: yes  type: string  sql: ${TABLE}.pat_id;; } dimension: pat_SELMED_EPI { type: string sql: ${TABLE}.SELMED_EPI ;;}}
view: pat_SELMED_FH { derived_table: { sql: SELECT distinct id as pat_id, i.value as SELMED_FH  FROM `cch-sandbox.fhir_dataset.Patient` pat, unnest(identifier) i, unnest(i.type.coding) c where c.code = 'SELMED-FH';; } dimension: pat_id {primary_key: yes  type: string  sql: ${TABLE}.pat_id;; } dimension: pat_SELMED_FH { type: string sql: ${TABLE}.SELMED_FH ;;}}

view: patient_orig {
  sql_table_name: `cch-sandbox.fhir_dataset.Patient`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: active {
    type: yesno
    sql: ${TABLE}.active ;;
  }

  dimension: address {
    hidden: yes
    sql: ${TABLE}.address ;;
  }

  dimension: animal {
    hidden: yes
    sql: ${TABLE}.animal ;;
  }

  dimension: birth_date {
    type: string
    sql: ${TABLE}.birthDate ;;
  }

  dimension: communication {
    hidden: yes
    sql: ${TABLE}.communication ;;
  }

  dimension: contact {
    hidden: yes
    sql: ${TABLE}.contact ;;
  }

  dimension: deceased {
    hidden: yes
    sql: ${TABLE}.deceased ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
  }

  dimension: general_practitioner {
    hidden: yes
    sql: ${TABLE}.generalPractitioner ;;
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

  dimension: link {
    hidden: yes
    sql: ${TABLE}.link ;;
  }

  dimension: managing_organization {
    hidden: yes
    sql: ${TABLE}.managingOrganization ;;
  }

  dimension: marital_status {
    hidden: yes
    sql: ${TABLE}.maritalStatus ;;
  }

  dimension: meta {
    hidden: yes
    sql: ${TABLE}.meta ;;
  }

  dimension: multiple_birth {
    hidden: yes
    sql: ${TABLE}.multipleBirth ;;
  }

  dimension: name {
    hidden: yes
    sql: ${TABLE}.name ;;
  }

  dimension: photo {
    hidden: yes
    sql: ${TABLE}.photo ;;
  }

  dimension: telecom {
    hidden: yes
    sql: ${TABLE}.telecom ;;
  }

  dimension: text {
    hidden: yes
    sql: ${TABLE}.text ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
