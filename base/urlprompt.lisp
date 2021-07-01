(in-package #:nyxt-user)

;;search engines setup | last one in list becomes default
;;order: "shortcut" "url for search, ~a determines where query is placed" "fallback url when query fails or an empty search"
(defvar *my-search-engines*
  (list
   '("az" "https://amazon.com/s?k=~a" "https://amazon.com/") ;;amazon
   '("hns" "https://hns.to/~a" "https://hns.to/") ;;handshake addresses
   '("git" "https://github.com/search?q=~a" "https://github.com/") ;;git repos
   '("wiki" "https://en.wikipedia.org/w/index.php?search=~a" "https://en.wikipedia.org/") ;;wikipedia
   '("ddg" "https://duckduckgo.com/?q=~a" "https://duckduckgo.com/") ;;duckduckgo

(define-configuration buffer
  ((search-engines (mapcar (lambda (engine) (apply 'make-search-engine engine))
                                   *my-search-engines*))))
