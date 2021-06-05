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
    (assert(derivar PT))
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


;; Borderline

(defrule regla_23
    (creencia borderline)
    (lenguaje expresivo_alterado)
=>
    (assert(comprobar resolucion_problemas_sencillos))
)

(defrule regla_24
    (creencia borderline)
    (lenguaje expresivo_comprensivo_alterado)
=>
    (assert(comprobar resolucion_problemas_exp_comp))
)

(defrule regla_25
    (comprobar resolucion_problemas_sencillos)
    (tareas realizadas_sin_problema)
=>
    (assert(derivar AL_especialista_lenguaje))
)


(defrule regla_26
    (comprobar resolucion_problemas_sencillos)
    (tareas realizadas_con_problema)
=>
    (assert(comprobar alteracion_psicomotriz))
)

(defrule regla_27
    (comprobar alteracion_psicomotriz)
    (alteracion_psicomotriz si)
=>
    (assert(comprobar emociones_irregulares))
)

(defrule regla_28
    (comprobar alteracion_psicomotriz)
    (alteracion_psicomotriz no)
=>
    (assert(emociones irregulares_no_psicomotricidad_alterada))
)

(defrule regla_29
    (comprobar emociones_irregulares)
    (emociones irregulares)
=> 
    (assert(trastorno borderline))
)

(defrule regla_30
    (comprobar emociones_irregulares)
    (emociones no_irregulares)
=> 
    (assert(trastorno borderline))
)

(defrule regla_31 
    (emociones irregulares_no_psicomotricidad_alterada)
    (emociones irregulares)
=>
    (assert(trastorno retraso_madurativo))
)
    
(defrule regla_32 
    (emociones irregulares_no_psicomotricidad_alterada)
    (emociones no_irregulares)
=>
    (assert(consejo vigilar_al_ninio_posible_derivacion_a_AL))
)

;; Expresivo, comprensivo, problemas, psicomotriz
(defrule regla_33
    (comprobar resolucion_problemas_exp_comp)
    (tareas realizadas_con_problema)
=> 
    (assert(comprobar alteracion_psicomotriz_2))
)

(defrule regla_34
    (comprobar resolucion_problemas_exp_comp)
    (tareas realizadas_sin_problema)
=> 
    (assert(comprobar alteracion_psicomotriz_3))
)


(defrule regla_35
    (comprobar alteracion_psicomotriz_2)
    (alteracion_psicomotriz si)

=> 
    (assert(comprobar emociones_irregulares2))
)

(defrule regla_36
    (comprobar alteracion_psicomotriz_2)
    (alteracion_psicomotriz no)
=>
    (assert(comprobar emociones_irregulares2))
)

(defrule regla_37
    (comprobar emociones_irregulares2)
    (emociones irregulares)
=>  
    (assert(trastorno borderline))
)

(defrule regla_38
    (comprobar emociones_irregulares2)
    (emociones no_irregulares)
=>  
    (assert(trastorno borderline))
)

(defrule regla_39
    (comprobar alteracion_psicomotriz_3)
    (alteracion_psicomotriz si)
=> 
    (assert(comprobar emociones_irregulares_5))
)

(defrule regla_40
    (comprobar alteracion_psicomotriz_3)
    (alteracion_psicomotriz no)
=> 
    (assert(comprobar emociones_irregulares_4))
)


(defrule regla_41
    (comprobar emociones_irregulares_4)
    (emociones irregulares)
=> 
    (assert(consejo "borderline avanzado, VIGILAR MUCHO"))
)

(defrule regla_42
    (comprobar emociones_irregulares_4)
    (emociones no_irregulares)
=> 
    (assert(derivar AL))
)

(defrule regla_43
    (comprobar emociones_irregulares_5)
    (emociones irregulares)
=> 
    (assert(derivar AL))
)

(defrule regla_44
    (comprobar emociones_irregulares_5)
    (emociones no_irregulares)
=> 
    (assert(derivar AL))
)

;;;;;;;;;;;;; TEA ;;;;;;;;;;;;;;;;;
(defrule regla_45
    (creencia tea)
    (lenguaje hace_uso_lenguaje)
=> 
    (assert(comprobar flexibilidad_cognitiva))
)

(defrule regla_46
    (creencia tea)
    (lenguaje no_hace_uso_lenguaje)
=> 
    (assert(comprobar flexibilidad_cognitiva_2))
)

(defrule regla_47
    (comprobar flexibilidad_cognitiva)
    (flexibilidad_cognitiva no_alterada)
=>
    (assert(comprobar interaccion_entorno))
)

