(in-package #:nyxt-user)

;;allow setting glyphs
(define-configuration status-buffer
  ((glyph-mode-presentation-p t)))

;;various glyph settings with no additional configs
(define-configuration nyxt/force-https-mode:force-https-mode ((glyph "ϕ")))
(define-configuration nyxt/blocker-mode:blocker-mode ((glyph "β")))
(define-configuration nyxt/proxy-mode:proxy-mode ((glyph "π")))
(define-configuration nyxt/reduce-tracking-mode:reduce-tracking-mode ((glyph "∅")))
(define-configuration nyxt/certificate-exception-mode:certificate-exception-mode ((glyph "ɛ")))
(define-configuration nyxt/style-mode:style-mode ((glyph "s")))
(define-configuration nyxt/help-mode:help-mode ((glyph "?")))

;;configure web mode hints to home row fore colemak and set glyph
(define-configuration nyxt/web-mode:web-mode
  ((nyxt/web-mode:hints-alphabet "ARSTGMNEIO")
    (glyph "ω")))

;;auto-mode config and set glyph
(define-configuration nyxt/auto-mode:auto-mode
  ((nyxt/auto-mode:prompt-on-mode-toggle t)
   (glyph "α")))
