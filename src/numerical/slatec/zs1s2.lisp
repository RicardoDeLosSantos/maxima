;;; Compiled by f2cl version 2.0 beta Date: 2006/01/31 15:11:05 
;;; Using Lisp CMU Common Lisp Snapshot 2006-01 (19C)
;;; 
;;; Options: ((:prune-labels nil) (:auto-save t) (:relaxed-array-decls t)
;;;           (:coerce-assigns :as-needed) (:array-type ':simple-array)
;;;           (:array-slicing nil) (:declare-common nil)
;;;           (:float-format double-float))

(in-package :slatec)


(let ((zeror 0.0) (zeroi 0.0))
  (declare (type double-float zeroi zeror))
  (defun zs1s2 (zrr zri s1r s1i s2r s2i nz ascle alim iuf)
    (declare (type f2cl-lib:integer4 iuf nz)
             (type double-float alim ascle s2i s2r s1i s1r zri zrr))
    (prog ((idum 0) (aa 0.0) (aln 0.0) (as1 0.0) (as2 0.0) (c1i 0.0) (c1r 0.0)
           (s1di 0.0) (s1dr 0.0))
      (declare (type double-float s1dr s1di c1r c1i as2 as1 aln aa)
               (type f2cl-lib:integer4 idum))
      (setf nz 0)
      (setf as1 (zabs s1r s1i))
      (setf as2 (zabs s2r s2i))
      (if (and (= s1r 0.0) (= s1i 0.0)) (go label10))
      (if (= as1 0.0) (go label10))
      (setf aln (+ (- (- zrr) zrr) (f2cl-lib:flog as1)))
      (setf s1dr s1r)
      (setf s1di s1i)
      (setf s1r zeror)
      (setf s1i zeroi)
      (setf as1 zeror)
      (if (< aln (- alim)) (go label10))
      (multiple-value-bind (var-0 var-1 var-2 var-3 var-4)
          (zlog s1dr s1di c1r c1i idum)
        (declare (ignore var-0 var-1))
        (setf c1r var-2)
        (setf c1i var-3)
        (setf idum var-4))
      (setf c1r (- c1r zrr zrr))
      (setf c1i (- c1i zri zri))
      (multiple-value-bind (var-0 var-1 var-2 var-3)
          (zexp c1r c1i s1r s1i)
        (declare (ignore var-0 var-1))
        (setf s1r var-2)
        (setf s1i var-3))
      (setf as1 (zabs s1r s1i))
      (setf iuf (f2cl-lib:int-add iuf 1))
     label10
      (setf aa (max as1 as2))
      (if (> aa ascle) (go end_label))
      (setf s1r zeror)
      (setf s1i zeroi)
      (setf s2r zeror)
      (setf s2i zeroi)
      (setf nz 1)
      (setf iuf 0)
      (go end_label)
     end_label
      (return (values nil nil s1r s1i s2r s2i nz nil nil iuf)))))

