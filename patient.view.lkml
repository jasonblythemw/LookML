view: patient {
  derived_table: {
    sql: select p.id as pat_id from `cch-sandbox.fhir_dataset.Patient` p;;
  }
  dimension: pat_id {type: string sql: ${TABLE}.pat_id;; label: "pat_id" primary_key: yes }
  dimension: CCF {type: string label: "CCF" sql: ${CCF.CCF} ;;}
  dimension: EPI {type: string label: "EPI" sql: ${EPI.EPI} ;;}
  dimension: CCHS_ER_HCH {type: string label: "CCHS-ER-HCH" sql: ${CCHS_ER_HCH.CCHS_ER_HCH} ;;}
  dimension: CPC_AGAMBMR {type: string label: "CPC-AGAMBMR" sql: ${CPC_AGAMBMR.CPC_AGAMBMR} ;;}
  dimension: CPC_AGHS {type: string label: "CPC-AGHS" sql: ${CPC_AGHS.CPC_AGHS} ;;}
  dimension: AGMRN {type: string label: "AGMRN" sql: ${AGMRN.AGMRN} ;;}
  dimension: AGLDMRN {type: string label: "AGLDMRN" sql: ${AGLDMRN.AGLDMRN} ;;}
  dimension: SB {type: string label: "SB" sql: ${SB.SB} ;;}
  dimension: DL {type: string label: "DL" sql: ${DL.DL} ;;}
  dimension: AVMRN {type: string label: "AVMRN" sql: ${AVMRN.AVMRN} ;;}
  dimension: CCHS_ER_SPH {type: string label: "CCHS-ER-SPH" sql: ${CCHS_ER_SPH.CCHS_ER_SPH} ;;}
  dimension: FLA_CCF {type: string label: "FLA-CCF" sql: ${FLA_CCF.FLA_CCF} ;;}
  dimension: SELMED_EPI {type: string label: "SELMED-EPI" sql: ${SELMED_EPI.SELMED_EPI} ;;}
  dimension: SELMED_FH {type: string label: "SELMED-FH" sql: ${SELMED_FH.SELMED_FH} ;;}
  dimension: FVMRN {type: string label: "FVMRN" sql: ${FVMRN.FVMRN} ;;}
  dimension: MEMRN {type: string label: "MEMRN" sql: ${MEMRN.MEMRN} ;;}
  dimension: LUMRN {type: string label: "LUMRN" sql: ${LUMRN.LUMRN} ;;}
  dimension: CCHS_WR_MMH {type: string label: "CCHS-WR-MMH" sql: ${CCHS_WR_MMH.CCHS_WR_MMH} ;;}
  dimension: CPC_RFPI {type: string label: "CPC-RFPI" sql: ${CPC_RFPI.CPC_RFPI} ;;}
  dimension: IRISREG {type: string label: "IRISREG" sql: ${IRISREG.IRISREG} ;;}
  dimension: CCHS_ER_EUH {type: string label: "CCHS-ER-EUH" sql: ${CCHS_ER_EUH.CCHS_ER_EUH} ;;}
  dimension: MYCHART {type: string label: "MYCHART" sql: ${MYCHART.MYCHART} ;;}
  #dimension: CPC_GLHK {type: string label: "CPC-GLHK" sql: ${CPC_GLHK.CPC_GLHK} ;;}
  #dimension: ACMRN {type: string label: "ACMRN" sql: ${ACMRN.ACMRN} ;;}
  #dimension: AMERWELL {type: string label: "AMERWELL" sql: ${AMERWELL.AMERWELL} ;;}
  #dimension: CPC_GLIN {type: string label: "CPC-GLIN" sql: ${CPC_GLIN.CPC_GLIN} ;;}
}

view: CCF {
  derived_table: {
    sql: SELECT distinct id as pat_id, i.value as value FROM `cch-sandbox.fhir_dataset.Patient` pat, unnest(identifier) i, unnest(i.type.coding) c where c.code = 'CCF';;
  }
  dimension: pat_id {type: string sql: ${TABLE}.pat_id;; label: "pat_id" primary_key: yes }
  dimension: CCF {type: string sql: ${TABLE}.value;; label: "CCF" }
}

