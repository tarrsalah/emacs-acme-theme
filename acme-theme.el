;;; acme-theme.el --- Colorless acme like theme

;; Copyright (C) 2019 Salah Eddine Taouririt <tarrsalah@gmail.com>

;;
;; Author: Salah Eddine Taouririt <tarrsalah@gmail.com>
;; Created: November 2019
;; Version: 1.0
;; Package-Requires: ((emacs "26.0"))
;; URL: https://github.com/tarrsalah/emacs-acme-theme

;;; Commentary:
;; Colorless acme like theme

;;; License:

;; This file is not part of GNU Emacs.
;; However, it is distributed under the same license.

;; GNU Emacs is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation; either version 3, or (at your option)
;; any later version.

;; GNU Emacs is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING.  If not, write to the
;; Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
;; Boston, MA 02110-1301, USA.

;;; Code:
(deftheme acme "Colorless acme like theme")

(let* ((acme/bgyellow "#ffffff")
       (acme/fg "#000000")
       (acme/darkblue "#000088")
       (acme/lightblue "#5180B3")
       (acme/darkgreen "#006600")
       (acme/darkgray "#757575")
       (acme/lightgray "#E8E8E8"))

  (custom-theme-set-faces
   `acme
   `(default ((t (:foreground ,acme/fg :background ,acme/bgyellow))))
   `(region  ((t (:background "grey"))))

   ;; mode line
   `(linum ((t :foreground ,acme/darkgray)))

   ;; hl-line
   `(hl-line ((t (:background ,acme/lightgray))))

   ;;; no syntax highlight
   `(font-lock-builtin-face		((t (:foreground ,acme/fg))))
   `(font-lock-function-name-face	((t (:foreground ,acme/fg))))
   `(font-lock-keyword-face		((t (:foreground ,acme/fg))))
   `(font-lock-preprocessor-face	((t (:foreground ,acme/fg))))
   `(font-lock-type-face		((t (:foreground ,acme/fg))))
   `(font-lock-constant-face		((t (:foreground ,acme/fg))))
   `(font-lock-variable-name-face	((t (:foreground ,acme/fg))))

   ;; except for strings and comments
   `(font-lock-string-face		((t (:foreground ,acme/darkgreen))))
   `(font-lock-comment-face		((t (:foreground ,acme/lightblue))))
   `(font-lock-comment-delimiter-face	((t (:foreground ,acme/lightblue))))
   `(font-lock-doc-string-face ((t (:foreground ,acme/lightblue))))
   `(font-lock-doc-face ((t (:foreground ,acme/lightblue))))
   `(font-lock-preprocessor-face ((t (:foreground ,acme/lightblue))))
   `(font-lock-regexp-grouping-construct ((t (:foreground ,acme/lightblue))))

   ;; php
   `(php-doc-annotation-tag ((t (:foreground ,acme/lightblue))))
   `(php-doc-class-name ((t (:foreground ,acme/lightblue))))
   `(php-doc-$this-sigil ((t (:foreground ,acme/lightblue))))
   `(php-doc-variable-sigil ((t (:foreground ,acme/lightblue))))
   `(php-doc-$this ((t (:foreground ,acme/lightblue))))
   `(php-type ((t (:foreground ,acme/lightblue))))

   `(font-lock-warning-face		((t (:foreground "red" :bold t))))
   `(dired-directory ((t (:foreground ,acme/darkblue))))))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))


;;;###autoload
(defun acme-theme()
  "Apply the acme theme."
  (interactive)
  (load-theme 'acme t))

(provide 'acme-theme)

(provide-theme 'acme)

;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; acme-theme.el ends here
