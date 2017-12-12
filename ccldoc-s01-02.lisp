;; ####################
;; Tworzenie strony "Function GENSYM"


;; ##########
;; Konfiguracja :CCLDOC
(progn
  (load "home:quicklisp;setup")
  (ql:quickload :ccldoc)		; Coś tu nie działa
  (defconstant +sciezka+
    (concatenate 'string "/home/kamil/Naprawdę-ważne"
		 "/Podstawy-zmieniajace-sie/Common-Lisp/ccldoc/"))
  )





;; Tworzenie pliku HTML

(progn
  (defparameter *plik-numer* "05")
  (defparameter *plik-nazwa* (concatenate 'string
					  +sciezka+
					  "example-s01-"
					  *plik-numer*)))

(progn
  (defparameter *document* (let ((*package* *package*))
			     (ccldoc::load-document (concatenate 'string
								 *plik-nazwa*
								 ".ccldoc"))))
  (ccldoc::output-html *document* (concatenate 'string
					       *plik-nazwa*
					       ".html")
		       :stylesheet "ccl.css" ; Tę linię można zakomentować
		       ;; i wciąż będzie działał, tylko nie użyje tego pliku
		       ;; CSS. Zapewne nie użyje żadnego.
		       ))

(probe-file (concatenate 'string *plik-nazwa* ".ccldoc"))

;; W Overview jest informacja, że operatory są zamieniane na keywordsy
;; w czasie procesowania pliku i wedle moich testów równie dobrze działa
;; ccldoc::load-document jak ccldoc:load-document
;; i tak samo
;; ccldoc::output-html jak ccldoc:output-html
;; Ja przyjąłem, że lepiej jest pisać ccldoc::load-document
;; i ccldoc::output-html.

;; Kod na stronie https://trac.clozure.com/ccldoc/ używa
;; ccldoc:load-document i ccldoc::output-html





;; ##########
;; Tworzenie strony GENSYM

(progn
  (defvar *plik-ccldoc* (concatenate 'string
				     +sciezka+
				     "gensym.ccldoc"))
  (defvar *plik-html* (concatenate 'string
				   +sciezka+
				   "gensym.html")))

(progn
  (defparameter *document* (let ((*package* *package*))
			     (ccldoc::load-document *plik-ccldoc*)))

  (ccldoc::output-html *document* *plik-html*
		       :stylesheet "ccl.css" ; Tę linię można zakomentować
		       ;; i wciąż będzie działał, tylko nie użyje tego pliku
		       ;; CSS. Zapewne nie użyje żadnego.
		       ))

(probe-file (concatenate 'string *plik-nazwa* ".ccldoc"))