view: EPI {
  derived_table: {
    sql: SELECT distinct id as pat_id, i.value as value FROM `cch-sandbox.fhir_dataset.Patient` pat, unnest(identifier) i, unnest(i.type.coding) c where c.code = 'EPI';;
  }
  dimension: pat_id {type: string sql: ${TABLE}.pat_id;; label: "pat_id" primary_key: yes }
  dimension: EPI {type: string sql: ${TABLE}.value;; label: "EPI" }
}

view: CCHS_ER_HCH {
  derived_table: {
    sql: SELECT distinct id as pat_id, i.value as value FROM `cch-sandbox.fhir_dataset.Patient` pat, unnest(identifier) i, unnest(i.type.coding) c where c.code = 'CCHS-ER-HCH';;
  }
  dimension: pat_id {type: string sql: ${TABLE}.pat_id;; label: "pat_id" primary_key: yes }
  dimension: CCHS_ER_HCH {type: string sql: ${TABLE}.value;; label: "CCHS-ER-HCH" }
}

view: CPC_AGAMBMR {
  derived_table: {
    sql: SELECT distinct id as pat_id, i.value as value FROM `cch-sandbox.fhir_dataset.Patient` pat, unnest(identifier) i, unnest(i.type.coding) c where c.code = 'CPC-AGAMBMR';;
  }
  dimension: pat_id {type: string sql: ${TABLE}.pat_id;; label: "pat_id" primary_key: yes }
  dimension: CPC_AGAMBMR {type: string sql: ${TABLE}.value;; label: "CPC-AGAMBMR" }
}

view: CPC_AGHS {
  derived_table: {
    sql: SELECT distinct id as pat_id, i.value as value FROM `cch-sandbox.fhir_dataset.Patient` pat, unnest(identifier) i, unnest(i.type.coding) c where c.code = 'CPC-AGHS';;
  }
  dimension: pat_id {type: string sql: ${TABLE}.pat_id;; label: "pat_id" primary_key: yes }
  dimension: CPC_AGHS {type: string sql: ${TABLE}.value;; label: "CPC-AGHS" }
}

view: AGMRN {
  derived_table: {
    sql: SELECT distinct id as pat_id, i.value as value FROM `cch-sandbox.fhir_dataset.Patient` pat, unnest(identifier) i, unnest(i.type.coding) c where c.code = 'AGMRN';;
  }
  dimension: pat_id {type: string sql: ${TABLE}.pat_id;; label: "pat_id" primary_key: yes }
  dimension: AGMRN {type: string sql: ${TABLE}.value;; label: "AGMRN" }
}

view: AGLDMRN {
  derived_table: {
    sql: SELECT distinct id as pat_id, i.value as value FROM `cch-sandbox.fhir_dataset.Patient` pat, unnest(identifier) i, unnest(i.type.coding) c where c.code = 'AGLDMRN';;
  }
  dimension: pat_id {type: string sql: ${TABLE}.pat_id;; label: "pat_id" primary_key: yes }
  dimension: AGLDMRN {type: string sql: ${TABLE}.value;; label: "AGLDMRN" }
}

view: SB {
  derived_table: {
    sql: SELECT distinct id as pat_id, i.value as value FROM `cch-sandbox.fhir_dataset.Patient` pat, unnest(identifier) i, unnest(i.type.coding) c where c.code = 'SB';;
  }
  dimension: pat_id {type: string sql: ${TABLE}.pat_id;; label: "pat_id" primary_key: yes }
  dimension: SB {type: string sql: ${TABLE}.value;; label: "SB" }
}

view: DL {
  derived_table: {
    sql: SELECT distinct id as pat_id, i.value as value FROM `cch-sandbox.fhir_dataset.Patient` pat, unnest(identifier) i, unnest(i.type.coding) c where c.code = 'DL';;
  }
  dimension: pat_id {type: string sql: ${TABLE}.pat_id;; label: "pat_id" primary_key: yes }
  dimension: DL {type: string sql: ${TABLE}.value;; label: "DL" }
}

view: AVMRN {
  derived_table: {
    sql: SELECT distinct id as pat_id, i.value as value FROM `cch-sandbox.fhir_dataset.Patient` pat, unnest(identifier) i, unnest(i.type.coding) c where c.code = 'AVMRN';;
  }
  dimension: pat_id {type: string sql: ${TABLE}.pat_id;; label: "pat_id" primary_key: yes }
  dimension: AVMRN {type: string sql: ${TABLE}.value;; label: "AVMRN" }
}

