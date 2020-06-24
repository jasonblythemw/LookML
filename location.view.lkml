view: enc_level {
  derived_table: {
    sql: SELECT enc.id as enc_id, locs.name as level FROM `cch-sandbox.fhir_dataset.Encounter` enc, unnest(location) l
            inner join (SELECT id, name, partOf.locationid, pt.code
              FROM `cch-sandbox.fhir_dataset.Location`, unnest(physicalType.coding) pt) locs
              on l.location.locationid = locs.id
              WHERE locs.code = 'lvl'
              and locs.name is not null;;
  }

  dimension: enc_id {
    primary_key: yes
    type: string
    sql:  ${TABLE}.enc_id ;;
  }

  dimension: level {
    type: string
    sql:  ${TABLE}.level ;;
  }

}

view: enc_building {
  derived_table: {
    sql: SELECT enc.id as enc_id, locs.name as  building FROM `cch-sandbox.fhir_dataset.Encounter` enc, unnest(location) l
      inner join (SELECT id, name, partOf.locationid, pt.code
        FROM `cch-sandbox.fhir_dataset.Location`, unnest(physicalType.coding) pt) locs
        on l.location.locationid = locs.id
        WHERE locs.code = 'bu'
        and locs.name is not null;;
  }

  dimension: enc_id {
    primary_key: yes
    type: string
    sql:  ${TABLE}.enc_id ;;
  }

  dimension: building {
    type: string
    sql:  ${TABLE}.building ;;
  }

}

view: enc_bed {
  derived_table: {
    sql: SELECT enc.id as enc_id, locs.name as bed FROM `cch-sandbox.fhir_dataset.Encounter` enc, unnest(location) l
          inner join (SELECT id, name, partOf.locationid, pt.code
            FROM `cch-sandbox.fhir_dataset.Location`, unnest(physicalType.coding) pt) locs
            on l.location.locationid = locs.id
            WHERE locs.code = 'bd'
            and locs.name is not null;;
  }

  dimension: enc_id {
    primary_key: yes
    type: string
    sql:  ${TABLE}.enc_id ;;
  }

  dimension: bed {
    type: string
    sql:  ${TABLE}.bed ;;
  }

}

view: enc_room {
  derived_table: {
    sql: SELECT enc.id as enc_id, locs.name as room FROM `cch-sandbox.fhir_dataset.Encounter` enc, unnest(location) l
              inner join (SELECT id, name, partOf.locationid, pt.code
                FROM `cch-sandbox.fhir_dataset.Location`, unnest(physicalType.coding) pt) locs
                on l.location.locationid = locs.id
                WHERE locs.code = 'ro'
                and locs.name is not null;;
  }

  dimension: enc_id {
    primary_key: yes
    type: string
    sql:  ${TABLE}.enc_id ;;
  }

  dimension: room {
    type: string
    sql:  ${TABLE}.room ;;
  }

}

view: enc_site {
  derived_table: {
    sql: SELECT enc.id as enc_id, locs.name as site FROM `cch-sandbox.fhir_dataset.Encounter` enc, unnest(location) l
        inner join (SELECT id, name, partOf.locationid, pt.code
          FROM `cch-sandbox.fhir_dataset.Location`, unnest(physicalType.coding) pt) locs
          on l.location.locationid = locs.id
          WHERE locs.code = 'si'
          and locs.name is not null;;
  }

  dimension: enc_id {
    primary_key: yes
    type: string
    sql:  ${TABLE}.enc_id ;;
  }

  dimension: site {
    type: string
    sql:  ${TABLE}.site ;;
  }

}

view: location {
  sql_table_name: `cch-sandbox.fhir_dataset.Location`
    ;;
  drill_fields: [id]

  dimension: id {
    primary_key: yes
    type: string
    sql: ${TABLE}.id ;;
  }

  dimension: address {
    hidden: yes
    sql: ${TABLE}.address ;;
  }

  dimension: alias {
    type: string
    sql: ${TABLE}.alias ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}.description ;;
  }

  dimension: endpoint {
    hidden: yes
    sql: ${TABLE}.endpoint ;;
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

  dimension: managing_organization {
    hidden: yes
    sql: ${TABLE}.managingOrganization ;;
  }

  dimension: meta {
    hidden: yes
    sql: ${TABLE}.meta ;;
  }

  dimension: mode {
    type: string
    sql: ${TABLE}.mode ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.name ;;
  }

  dimension: operational_status {
    hidden: yes
    sql: ${TABLE}.operationalStatus ;;
  }

  dimension: part_of {
    hidden: yes
    sql: ${TABLE}.partOf ;;
  }

  dimension: physical_type {
    hidden: yes
    sql: ${TABLE}.physicalType ;;
  }

  dimension: position {
    hidden: yes
    sql: ${TABLE}.position ;;
  }

  dimension: status {
    type: string
    sql: ${TABLE}.status ;;
  }

  dimension: telecom {
    hidden: yes
    sql: ${TABLE}.telecom ;;
  }

  dimension: text {
    hidden: yes
    sql: ${TABLE}.text ;;
  }

  dimension: type {
    hidden: yes
    sql: ${TABLE}.type ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
