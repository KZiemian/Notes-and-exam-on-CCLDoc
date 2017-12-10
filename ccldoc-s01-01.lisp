;; ####################
;; Konfiguracja ccldoc

(progn
  (load "home:quicklisp;setup")
  (ql:quickload :ccldoc)		; Coś tu nie działa
  (defconstant +sciezka+
    (concatenate 'string "/home/kamil/Naprawdę-ważne"
		 "/Podstawy-zmieniajace-sie/Common-Lisp/ccldoc/"))
  )





;; ####################
;; Przykład testowy

;; (defparameter *plik-nazwa* "prob-s01-01")

;; (defparameter *d* (ccldoc:load-document "ccl:doc;manual;ccl.ccldoc"))

;; (ccldoc::output-html *d* (concatenate 'string +sciezka+ *plik-nazwa*
;; 				      ".html")
;; 		     :stylesheet (concatenate 'string *plik-nazwa* ".css"))


;; (ccldoc::output-html *d* (concatenate 'string +sciezka+ *plik-nazwa*
;; 				      ".html")
;; 		     :stylesheet "ccl.css")





;; ####################
;; Próby uruchomienia

;; (defparameter *plik-nazwa* "about")

;; (defparameter *d* (ccldoc:load-document (concatenate 'string +sciezka+
;; 						     *plik-nazwa*
;; 						     ".ccldoc")))
;; Nie działa

;; (defparameter *d* (ccldoc:load-document "home;kamil;ccldoc;about.ccldoc"))
;; Nie działa

;; (defparameter *d* (ccldoc:load-document
;; 		   (pathname (concatenate 'string +sciezka+
;; 					  *plik-nazwa* ".ccldoc"))))

;; (probe-file "/home/kamil/ccldoc/about.ccldoc")

;; (defparameter *d* (ccldoc:load-document
;; 		   "/home/kamil/ccldoc/build.ccldoc"))

;; (ccldoc:load-document "/home/kamil/ccldoc/build.ccldoc")
;; Nie działa.

;; (ccldoc:load-document (concatenate 'string +sciezka+ "ccl.ccldoc"))
;; Działa

;; (ccldoc::output-html *d* (concatenate 'string +sciezka+ *plik-nazwa* )
;; 		     :stylesheet (concatenate 'string *plik-nazwa* ".css"))


;; (ccldoc::output-html *d* (concatenate 'string +sciezka+ *plik-nazwa* )
;; 		     :stylesheet (concatenate 'string *plik-nazwa* ".css"))

;; (defparameter *plik-nazwa* "ccldoc")

;; (defparameter *d* (ccldoc:load-document
;; 		   (pathname (concatenate 'string +sciezka+
;; 					  *plik-nazwa* ".ccldoc"))))

;; (probe-file (concatenate 'string +sciezka+ *plik-nazwa* ".ccldoc"))

;; (ccldoc::output-html *d* (concatenate 'string +sciezka+ *plik-nazwa*
;; 				      ".html")
;; 		     :stylesheet "ccl.css")



;; (probe-file "/home/kamil/ccldoc/ccldoc.ccldoc")
;; (pathname "/home/kamil/ccldoc/ccldoc.ccldoc")

;; (defparameter *d* (ccldoc:load-document
;; 		   (pathname "/home/kamil/ccldoc/ccldoc.ccldoc")))




;; (defparameter *plik-numer* "01")
;; (defparameter *plik-nazwa* (concatenate 'string
;; 					+sciezka+
;; 					"przyklad-s01-"
;; 					*plik-numer*))

;; (defparameter *d* (let ((*package* *package*))
;; 		    (ccldoc:load-document
;; 		     (concatenate 'string "przyklad-s01-01"))))

;; (ccldoc::output-html *d* (concatenate 'string
;; 				      *plik-nazwa*
;; 				      ".html")
;; 		     :stylesheet "ccl.css")




;; ####################
;; To w końcu działa

(defparameter *d* (let ((*package* *package*))
		    (ccldoc:load-document (concatenate 'string +sciezka+
						       "ccldoc.ccldoc"))))

(defparameter *plik-nazwa* "ccldoc")

(ccldoc::output-html *d* (concatenate 'string +sciezka+ *plik-nazwa*
				      ".html")
		     :stylesheet "ccl.css")

;; Na razie "ccl.css" działa tylko wtedy, gdy jest w tym samym katalogu
;; co plik CCLDOC.