(defrule regla_48
    (comprobar flexibilidad_cognitiva)
    (flexibilidad_cognitiva alterada)
=>
    (assert(consejo "puede ser"))
)

(defrule regla_49
    (comprobar interaccion_entorno)
    (interaccion_entorno interacciona)
=>
    (assert(comprobar mirada_perdida))
)

(defrule regla_50
    (comprobar interaccion_entorno)
    (interaccion_entorno no_interacciona)
=> 
    (assert(comprobar mirada_perdida_2))
)

(defrule regla_51
    (comprobar mirada_perdida)
    (mirada_perdida si)
=> 
    (assert(comprobar reaccion_cambio_rutina))
)

(defrule regla_52
    (comprobar mirada_perdida)
    (mirada_perdida no)
=> 
    (assert(comprobar emociones_irregulares_6))
)

(defrule regla_53 
    (comprobar reaccion_cambio_rutina)
    (cambio_rutina buena_reaccion)
=>
    (assert(derivar AL))
)

(defrule regla_54 
    (comprobar reaccion_cambio_rutina)
    (cambio_rutina mala_reaccion)
=>
    (assert(consejo "muy posible caso de tea"))
)

(defrule regla_55
    (comprobar emociones_irregulares_6)
    (emociones irregulares)
=>
    (assert(derivar AL))
)

(defrule regla_56
    (comprobar emociones_irregulares_6)
    (emociones no_irregulares)
=>
    (assert(trastorno "niño no trastorno tea"))
)

(defrule regla_57
    (comprobar mirada_perdida_2)
    (mirada_perdida si)
=>
    (assert(comprobar emociones_irregulares_7))
)

(defrule regla_58
    (comprobar mirada_perdida_2)
    (mirada_perdida no)
=>
    (assert(comprobar emociones_irregulares_8))
)

(defrule regla_59
    (comprobar emociones_irregulares_7)
    (emociones irregulares)
=>
    (assert(comprobar empatia))
)

(defrule regla_60
    (comprobar emociones_irregulares_7)
    (emociones no_irregulares)
=>
    (assert(trastorno "el niño esta bien"))
)

(defrule regla_61
    (comprobar empatia)
    (empatia si_tiene)
=> 
    (assert(consejo "vigilar por posible caso tea"))
)

(defrule regla_62
    (comprobar empatia)
    (empatia no_tiene)
=>
    (assert(derivar AL))
)

(defrule regla_63
    (comprobar emociones_irregulares_8)
    (emociones irregulares)
=>
    (assert(consejo "vigilar por posible caso de tea"))
)

(defrule regla_64
    (comprobar emociones_irregulares_8)
    (emociones no_irregulares)
=>
    (assert(trastorno "vigilar por posible caso de tea"))
)

(defrule regla_65
    (comprobar flexibilidad_cognitiva_2)
    (flexibilidad_cognitiva no_alterada)
=>
    (assert(comprobar interaccion_entorno_2))
)

(defrule regla_66
    (comprobar flexibilidad_cognitiva_2)
    (flexibilidad_cognitiva alterada)
=>
    (assert(trastorno "Posible caso de TEA"))
)


(defrule regla_67
    (comprobar interaccion_entorno_2)
    (interaccion_entorno no_interacciona)
=> 
    (assert(comprobar mirada_perdida_3))
)

(defrule regla_68
    (comprobar interaccion_entorno_2)
    (interaccion_entorno interacciona)
=> 
    (assert(trastorno "no presenta comportamientos típicos de niños con TEA"))
)

(defrule regla_69
    (comprobar mirada_perdida_3)
    (mirada_perdida si)
=>
    (assert(comprobar emociones_irregulares_9))
)

(defrule regla_70
    (comprobar mirada_perdida_3)
    (mirada_perdida no)
=>
    (assert(consejo "TEA"))
)

(defrule regla_71
    (comprobar emociones_irregulares_9)
    (emociones irregulares)
=>
    (assert(trastorno "presenta comportamientos típicos de niños con TEA"))
    (assert(derivar "PT"))
)

(defrule regla_72
    (comprobar emociones_irregulares_9)
    (emociones no_irregulares)
=>
    (assert(consejo "TEA"))
    (assert(derivar "AL"))
)

;;;;; DERIVACIONES Y CONSEJOS ;;;;;;

(defrule tipo_derivacion
    (derivar ?x)
=>
    (printout t "Derivar a: " ?x crlf)
)

(defrule tipo_trastorno
    (trastorno ?x)
=>
    (printout t "El niño: " ?x crlf)
)

(defrule dando_consejo
    (consejo ?x)
=>
    (printout t "Vigilar de un posible caso de: " ?x crlf)
)