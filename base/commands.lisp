(in-package #:nyxt-user)

;;runs shutdown -h now
(define-command-global no-mercy ()
  "shutdown, with no mercy."
  (uiop:run-program "~/.config/nyxt/scripts/shutdown.sh"))

;;shows current time
(define-command-global current-time ()
  "Show the current time."
  (echo "~a" (local-time:now)))

;;runs curl wttr.in/?format=3
(define-command-global show-weather ()
  "Show the weather for current location in message area."
  (echo (uiop:run-program "~/.config/nyxt/scripts/weather.sh" :output :string)))

;;runs script to open spotify and set the window
(define-command-global open-spotify ()
  "Open Spotify."
  (uiop:run-program "~/.config/nyxt/scripts/spotify.sh"))

;;command to close nyxt and delete history file | investigating below issues
;;currently cannot be last command in this list and won't show in commands list so setting a keybinding is necessary
(define-command-global quit-history ()
  (uiop:delete-file-if-exists (expand-data-path (data-profile (current-buffer)) ;;quit and clear history
                                          (history-path (current-buffer))))
  (quit))

;;opens current url in different browser replace firefox with your browser/path
(define-command-global open-external-browser ()
  "Open the current url in external browser"
  (uiop:run-program (list "firefox" (render-url (url (current-buffer))))))
