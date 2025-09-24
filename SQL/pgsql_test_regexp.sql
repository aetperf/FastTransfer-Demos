SELECT  cha_id
, cha_libelle
, cha_ouvrage_fk
, cha_adresse
, cha_commune_fk
, cha_cre_date
, cha_createur
, uti_cre_user
, uti_cre_dt
, uti_maj_user
, uti_maj_dt
, cha_version
, cha_date_debut
, cha_date_fin
, cha_date_debut_preparation
, cha_date_fin_preparation
, cha_id_source
, cha_agence_fk
, cha_preparateur_nni_fk
, cha_temps_total_preparation
, cha_temps_restant_preparation
, round(cha_latitude, 5) AS cha_latitude
, round(cha_longitude, 5) AS cha_longitude
, cha_qualite_geocodage
, cha_date_terminaison
, cha_anonyme
, cha_complement_adresse
, cha_last_geocode_request_dt
, cha_emplacement_code
, cha_id_di_parente
, cha_type_travail_gmaops
, cha_type_domaine_gmaops
, SUBSTRING(cha_raison_annulation, 1, 50) AS cha_raison_annulation
, cha_suppression_logique
, SUBSTRING(cha_sous_activite_fk, 1, 50) AS cha_sous_activite_fk
, SUBSTRING(cha_localisation_type, 1, 50) AS cha_localisation_type
, round(cha_latitude_manuelle, 5) AS cha_latitude_manuelle
, round(cha_longitude_manuelle, 5) AS cha_longitude_manuelle
, SUBSTRING(cha_base_gmaops, 1, 50) AS cha_base_gmaops
, cha_programmation_terminee_gmaops
, SUBSTRING(cha_statut, 1, 50) AS cha_statut
, SUBSTRING(regexp_replace(cha_description_travaux , '<[^>]+>', '', 'gi'), 1, 4000) AS cha_description_travaux
, SUBSTRING(cha_si_createur, 1, 50) AS cha_si_createur
, SUBSTRING(cha_type, 1, 74) AS cha_type
, SUBSTRING(cha_chantier_pere_id, 1, 50) AS cha_chantier_pere_id
, cha_depart_hta_fk
, cha_poste_source_fk
, SUBSTRING(cha_prm, 1, 50) AS cha_prm
, cha_rsi
, cha_rsi_date
, cha_niti
, cha_nombre_client
, cha_ps
, cha_pst
, cha_temps_coupure
, round(cha_valorisation_end, 5) AS cha_valorisation_end
, cha_cout_chantier
, cha_date_butoir_preparation
, cha_modele_chantier_fk
, cha_temps_ref_preparation
, SUBSTRING(cha_pilote_rip_nni_fk, 1, 12) AS cha_pilote_rip_nni_fk
, cha_date_archivage
FROM public.t_chantier