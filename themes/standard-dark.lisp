(in-package #:nyxt-user)
  
;;configuration window
(define-configuration window
  ((message-buffer-style
    (str:concat
     %slot-default%
     (cl-css:css
      '((body
         :background-color "black"
         :color "white")))))))

;;prompt buffer
(define-configuration prompt-buffer
  ((style (str:concat
           %slot-default%
           (cl-css:css
            '((body
               :background-color "black"
               :color "white")
              ("#prompt-area"
               :background-color "black")
              ("#input"
               :background-color "black"
               :color "white")
              (".source-name"
               :background-color "black"
               :color "white")
              (".source-content"
               :background-color "black")
              (".source-content th"
               :border "1px solid white"
               :background-color "black")
              ("#selection"
               :background-color "white"
               :color "black")
              (.marked :background-color "black"
                       :font-weight "bold"
                       :color "white")
              (.selected :background-color "black"
                         :color "white")))))))

;;internal buffer
(define-configuration internal-buffer
  ((style
    (str:concat
     %slot-default%
     (cl-css:css
      '((title
         :color "white")
        (body
         :background-color "black"
         :color "white")
        (hr
         :color "white")
        (a
         :color "white")
        (.button
         :color "black"
         :background-color "white")))))))

;;history tree
(define-configuration nyxt/history-tree-mode:history-tree-mode
  ((nyxt/history-tree-mode::style
    (str:concat
     %slot-default%
     (cl-css:css
      '((body
         :background-color "black"
         :color "white")
        (hr
         :color "darkgray")
        (a
         :color "white")
        ("ul li::before"
         :background-color "white")
        ("ul li::after"
         :background-color "white")
        ("ul li:only-child::before"
         :background-color "white")))))))

;;highlight boxes
(define-configuration nyxt/web-mode:web-mode
  ((nyxt/web-mode:highlighted-box-style
    (cl-css:css
     '((".nyxt-hint.nyxt-highlight-hint"
        :background "black")))
    :documentation "The style of highlighted boxes, e.g. link hints.")))

;;Styling status buffer black and setting size of tabs and modes. Can uncomment url and controls section for theming those.
(define-configuration status-buffer
  ((style (str:concat
           %slot-default%
           (cl-css:css
            '(
              ("#controls"
               :background-color "black"
               :border-top "1px solid white")
              ("#url"
               :background-color "black"
               :border-top "1px solid white")
              ("#modes"
               :background-color "black"
               :border-top "1px solid white")
              (".button:hover" :color "white")
              ("#tabs"
               :background-color "black"
               :color "white"
               :border-top "1px solid white")
              (".tab:hover" :color "white")))))))