view: CCHS_ER_SPH {
  derived_table: {
    sql: SELECT distinct id as pat_id, i.value as value FROM `cch-sandbox.fhir_dataset.Patient` pat, unnest(identifier) i, unnest(i.type.coding) c where c.code = 'CCHS-ER-SPH';;
  }
  dimension: pat_id {type: string sql: ${TABLE}.pat_id;; label: "pat_id" primary_key: yes }
  dimension: CCHS_ER_SPH {type: string sql: ${TABLE}.value;; label: "CCHS-ER-SPH" }
}

view: FLA_CCF {
  derived_table: {
    sql: SELECT distinct id as pat_id, i.value as value FROM `cch-sandbox.fhir_dataset.Patient` pat, unnest(identifier) i, unnest(i.type.coding) c where c.code = 'FLA-CCF';;
  }
  dimension: pat_id {type: string sql: ${TABLE}.pat_id;; label: "pat_id" primary_key: yes }
  dimension: FLA_CCF {type: string sql: ${TABLE}.value;; label: "FLA-CCF" }
}

view: SELMED_EPI {
  derived_table: {
    sql: SELECT distinct id as pat_id, i.value as value FROM `cch-sandbox.fhir_dataset.Patient` pat, unnest(identifier) i, unnest(i.type.coding) c where c.code = 'SELMED-EPI';;
  }
  dimension: pat_id {type: string sql: ${TABLE}.pat_id;; label: "pat_id" primary_key: yes }
  dimension: SELMED_EPI {type: string sql: ${TABLE}.value;; label: "SELMED-EPI" }
}

view: SELMED_FH {
  derived_table: {
    sql: SELECT distinct id as pat_id, i.value as value FROM `cch-sandbox.fhir_dataset.Patient` pat, unnest(identifier) i, unnest(i.type.coding) c where c.code = 'SELMED-FH';;
  }
  dimension: pat_id {type: string sql: ${TABLE}.pat_id;; label: "pat_id" primary_key: yes }
  dimension: SELMED_FH {type: string sql: ${TABLE}.value;; label: "SELMED-FH" }
}

view: FVMRN {
  derived_table: {
    sql: SELECT distinct id as pat_id, i.value as value FROM `cch-sandbox.fhir_dataset.Patient` pat, unnest(identifier) i, unnest(i.type.coding) c where c.code = 'FVMRN';;
  }
  dimension: pat_id {type: string sql: ${TABLE}.pat_id;; label: "pat_id" primary_key: yes }
  dimension: FVMRN {type: string sql: ${TABLE}.value;; label: "FVMRN" }
}

view: MEMRN {
  derived_table: {
    sql: SELECT distinct id as pat_id, i.value as value FROM `cch-sandbox.fhir_dataset.Patient` pat, unnest(identifier) i, unnest(i.type.coding) c where c.code = 'MEMRN';;
  }
  dimension: pat_id {type: string sql: ${TABLE}.pat_id;; label: "pat_id" primary_key: yes }
  dimension: MEMRN {type: string sql: ${TABLE}.value;; label: "MEMRN" }
}

view: LUMRN {
  derived_table: {
    sql: SELECT distinct id as pat_id, i.value as value FROM `cch-sandbox.fhir_dataset.Patient` pat, unnest(identifier) i, unnest(i.type.coding) c where c.code = 'LUMRN';;
  }
  dimension: pat_id {type: string sql: ${TABLE}.pat_id;; label: "pat_id" primary_key: yes }
  dimension: LUMRN {type: string sql: ${TABLE}.value;; label: "LUMRN" }
}

view: CCHS_WR_MMH {
  derived_table: {
    sql: SELECT distinct id as pat_id, i.value as value FROM `cch-sandbox.fhir_dataset.Patient` pat, unnest(identifier) i, unnest(i.type.coding) c where c.code = 'CCHS-WR-MMH';;
  }
  dimension: pat_id {type: string sql: ${TABLE}.pat_id;; label: "pat_id" primary_key: yes }
  dimension: CCHS_WR_MMH {type: string sql: ${TABLE}.value;; label: "CCHS-WR-MMH" }
}

