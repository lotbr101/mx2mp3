;;;; mx2mp3.lisp

(in-package #:mx2mp3)

;;; "mx2mp3" goes here. Hacks and glory await!

(defun process-file (file))
(inferior-shell:run/nil "mplayer \"c:/tmp/Sepultura-Roots-complete.m4a\" -ao pcm:file=\"c:/tmp/Sepultura.wav\"")
