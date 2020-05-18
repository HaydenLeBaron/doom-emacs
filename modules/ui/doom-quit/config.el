;;; ui/doom-quit/config.el -*- lexical-binding: t; -*-

(defvar +doom-quit-messages
  '(;; Imperial quotes
    "I find your lack of faith disturbing..."
    "Single reactor ignition..."
    "You may fire when ready."
    "Execute order 66..."
    "POWER! UNNNLIMMITEDD POOWWWEEER!"
    "Don't be too proud of this technological terror you've constructed."
    "Evacuate? In our moment of triumph? I think you oversestimate their chances!")
  "A list of quit messages, picked randomly by `+doom-quit'. Taken from
http://doom.wikia.com/wiki/Quit_messages and elsewhere.")

(defun +doom-quit-fn (&rest _)
  (doom-quit-p
   (format "%s  Quit?"
           (nth (random (length +doom-quit-messages))
                +doom-quit-messages))))

;;
(setq confirm-kill-emacs #'+doom-quit-fn)
