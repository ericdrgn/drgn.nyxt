(in-package #:nyxt-user)

;;keybinding overrides
(define-configuration buffer
  ((override-map (let ((map (make-keymap "my-override-map")))
                   (define-key map
                     "M-i" 'show-weather
                     "C-t" 'set-url-new-buffer
                     "C-2" 'open-external-browser
                     "C-0" 'no-mercy
                     "M-x" 'execute-command
                     "C-s" 'query-selection-in-search-engine
                     "C-c" 'nyxt/web-mode::copy ;;currently an override because C-c not working without it
                     "C-q" 'quit-history)
                   map))))
