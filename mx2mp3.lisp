;;;; mx2mp3.lisp

(in-package #:mx2mp3)

(defun process-file (file)
  (let* ((filepath (pathname file))
	 (wavpath (make-pathname :type "wav" :defaults filepath))) 
    (progn   
      (inferior-shell:run/nil (format nil "mplayer \"~s\" -vo null -ao pcm:file=\"~s\"" (namestring filepath) (namestring  wavpath)))
      (inferior-shell:run/nil (format nil "lame --preset standard \"~s\"" (namestring  wavpath)))
      (delete-file wavpath))))
