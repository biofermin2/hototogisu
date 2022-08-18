(load "~/howm/junk/utils.lisp")	       ; => T
;; 鳴かぬなら、創ってしまえ、ホトトギス！
(defclass animal ()
  ((jp-name :initarg :jp-name :initform "" :accessor jp-name))) ; => #<STANDARD-CLASS COMMON-LISP-USER::ANIMAL>

(defclass bird (animal)
  ((song :initarg :song :initform "" :accessor song)
   (en-song :initarg :en-song :initform "" :accessor en-song))) ; => #<STANDARD-CLASS COMMON-LISP-USER::BIRD>

(setf lesser-cuckoo
      (make-instance 'bird
		     :jp-name "ホトトギス"
		     :song "ホーホケキョ！"
		     :en-song "tweet-tweet!")) ; => #<BIRD {1003721363}>

(setf poultry
 (make-instance 'bird
		     :jp-name "ニワトリ"
		     :song "コケコッコー！"
		:en-song "cock-a-doodle-doo!")) ; => #<BIRD {10037B5093}>

(setf raven
      (make-instance 'bird
		     :jp-name "カラス"
		     :song "カァー！カァー！"
		     :en-song "caw! caw!")) ; => #<BIRD {100384F723}>

(defun tweet (bird &optional (lang 'ja))
  (format t "~s" (slot-value bird 'jp-name))
  (cond ((eq lang 'ja)
	 (system (concatenate 'string "echo " (slot-value bird 'song) "| ojtalk")))
	((eq lang 'en)
	 (system (concatenate 'string "echo " (slot-value bird 'en-song) "| flite"))))) ; => TWEET

(tweet lesser-cuckoo)			; => "ホトトギス"; $ echo ホーホケキョ！| ojtalk
0
(tweet poultry 'en)			; => "ニワトリ"; $ echo cock-a-doodle-doo!| flite
0
(tweet raven 'en)			; => "カラス"; $ echo caw! caw!| flite
