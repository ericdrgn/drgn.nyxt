(in-package #:nyxt-user)
  
;configuration window
(define-configuration window
  ((message-buffer-style
    (str:concat
     %slot-default%
     (cl-css:css
      '((body
         :background-color "white"
         :color "black")))))))

;prompt buffer
(define-configuration prompt-buffer
  ((style (str:concat
           %slot-default%
           (cl-css:css
            '((body
               :background-color "white"
               :color "black")
              ("#prompt-area"
               :background-color "white"
               :color "black")
              ("#input"
               :background-color "white"
               :color "black")
              (".source-name"
               :background-color "white"
               :color "black")
              (".source-content"
               :background-color "white"
               :color "black")
              (".source-content th"
               :border "1px solid black"
               :background-color "white"
               :color "black")
              ("#selection"
               :background-color "black"
               :color "white")
              (.marked :background-color "white"
                       :font-weight "bold"
                       :color "black")
              (.selected :background-color "white"
                         :color "black")))))))

;internal buffer
(define-configuration internal-buffer
  ((style
    (str:concat
     %slot-default%
     (cl-css:css
      '((title
         :color "black")
        (body
         :background-color "white"
         :color "black")
        (hr
         :color "black")
        (a
         :color "black")
        (.button
         :color "white"
         :background-color "black")))))))

;history tree
(define-configuration nyxt/history-tree-mode:history-tree-mode
  ((nyxt/history-tree-mode::style
    (str:concat
     %slot-default%
     (cl-css:css
      '((body
         :background-color "white"
         :color "black")
        (hr
         :color "darkgray")
        (a
         :color "black")
        ("ul li::before"
         :background-color "black")
        ("ul li::after"
         :background-color "black")
        ("ul li:only-child::before"
         :background-color "black")))))))

;highlight boxes
(define-configuration nyxt/web-mode:web-mode
  ((nyxt/web-mode:highlighted-box-style
    (cl-css:css
     '((".nyxt-hint.nyxt-highlight-hint"
        :background "white")))
    :documentation "The style of highlighted boxes, e.g. link hints.")))

;Styling status buffer 
(define-configuration status-buffer
  ((style (str:concat
           %slot-default%
           (cl-css:css
            '(
              ("#controls"
               :background-color "white"
               :color "black"
               :border-top "1px solid black")
              ("#url"
               :background-color "white"
               :color "black"
               :border-top "1px solid black")
              ("#modes"
               :background-color "white"
               :color "black"
               :border-top "1px solid black")
              (".button" :color "black")
              (".button:hover" :color "black")
              ("#tabs"
               :background-color "white"
               :color "black"
               :border-top "1px solid black")
              (".tab" :color "black")))))))
