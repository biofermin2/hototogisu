;; 鳴かぬなら、創ってしまえ、ホトトギス
(load "~/howm/junk/utils.lisp")		; =>T 

(defclass animal ()
  ((name :initarg :name :initform "" :accessor name))) ; =>#<STANDARD-CLASS COMMON-LISP-USER::ANIMAL> 

(defclass bird (animal)				     
  ((song :initarg :song :initform "" :accessor song))) ; =>#<STANDARD-CLASS COMMON-LISP-USER::BIRD> 

(defparameter lessor-cuckoo ())		; =>LESSOR-CUCKOO 

(setf lessor-cuckoo
      (make-instance 'bird
		     :name "ホトトギス"
		     :song "テッペンカケタカ、特許許可局")) ; =>#<BIRD {1014B2C663}> 

(defgeneric tweet (bird)
  (:documentation "指定した鳥の鳴き声を発する")) ; =>#<STANDARD-GENERIC-FUNCTION COMMON-LISP-USER::TWEET (1)> 

(defmethod tweet (bird)
  (format t "~s" (name bird))
  (system (concatenate 'string "echo " (song bird) "| ojtalk"))) ; =>#<STANDARD-METHOD COMMON-LISP-USER::TWEET (T) {1014BEFBA3}> 

(tweet lessor-cuckoo)			; =>"ホトトギス"; $ echo テッペンカケタカ、特許許可局| ojtalk
warning: output HDMI-A-0 not found; ignoring
xrandr: Need crtc to set gamma on.
warning: output HDMI-A-0 not found; ignoring
xrandr: Need crtc to set gamma on.
0 

















;; (setf bird2
;;       (make-instance 'bird
;; 		     :name "ニワトリ"
;;                      :en-name "poultry"
;; 		     :song "コケコッコー！"
;; 		     :en-song "cock-a-doodle-doo!")) ; =>#<BIRD {10110C3DB3}> 

;; (setf bird3
;;       (make-instance 'bird
;; 		     :name "カラス"
;;                      :en-name "raven"
;; 		     :song "カァー！カァー！"
;; 		     :en-song "caw! caw!")) ; =>#<BIRD {10110D21A3}> 
