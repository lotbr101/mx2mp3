;;;; mx2mp3.lisp

(in-package #:mx2mp3)

(defun process-file (file)
  (let ((wavfile (format nil "~s.wav" file))) 
    (progn 
      (inferior-shell:run/nil "mplayer \"c:/tmp/Sepultura-Roots-complete.m4a\" -vo null -ao pcm:file=\"c:/tmp/Sepultura.wav\""))))

