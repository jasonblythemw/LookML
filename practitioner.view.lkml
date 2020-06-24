view: practitioner {
  derived_table: {
    sql: select id as prac_id, name[safe_offset(0)].family as last_name, name[safe_offset(0)].given[safe_offset(0)] as first_name
      FROM `cch-sandbox.fhir_dataset.Practitioner` prac;;

  }

  dimension: prac_id {
    primary_key: yes
    type: string
    sql: ${TABLE}.prac_id ;;
  }

  dimension: last_name {
    type:  string
    sql: ${TABLE}.last_name ;;
  }

  dimension: first_name {
    type:  string
    sql: ${TABLE}.first_name ;;
  }

  dimension: CCF { type: string label: "CCF" sql: ${prac_CCF.prac_CCF} ;; }
  dimension: SER_DR_NO { type: string label: "SER-DR-NO" sql: ${prac_SER_DR_NO.prac_SER_DR_NO} ;; }
  dimension: NPI { type: string label: "NPI" sql: ${prac_NPI.prac_NPI} ;; }
  dimension: CCFDRNO { type: string label: "CCFDRNO" sql: ${prac_CCFDRNO.prac_CCFDRNO} ;; }
  dimension: ATNDRW { type: string label: "ATNDRW" sql: ${prac_ATNDRW.prac_ATNDRW} ;; }
  dimension: MEDRNO { type: string label: "MEDRNO" sql: ${prac_MEDRNO.prac_MEDRNO} ;; }
  dimension: LKDRNO { type: string label: "LKDRNO" sql: ${prac_LKDRNO.prac_LKDRNO} ;; }
  dimension: ERFDRNO { type: string label: "ERFDRNO" sql: ${prac_ERFDRNO.prac_ERFDRNO} ;; }
  dimension: AGAMBDRNO { type: string label: "AGAMBDRNO" sql: ${prac_AGAMBDRNO.prac_AGAMBDRNO} ;; }
  dimension: FVLUDRNO { type: string label: "FVLUDRNO" sql: ${prac_FVLUDRNO.prac_FVLUDRNO} ;; }
  dimension: AGOBDRNO { type: string label: "AGOBDRNO" sql: ${prac_AGOBDRNO.prac_AGOBDRNO} ;; }
  dimension: ACDRNO { type: string label: "ACDRNO" sql: ${prac_ACDRNO.prac_ACDRNO} ;; }
  dimension: MMDRNO { type: string label: "MMDRNO" sql: ${prac_MMDRNO.prac_MMDRNO} ;; }

}