view: CPC_RFPI {
  derived_table: {
    sql: SELECT distinct id as pat_id, i.value as value FROM `cch-sandbox.fhir_dataset.Patient` pat, unnest(identifier) i, unnest(i.type.coding) c where c.code = 'CPC-RFPI';;
  }
  dimension: pat_id {type: string sql: ${TABLE}.pat_id;; label: "pat_id" primary_key: yes }
  dimension: CPC_RFPI {type: string sql: ${TABLE}.value;; label: "CPC-RFPI" }
}

view: IRISREG {
  derived_table: {
    sql: SELECT distinct id as pat_id, i.value as value FROM `cch-sandbox.fhir_dataset.Patient` pat, unnest(identifier) i, unnest(i.type.coding) c where c.code = 'IRISREG';;
  }
  dimension: pat_id {type: string sql: ${TABLE}.pat_id;; label: "pat_id" primary_key: yes }
  dimension: IRISREG {type: string sql: ${TABLE}.value;; label: "IRISREG" }
}

view: CCHS_ER_EUH {
  derived_table: {
    sql: SELECT distinct id as pat_id, i.value as value FROM `cch-sandbox.fhir_dataset.Patient` pat, unnest(identifier) i, unnest(i.type.coding) c where c.code = 'CCHS-ER-EUH';;
  }
  dimension: pat_id {type: string sql: ${TABLE}.pat_id;; label: "pat_id" primary_key: yes }
  dimension: CCHS_ER_EUH {type: string sql: ${TABLE}.value;; label: "CCHS-ER-EUH" }
}

view: MYCHART {
  derived_table: {
    sql: SELECT distinct id as pat_id, i.value as value FROM `cch-sandbox.fhir_dataset.Patient` pat, unnest(identifier) i, unnest(i.type.coding) c where c.code = 'MYCHART';;
  }
  dimension: pat_id {type: string sql: ${TABLE}.pat_id;; label: "pat_id" primary_key: yes }
  dimension: MYCHART {type: string sql: ${TABLE}.value;; label: "MYCHART" }
}

view: CPC_GLHK {
  derived_table: {
    sql: SELECT distinct id as pat_id, i.value as value FROM `cch-sandbox.fhir_dataset.Patient` pat, unnest(identifier) i, unnest(i.type.coding) c where c.code = 'CPC-GLHK';;
  }
  dimension: pat_id {type: string sql: ${TABLE}.pat_id;; label: "pat_id" primary_key: yes }
  dimension: CPC_GLHK {type: string sql: ${TABLE}.value;; label: "CPC-GLHK" }
}

view: ACMRN {
  derived_table: {
    sql: SELECT distinct id as pat_id, i.value as value FROM `cch-sandbox.fhir_dataset.Patient` pat, unnest(identifier) i, unnest(i.type.coding) c where c.code = 'ACMRN';;
  }
  dimension: pat_id {type: string sql: ${TABLE}.pat_id;; label: "pat_id" primary_key: yes }
  dimension: ACMRN {type: string sql: ${TABLE}.value;; label: "ACMRN" }
}

view: AMERWELL {
  derived_table: {
    sql: SELECT distinct id as pat_id, i.value as value FROM `cch-sandbox.fhir_dataset.Patient` pat, unnest(identifier) i, unnest(i.type.coding) c where c.code = 'AMERWELL';;
  }
  dimension: pat_id {type: string sql: ${TABLE}.pat_id;; label: "pat_id" primary_key: yes }
  dimension: AMERWELL {type: string sql: ${TABLE}.value;; label: "AMERWELL" }
}

view: CPC_GLIN {
  derived_table: {
    sql: SELECT distinct id as pat_id, i.value as value FROM `cch-sandbox.fhir_dataset.Patient` pat, unnest(identifier) i, unnest(i.type.coding) c where c.code = 'CPC-GLIN';;
  }
  dimension: pat_id {type: string sql: ${TABLE}.pat_id;; label: "pat_id" primary_key: yes }
  dimension: CPC_GLIN {type: string sql: ${TABLE}.value;; label: "CPC-GLIN" }
}
