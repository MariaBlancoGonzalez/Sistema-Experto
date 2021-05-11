;; TDAH 
(defrule regla_1
    (creencia tdah)
    (impulsos impulsivo)
=>
    (assert(comprobar impulsividad))
)

(defrule regla_2
    (creencia tdah)
    (impulsos no_impulsivo)
=>
    (assert(comprobar no_impulsividad))
)

(defrule regla_3
    (comprobar no_impulsividad)
    (atencion si)

=> (assert(realizacion tareas))
)

(defrule regla_4
    (realizacion tareas)
    (tareas realizadas_sin_probolema)

=> (assert(trastorno esta_bien))

)

(defrule regla_5
    (realizacion tareas)
    (tareas realizadas_con_probolema)

=> (assert(consejo vigilar_al_ninio_posible_TDAH_tipo_falta_atencion))
)

(defrule regla_6
    (comprobar no_impulsividad)
    (atencion no)

=> (assert(molesta molesta_en_clase))
)

(defrule regla_7
    (molesta molesta_en_clase)
    (molestar si)

=> (assert(realizacion tareas_tdah_fa))
)

(defrule regla_8
    (realizacion tareas_tdah_fa)
    (tareas realizadas_con_probolema)
=> (assert(trastorno posible_TDAH_falta_atencion))
)

(defrule regla_9
    (realizacion tareas_tdah_fa)
    (tareas realizadas_sin_probolema)
=> (assert(consejo vigilar_al_ninio_posible_TDAH_tipo_falta_atencion))
)

(defrule regla_10
    (molesta molesta_en_clase)
    (molestar no)

=> (assert(trastorno esta_bien))
)

;;;;;;;;;;;;;;;;;;;;;; TDAH POR FALTA DE ATENCION TERMINADO ;;;;;;;;;;;;;;;;;;;


(defrule regla_11
    (comprobar impulsividad)
    (atencion si)
=> (assert(realizacion tareas_combinado))
)

(defrule regla_12
    (comprobar impulsividad)
    (atencion no)
=> (assert(comprobar permanece_sentado))
)

(defrule regla_13
    (realizacion tareas_combinado)
    (tareas realizadas_sin_probolema)
=> (assert(consejo vigilar_al_ninio_posible_TDAH_tipo_combinado))
)

(defrule regla_14
    (realizacion tareas_combinado)
    (tareas realizadas_con_probolema)
=> (assert(comprobar seguir_instrucciones))
)

(defrule regla_15
    (comprobar seguir_instrucciones)
    (intrucciones seguidas_sin_problema)
=> (assert(consejo vigilar_al_ninio_posible_TDAH_tipo_combinado))
)

(defrule regla_16
    (comprobar seguir_instrucciones)
    (intrucciones no_seguidas)
=> (assert(trastorno posible_TDAH_combinado))
)

(defrule regla_17   
    (comprobar permanece_sentado)
    (sentado si)
=> (assert(comprobar atencion_combinado))
)

(defrule regla_18   
    (comprobar permanece_sentado)
    (sentado no)
=> (assert(trastorno posible_TDAH_hiperactivo))
)

(defrule regla_19
    (comprobar atencion_combinado)
    (atencion si)
=> (assert(consejo vigilar_al_ninio_posible_TDAH_tipo_combinado))
)

(defrule regla_20
    (comprobar atencion_combinado)
    (atencion no)
=> (assert(comprobar tareas_combinado))
)

(defrule regla_21
    (comprobar tareas_combinado)
    (tareas realizadas_con_probolema)
=> (assert(trastorno posible_TDAH_hiperactivo))
)

(defrule regla_22
    (comprobar tareas_combinado)
    (tareas realizadas_sin_probolema)
=> (assert(consejo vigilar_al_ninio_posible_TDAH_tipo_combinado))
)


(defrule tipo_trastorno
    (trastorno ?x)
=>
    (printout t "El ninio: " ?x crlf)
)


(defrule dando_consejo
    (consejo ?x)
=>
    (printout t "Vijilar de un posible caso de: " ?x crlf)
)