view: prac_CCF { derived_table: { sql: SELECT distinct id as prac_id, i.value as CCF  FROM `cch-sandbox.fhir_dataset.Practitioner`prac, unnest(identifier) i, unnest(i.type.coding) c where c.code = 'CCF';; } dimension: prac_id {primary_key: yes  type: string  sql: ${TABLE}.prac_id;; } dimension: prac_CCF { type: string sql: ${TABLE}.CCF ;;}}
view: prac_SER_DR_NO { derived_table: { sql: SELECT distinct id as prac_id, i.value as SER_DR_NO  FROM `cch-sandbox.fhir_dataset.Practitioner`prac, unnest(identifier) i, unnest(i.type.coding) c where c.code = 'SER-DR-NO';; } dimension: prac_id {primary_key: yes  type: string  sql: ${TABLE}.prac_id;; } dimension: prac_SER_DR_NO { type: string sql: ${TABLE}.SER_DR_NO ;;}}
view: prac_NPI { derived_table: { sql: SELECT distinct id as prac_id, i.value as NPI  FROM `cch-sandbox.fhir_dataset.Practitioner`prac, unnest(identifier) i, unnest(i.type.coding) c where c.code = 'NPI';; } dimension: prac_id {primary_key: yes  type: string  sql: ${TABLE}.prac_id;; } dimension: prac_NPI { type: string sql: ${TABLE}.NPI ;;}}
view: prac_CCFDRNO { derived_table: { sql: SELECT distinct id as prac_id, i.value as CCFDRNO  FROM `cch-sandbox.fhir_dataset.Practitioner`prac, unnest(identifier) i, unnest(i.type.coding) c where c.code = 'CCFDRNO';; } dimension: prac_id {primary_key: yes  type: string  sql: ${TABLE}.prac_id;; } dimension: prac_CCFDRNO { type: string sql: ${TABLE}.CCFDRNO ;;}}
view: prac_ATNDRW { derived_table: { sql: SELECT distinct id as prac_id, i.value as ATNDRW  FROM `cch-sandbox.fhir_dataset.Practitioner`prac, unnest(identifier) i, unnest(i.type.coding) c where c.code = 'ATNDRW';; } dimension: prac_id {primary_key: yes  type: string  sql: ${TABLE}.prac_id;; } dimension: prac_ATNDRW { type: string sql: ${TABLE}.ATNDRW ;;}}
view: prac_MEDRNO { derived_table: { sql: SELECT distinct id as prac_id, i.value as MEDRNO  FROM `cch-sandbox.fhir_dataset.Practitioner`prac, unnest(identifier) i, unnest(i.type.coding) c where c.code = 'MEDRNO';; } dimension: prac_id {primary_key: yes  type: string  sql: ${TABLE}.prac_id;; } dimension: prac_MEDRNO { type: string sql: ${TABLE}.MEDRNO ;;}}
view: prac_LKDRNO { derived_table: { sql: SELECT distinct id as prac_id, i.value as LKDRNO  FROM `cch-sandbox.fhir_dataset.Practitioner`prac, unnest(identifier) i, unnest(i.type.coding) c where c.code = 'LKDRNO';; } dimension: prac_id {primary_key: yes  type: string  sql: ${TABLE}.prac_id;; } dimension: prac_LKDRNO { type: string sql: ${TABLE}.LKDRNO ;;}}
view: prac_ERFDRNO { derived_table: { sql: SELECT distinct id as prac_id, i.value as ERFDRNO  FROM `cch-sandbox.fhir_dataset.Practitioner`prac, unnest(identifier) i, unnest(i.type.coding) c where c.code = 'ERFDRNO';; } dimension: prac_id {primary_key: yes  type: string  sql: ${TABLE}.prac_id;; } dimension: prac_ERFDRNO { type: string sql: ${TABLE}.ERFDRNO ;;}}
view: prac_AGAMBDRNO { derived_table: { sql: SELECT distinct id as prac_id, i.value as AGAMBDRNO  FROM `cch-sandbox.fhir_dataset.Practitioner`prac, unnest(identifier) i, unnest(i.type.coding) c where c.code = 'AGAMBDRNO';; } dimension: prac_id {primary_key: yes  type: string  sql: ${TABLE}.prac_id;; } dimension: prac_AGAMBDRNO { type: string sql: ${TABLE}.AGAMBDRNO ;;}}
view: prac_FVLUDRNO { derived_table: { sql: SELECT distinct id as prac_id, i.value as FVLUDRNO  FROM `cch-sandbox.fhir_dataset.Practitioner`prac, unnest(identifier) i, unnest(i.type.coding) c where c.code = 'FVLUDRNO';; } dimension: prac_id {primary_key: yes  type: string  sql: ${TABLE}.prac_id;; } dimension: prac_FVLUDRNO { type: string sql: ${TABLE}.FVLUDRNO ;;}}
view: prac_AGOBDRNO { derived_table: { sql: SELECT distinct id as prac_id, i.value as AGOBDRNO  FROM `cch-sandbox.fhir_dataset.Practitioner`prac, unnest(identifier) i, unnest(i.type.coding) c where c.code = 'AGOBDRNO';; } dimension: prac_id {primary_key: yes  type: string  sql: ${TABLE}.prac_id;; } dimension: prac_AGOBDRNO { type: string sql: ${TABLE}.AGOBDRNO ;;}}
view: prac_ACDRNO { derived_table: { sql: SELECT distinct id as prac_id, i.value as ACDRNO  FROM `cch-sandbox.fhir_dataset.Practitioner`prac, unnest(identifier) i, unnest(i.type.coding) c where c.code = 'ACDRNO';; } dimension: prac_id {primary_key: yes  type: string  sql: ${TABLE}.prac_id;; } dimension: prac_ACDRNO { type: string sql: ${TABLE}.ACDRNO ;;}}
view: prac_MMDRNO { derived_table: { sql: SELECT distinct id as prac_id, i.value as MMDRNO  FROM `cch-sandbox.fhir_dataset.Practitioner`prac, unnest(identifier) i, unnest(i.type.coding) c where c.code = 'MMDRNO';; } dimension: prac_id {primary_key: yes  type: string  sql: ${TABLE}.prac_id;; } dimension: prac_MMDRNO { type: string sql: ${TABLE}.MMDRNO ;;}}
view: practitioner_orig{
  sql_table_name: `cch-sandbox.fhir_dataset.Practitioner`
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

  dimension: birth_date {
    type: string
    sql: ${TABLE}.birthDate ;;
  }

  dimension: communication {
    hidden: yes
    sql: ${TABLE}.communication ;;
  }

  dimension: gender {
    type: string
    sql: ${TABLE}.gender ;;
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

  dimension: name {
    hidden: yes
    sql: ${TABLE}.name ;;
  }

  dimension: photo {
    hidden: yes
    sql: ${TABLE}.photo ;;
  }

  dimension: qualification {
    hidden: yes
    sql: ${TABLE}.qualification ;;
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
