;; Diferentes COMPORTAMIENTOS
(defrule regla_1
    (juego_simbolico no)
=> (assert (no_juego_simbolico))
)

(defrule regla_2
    (impulsividad ninio_impulsivo)

=>
    (assert (impulsivo))
)

(defrule regla_3
	(atencion falta_atencion)
=>
    (assert (atencion_si_falta))
)

(defrule regla_4
    (or (trabajo no_terminado)
        (trabajo errores_graves)
    )
=>
    (assert (errores_trabajo))
)

(defrule regla_5
    (concentracion no_concentrado)
=>
    (assert (sin_concentracion))
)

(defrule regla_8
    (comprension_4_anios no)
=> (assert (no_comprende))
)

(defrule regla_9
    (conocimiento_edad_cronologica no)
=> (assert (no_conocimientos))
)

(defrule regla_10
    (etapa_renacuajo estancado)
=> (assert (renacuajo))
)

(defrule regla_11
    (or (palabras_promedio >2000)
        (palabras_promedio =2000))
=> (assert (vocabulario_reducido))
)

(defrule regla_12
    (or (retencion_informacion no)
        (retencion_informacion basica))
=> (assert (sin_retencion))
)

(defrule regla_13
    (imita no)
=> (assert (imitacion))
)

(defrule regla_14
    (or (motricidad_gruesa alterada)
        (motricidad_gruesa algo_alterada))
=> (assert (alteracion_motricidad))
)

(defrule regla_17
    (molestar si_molesta)

=> (assert (molesta_en_clase))
)

;; TDAH - COMPORTAMIENTOS
(defrule regla_6
    (impulsivo)
	(atencion_no_falta)
    (errores_trabajo)
    (sin_concentracion)

=>
    (assert (trastorno trastorno_tdah_hiperactivo_o_impulsivo))
)

(defrule regla_7
    (impulsividad ninio_no_impulsivo)
	(atencion_si_falta)
    (errores_trabajo)
    (sin_concentracion)
    (molestar no_molesta)
=>
    (assert (trastorno trastorno_tdah_falta_de_atencion))
)


;; Deficiencia cognitiva - COMPORTAMIENTOS


(defrule regla_15
    (imitacion)
	(alteracion_motricidad)
    (sin_retencion)
    (vocabulario_reducido)
    (no_conocimientos)
    (no_comprende)
    (renacuajo)
    (no_juego_simbolico)
=>
    (assert (trastorno deficiencia_cognitiva))
)

(defrule regla_16
    (trastorno ?x)
=>
    (printout t "El ninio presenta el trastorno: " ?x crlf)
)


