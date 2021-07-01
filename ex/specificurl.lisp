(in-package #:nyxt-user)

;;extra .lisp file for the configs of various search engines/url prompts to get straight to them via command/binding

;;command to start running a search from ddg directly
(define-command-global search-ddg (&key (prefill-current-url-p t))
  "Set ddg in the url prompt to search straight from duckduckgo."
  (let ((actions (list (make-command buffer-load* (suggestion-values)
                         "Load first selected URL in current buffer and the rest in new buffer(s)."
                         (mapc (lambda (suggestion) (make-buffer :url (url suggestion))) (rest suggestion-values))
                         (buffer-load (url (first suggestion-values))))
                       (make-command new-buffer-load (suggestion-values)
                         "Load URL(s) in new buffer(s)."
                         (mapc (lambda (suggestion) (make-buffer :url (url suggestion))) (rest suggestion-values))
                         (make-buffer-focus :url (url (first suggestion-values)))))))
    (prompt
     :prompt "DuckDuckGo"
     :input "ddg "
     :sources (list (make-instance 'user-new-url-or-search-source :actions actions)))))
 
 ;;command to start running a search from git directly    
(define-command-global search-git (&key (prefill-current-url-p t))
  "Set git in the url prompt to search straight from github."
  (let ((actions (list (make-command buffer-load* (suggestion-values)
                         "Load first selected URL in current buffer and the rest in new buffer(s)."
                         (mapc (lambda (suggestion) (make-buffer :url (url suggestion))) (rest suggestion-values))
                         (buffer-load (url (first suggestion-values))))
                       (make-command new-buffer-load (suggestion-values)
                         "Load URL(s) in new buffer(s)."
                         (mapc (lambda (suggestion) (make-buffer :url (url suggestion))) (rest suggestion-values))
                         (make-buffer-focus :url (url (first suggestion-values)))))))
    (prompt
     :prompt "GitHub"
     :input "git "
     :sources (list (make-instance 'user-new-url-or-search-source :actions actions)))))
 
 ;;command to start running a search from wiki directly    
(define-command-global search-wiki (&key (prefill-current-url-p t))
  "Set wiki in the url prompt to search straight from wikipedia."
  (let ((actions (list (make-command buffer-load* (suggestion-values)
                         "Load first selected URL in current buffer and the rest in new buffer(s)."
                         (mapc (lambda (suggestion) (make-buffer :url (url suggestion))) (rest suggestion-values))
                         (buffer-load (url (first suggestion-values))))
                       (make-command new-buffer-load (suggestion-values)
                         "Load URL(s) in new buffer(s)."
                         (mapc (lambda (suggestion) (make-buffer :url (url suggestion))) (rest suggestion-values))
                         (make-buffer-focus :url (url (first suggestion-values)))))))
    (prompt
     :prompt "Wikipedia"
     :input "wiki "
     :sources (list (make-instance 'user-new-url-or-search-source :actions actions)))))
 
 ;;command to start running a search from az directly    
(define-command-global search-az (&key (prefill-current-url-p t))
  "Set az in the url prompt to search straight from amazon."
  (let ((actions (list (make-command buffer-load* (suggestion-values)
                         "Load first selected URL in current buffer and the rest in new buffer(s)."
                         (mapc (lambda (suggestion) (make-buffer :url (url suggestion))) (rest suggestion-values))
                         (buffer-load (url (first suggestion-values))))
                       (make-command new-buffer-load (suggestion-values)
                         "Load URL(s) in new buffer(s)."
                         (mapc (lambda (suggestion) (make-buffer :url (url suggestion))) (rest suggestion-values))
                         (make-buffer-focus :url (url (first suggestion-values)))))))
    (prompt
     :prompt "Amazon"
     :input "az "
     :sources (list (make-instance 'user-new-url-or-search-source :actions actions)))))
 
 ;;command to navigate to a handshake address quickly   
(define-command-global navigate-hns (&key (prefill-current-url-p t))
  "Set hns in the url prompt to go straight to a handshake address."
  (let ((actions (list (make-command buffer-load* (suggestion-values)
                         "Load first selected URL in current buffer and the rest in new buffer(s)."
                         (mapc (lambda (suggestion) (make-buffer :url (url suggestion))) (rest suggestion-values))
                         (buffer-load (url (first suggestion-values))))
                       (make-command new-buffer-load (suggestion-values)
                         "Load URL(s) in new buffer(s)."
                         (mapc (lambda (suggestion) (make-buffer :url (url suggestion))) (rest suggestion-values))
                         (make-buffer-focus :url (url (first suggestion-values)))))))
    (prompt
     :prompt "Handshake Address"
     :input "hns "
     :sources (list (make-instance 'user-new-url-or-search-source :actions actions)))))
