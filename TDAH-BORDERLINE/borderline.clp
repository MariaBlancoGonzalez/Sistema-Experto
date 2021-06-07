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
    (comprobar emociones_irregulares4)
    (emociones irregulares)
=> 
    (assert(consejo "vigilar mucho por posible borderline avanzado"))
)

(defrule regla_42
    (comprobar emociones_irregulares4)
    (emociones no_irregulares)
=> 
    (assert(derivar AL))
)

(defrule regla_43
    (comprobar emociones_irregulares5)
    (emociones irregulares)
=> 
    (assert(derivar AL))
)

(defrule regla_44
    (comprobar emociones_irregulares5)
    (emociones no_irregulares)
=> 
    (assert(derivar AL))
)


(defrule tipo_derivacion
    (derivar ?x)
=>
    (printout t "Derivar a: " ?x crlf)
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