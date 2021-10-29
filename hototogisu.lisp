(load "~/howm/junk/utils.lisp")		; => T
;; 鳴かぬなら、創ってしまえ、ホトトギス！
(defclass animal ()
  ((jp-name :initarg :jp-name :initform "" :accessor jp-name))) ; => #<STANDARD-CLASS COMMON-LISP-USER::ANIMAL>

(defclass bird (animal)
  ((song :initarg :song :initform "" :accessor song))) ; => #<STANDARD-CLASS COMMON-LISP-USER::BIRD>

(setf lesser-cuckoo
      (make-instance 'bird
		     :jp-name "ホトトギス"
		     :song "ホーホケキョ！")) ; => #<BIRD {1002238423}>

(defmethod tweet (bird)
  (format t "~s" (slot-value bird 'jp-name))	; => "ホトトギス"NIL
  (system (concatenate 'string "echo " (slot-value bird 'song) "| ojtalk"))) ; => #<STANDARD-METHOD COMMON-LISP-USER::TWEET (T) {10022938C3}>

(tweet lesser-cuckoo)			; => "ホトトギス"; $ echo ホーホケキョ！| ojtalk
0
