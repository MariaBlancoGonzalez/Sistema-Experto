(deftemplate lenguaje
    1 100
    (
        (bajo (1 1) (34 1) (35 0))
        (medio (34 0) (67 1) (68 0))
        (alto (67 0) (68 1) (99 1))
    )
)

(deftemplate flex_cognitiva
    0 9
    (
        (nada (0 1) (3 0))
        (algo (2.5 0) (3.5 1) (4.5 0))
        (alta (4.5 0) (6 1) (9 1))
    )
)

(deftemplate probabilidadTEA
    0 10
    (
        (muy_baja (0 1) (2 0))
        (baja (1 0) (2 1) (3 0))
        (media (2 0) (4 1) (6 0))
        (alta (5 0) (6 1) (7 1) (8 0))
        (muy_alta (7 0) (8 1) (10 1))
    )
)

(defrule regla_1
    (lenguaje bajo)
    (flex_cognitiva algo)
    =>
    (assert (probabilidadTEA baja))
)

(defrule regla_2
    (lenguaje bajo)
    (flex_cognitiva nada)
    =>
    (assert (probabilidadTEA muy_baja))
)

(defrule regla_3
    (lenguaje bajo)
    (flex_cognitiva alta)
    =>
    (assert (probabilidadTEA media))
)

(defrule regla_4
    (lenguaje medio)
    (flex_cognitiva nada)
    =>
    (assert (probabilidadTEA baja))
)

(defrule regla_5
    (lenguaje medio)
    (flex_cognitiva algo)
    =>
    (assert (probabilidadTEA media))
)

(defrule regla_6
    (lenguaje medio)
    (flex_cognitiva alta)
    =>
    (assert (probabilidadTEA alta))
)

(defrule regla_7
    (lenguaje alto)
    (flex_cognitiva nada)
    =>
    (assert (probabilidadTEA media))
)

(defrule regla_8
    (lenguaje alto)
    (flex_cognitiva algo)
    =>
    (assert (probabilidadTEA alta))
)

(defrule regla_9
    (lenguaje alto)
    (flex_cognitiva alta)
    =>
    (assert (probabilidadTEA muy_alta))
)
