;; ####################
;; Tworzenie strony "Function GENSYM"


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
  (defparameter *plik-numer* "01")
  (defparameter *plik-nazwa* (concatenate 'string
					  +sciezka+
					  "przyklad-s01-"
					  *plik-numer*))
  (defparameter *d* (let ((*package* *package*))
		      (ccldoc:load-document (concatenate 'string
							 *plik-nazwa*
							 ".ccldoc"))))

  (ccldoc::output-html *d* (concatenate 'string
					*plik-nazwa*
					".html")
		       :stylesheet "ccl.css"))

(probe-file (concatenate 'string *plik-nazwa* ".ccldoc"))
