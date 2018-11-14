;;;; yatex-mode

(use-package yatex
  :if (and (file-directory-p "/Library/TeX/texbin/")
           (file-directory-p "/Applications/Skim.app/Contents/SharedSupport"))
  :commands (yatex-mode)
  :mode (("\\.tex$" . yatex-mode)
         ("\\.cls$" . yatex-mode)
         ("\\.sty$" . yatex-mode)
         ("\\.clo$" . yatex-mode)
         ("\\.bbl$" . yatex-mode))
  :init
  (setenv "PATH" "/usr/local/bin:/Library/TeX/texbin/:/Applications/Skim.app/Contents/SharedSupport:$PATH" t)
  (setq exec-path (append '("/usr/local/bin" "/Library/TeX/texbin" "/Applications/Skim.app/Contents/SharedSupport") exec-path))
  :config
  (setq YaTeX-prefix "\C-c")
  (setq YaTeX-kanji-code nil)
  (setq YaTeX-latex-message-code 'utf-8)
  (setq YaTeX-use-LaTeX2e t)
  (setq YaTeX-use-AMS-LaTeX t)
  (setq YaTeX-dvi2-command-ext-alist
        '(("TeXworks\\|texworks\\|texstudio\\|mupdf\\|SumatraPDF\\|Preview\\|Skim\\|TeXShop\\|evince\\|atril\\|xreader\\|okular\\|zathura\\|qpdfview\\|Firefox\\|firefox\\|chrome\\|chromium\\|MicrosoftEdge\\|microsoft-edge\\|Adobe\\|Acrobat\\|AcroRd32\\|acroread\\|pdfopen\\|xdg-open\\|open\\|start" . ".pdf")))
  ;; (setq tex-command "ptex2pdf -u -l -ot '-synctex=1'")
  (setq tex-command "uplatex")
  (setq bibtex-command "latexmk -e '$latex=q/uplatex %O -synctex=1 %S/' -e '$bibtex=q/upbibtex %O %B/' -e '$biber=q/biber %O --bblencoding=utf8 -u -U --output_safechars %B/' -e '$makeindex=q/upmendex %O -o %D %S/' -e '$dvipdf=q/dvipdfmx %O -o %D %S/' -norc -gg -pdfdvi")
  (setq makeindex-command "latexmk -e '$latex=q/uplatex %O -synctex=1 %S/' -e '$bibtex=q/upbibtex %O %B/' -e '$biber=q/biber %O --bblencoding=utf8 -u -U --output_safechars %B/' -e '$makeindex=q/upmendex %O -o %D %S/' -e '$dvipdf=q/dvipdfmx %O -o %D %S/' -norc -gg -pdfdvi")
  (setq dvi2-command "open -a Skim")
  (setq tex-pdfview-command "open -a Skim")
  (setq dviprint-command-format "open -a \"Adobe Acrobat Reader DC\" `echo %s | gsed -e \"s/\\.[^.]*$/\\.pdf/\"`")
  (add-hook 'yatex-mode-hook
            '(lambda ()
               (auto-fill-mode -1)
               (reftex-mode 1)
               ;; (define-key reftex-mode-map (concat YaTeX-prefix ">") 'YaTeX-comment-region)
               ;; (define-key reftex-mode-map (concat YaTeX-prefix "<") 'YaTeX-uncomment-region)
               (YaTeX-define-key "p" 'latex-math-preview-expression)
               (YaTeX-define-key "\C-p" 'latex-math-preview-save-image-file)
               (YaTeX-define-key "j" 'latex-math-preview-insert-symbol)
               (YaTeX-define-key "\C-j" 'latex-math-preview-last-symbol-again)
               (YaTeX-define-key "\C-b" 'latex-math-preview-beamer-frame))))
(setq latex-math-preview-in-math-mode-p-func 'YaTeX-in-math-mode-p)

