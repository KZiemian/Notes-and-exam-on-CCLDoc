;; ####################
;; Program compering content of ccldoc source files and CCLDoc Overview


;; ##########
;; File "syntax.lisp"

(defparameter *lista-expanders-ccl-syntax.lisp*
  ;; t - exists, nil - not exists
  '(:document   (:exist t)
    :chapter    (:exist t :parser-types :string)
    :section    (:exist t :parser-types :string)
    :variable   (:exist t :parser-types :lisp)
    :function   (:exist t :parser-types :lisp)
    :macro      (:exist t :parser-types :lisp)
    :class      (:exist t :parser-types :lisp)
    :type       (:exist t :parser-types :lisp)
    :refdef     (:exist t :parser-types (:lisp :lisp))
    :term       (:exist t :parser-types :string)
    :emphasis   (:exist t :parser-types :text)  ; To ten co mi nie działa
    :system     (:exist t :parser-types :text)
    :sample     (:exist t :parser-types :text)
    :param      (:exist t :parser-types :text)
    :code       (:exist t :parser-types :text)
    :lbrace     (:exist t)
    :rbrace     (:exist t)))


(defparameter *lista-operatorow-ccl-syntax.lisp*
  ;; t - exists, nil - not exists
  '(:include-file       (:exists t)
    :quote              (:exists t)
    :defsection         (:exists t)
    :glossary-section   (:exists t)
    :index-section      (:exists t)
    :para               (:exists t :parser-types :text)
    :block              (:exists t)
    :code-block         (:exists t)
    :definition         (:exists t)
    :glossentry         (:exists t)
    :markup             (:exists t :parser-types (:lisp :text))
    :listing            (:exists t :parser-types (:list :text))
    :row                (:exists t :parser-types :text)
    :table              (:exists t)
    :clause             (:exists t)
    :item               (:exists t)
    :index              (:exists t :parser-types :text)
    :ref                (:exists t :parser-types :text)
    :link               (:exists t :parser-types (:identifier :text))))


(defparameter *lista-fun-ccl-syntax.lisp*
  ;; t - exists, nil - not exists
  '(:normalize-title               (:exsits t)
    :parse-arg-and-options         (:exsits t)
    :collect-glossary-entries      (:exsits t)
    :canonicalize-ref-name         (:exsits t)
    :subforms-clause               (:exsits t)
    :subforms-items                (:exsits t)
    :form-clause                   (:exsits t)
    :form-clause-ensuring-simple   (:exsits t)))





;; ##########
;; File "toplevel.lisp"

(defparameter *list-fun-toplevel.lisp*
  '(:ccldoc:load-document      (:exsits t)
    :read-ccldoc-document      (:exsits t)
    :load-to-ccldoc-form       (:exsits t)
    :build-ccldoc              (:exsits t)
    :ccldoc-opinfoc            (:exsits t)
    :ccldoc-macro-expander     (:exsits t)
    :ccldoc-operator           (:exsits t)
    :ccldoc-string-parser      (:exsits t)
    :%def-operator             (:exsits t)
    :form-clause-by-operator   (:exsits t)
    :ccldoc-macroexpand        (:exsits t)
    :string-chunk              (:exsits t)
    :delim-pos                 (:exsits t)
    :end-delim-pos             (:exsits t)
    :lisp-form-string          (:exsits t)
    :parse-ccldoc-string       (:exsits t)
    :make-arg-reader           (:exsits t)
    :assign-external-ids       (:exsits t)
    :disambiguate-ids          (:exsits t)
    :norm-for-external-id    (:exsits t)
    :external-id-for-name    (:exsits t)
    :external-id-string      (:exsits t)
    :text-for-clause-name    (:exsits t)))






;; ##########
;; CCLDoc Overview

(defparameter *list-ccldoc-operators-ccloverview*
  ;; In this "CCLDoc Overview" this are called "ccldoc operator"
  ;; t - exists, nil - not exists
  '(:include-file        (:exsits t)
    :defsection          (:exsits t)
    :index-section       (:exsits t)
    :glossary-section    (:exsits t)
    :block               (:exsits t)
    :code-block          (:exsits t)
    :table               (:exsits t)
    :glossentry          (:exsits t)
    :definition          (:exsits t)
    :row                 (:exsits t)
    :listing             (:exsits t)
    :para                (:exsits t)
    :item                (:exsits t)
    :index               (:exsits t)
    :clause              (:exsits t)
    :link                (:exsits t)
    :quote               (:exsits t)
    :markup              (:exsits t)
    :ref                 (:exsits t)
    :document            (:exsits t)
    :chapter             (:exsits t)
    :section             (:exsits t)
    :variable            (:exsits t)
    :function            (:exsits t)
    :macro               (:exsits t)
    :class               (:exsits t)
    :type                (:exsits t)
    :refdef              (:exsits t)
    :term                (:exsits t)
    :emphasis            (:exsits t)
    :system              (:exsits t)
    :sample              (:exsits t)
    :param               (:exsits t)
    :code                (:exsits t)
    :lbrace              (:exsits t)
    :rbrace              (:exsits t)))
