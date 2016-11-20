

;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Configuration Layers declaration.
You should not put any user code in this function besides modifying the variable
values."
  (setq-default
   ;; Base distribution to use. This is a layer contained in the directory
   ;; `+distribution'. For now available distributions are `spacemacs-base'
   ;; or `spacemacs'. (default 'spacemacs)
   dotspacemacs-distribution 'spacemacs
   ;; Lazy installation of layers (i.e. layers are installed only when a file
   ;; with a supported type is opened). Possible values are `all', `unused'
   ;; and `nil'. `unused' will lazy install only unused layers (i.e. layers
   ;; not listed in variable `dotspacemacs-configuration-layers'), `all' will
   ;; lazy install any layer that support lazy installation even the layers
   ;; listed in `dotspacemacs-configuration-layers'. `nil' disable the lazy
   ;; installation feature and you have to explicitly list a layer in the
   ;; variable `dotspacemacs-configuration-layers' to install it.
   ;; (default 'unused)
   dotspacemacs-enable-lazy-installation 'unused
   ;; If non-nil then Spacemacs will ask for confirmation before installing
   ;; a layer lazily. (default t)
   dotspacemacs-ask-for-lazy-installation t
   ;; If non-nil layers with lazy install support are lazy installed.
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (i.e. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '()
   ;; List of configuration layers to load.
   dotspacemacs-configuration-layers
   '(
     mu4e
     lua
     ivy
     ess
     csv
     asciidoc
     python
     ipython-notebook
     (c-c++ :variables
            c-c++-enable-clang-support t
            c-c++-default-mode-for-headers
            'c++-mode)
     (auto-completion :variables
                      auto-completion-enable-help-tooltip t
                      auto-completion-complete-with-key-sequence-delay 0.04
                      auto-completion-enable-sort-by-usage t
                      auto-completion-enable-snippets-in-popup t)
     better-defaults
     emacs-lisp
     javascript
     html
     vimscript
     git
     github
     sql
     ;; markdown
     (markdown :variables markdown-live-preview-engine 'vmd)
     xkcd
     ruby
     csharp
     java
     pandoc
     plantuml
     evil-commentary
     evil-cleverparens
     evil-snipe
     ;; unimpaired
     ;; vim-powerline
     finance
     nlinum
     (ranger :variables
             ranger-override-dired t
             ranger-show-preview t
             ranger-cleanup-eagerly t)
     ;; wakatime
     semantic
     (shell :variables
            shell-default-height 30
            shell-enable-smart-eshell t
            shell-default-position 'bottom
            shell-protect-eshell-prompt t
            shell-default-shell 'ansi-term
            shell-pop-autocd-to-working-dir nil
            shell-default-term-shell "zsh")
     syntax-checking
     ruby-on-rails
     yaml
     react
     rust
     shell
     vinegar
     restclient
     ;; ycmd
     ;; tmux
     ;; ranger
     ;; dash
     ;; ansible
     gtags
     latex
     bibtex
     ;; osx
     erlang
     octave
     ;; elixir
     (org :variables
          org-enable-github-support t
          git-magit-status-fullscreen t
          git-gutter-use-fringe t)
     ;; spell-checking
     (spell-checking :variables
                     enable-flyspell-auto-completion t
                     spell-checking-enable-by-default nil)
     fishman
     fasd
     syntax-checking
     version-control
     search-engine
     dash
     )

   ;; List of additional packages that will be installed without being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages, then consider creating a layer. You can also put the
   ;; configuration in `dotspacemacs/user-config'.
   dotspacemacs-additional-packages '(
                                      password-generator
                                      tldr
                                      focus
                                      helm-youtube
                                      (org-glossary :location (recipe :fetcher github :repo "jagrg/org-glossary"))
                                      org-drill-table
                                      w3m xwidgete spray ox-reveal ox-ioslide ox-gfm org-alert nxml xml-rpc confluence langtool org-jekyll)
   ;; A list of packages that cannot be updated.
   dotspacemacs-frozen-packages '()
   ;; A list of packages that will not be installed and loaded.
   dotspacemacs-excluded-packages '()
   ;; Defines the behaviour of Spacemacs when installing packages.
   ;; Possible values are `used-only', `used-but-keep-unused' and `all'.
   ;; `used-only' installs only explicitly used packages and uninstall any
   ;; unused packages as well as their unused dependencies.
   ;; `used-but-keep-unused' installs only the used packages but won't uninstall
   ;; them if they become unused. `all' installs *all* packages supported by
   ;; Spacemacs and never uninstall them. (default is `used-only')
   dotspacemacs-install-packages 'used-only))

(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs initialization
before layers configuration.
You should not put any user code in there besides modifying the variable
values."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; If non nil ELPA repositories are contacted via HTTPS whenever it's
   ;; possible. Set it to nil if you have no way to use HTTPS in your
   ;; environment, otherwise it is strongly recommended to let it set to t.
   ;; This variable has no effect if Emacs is launched with the parameter
   ;; `--insecure' which forces the value of this variable to nil.
   ;; (default t)
   dotspacemacs-elpa-https t
   ;; Maximum allowed time in seconds to contact an ELPA repository.
   dotspacemacs-elpa-timeout 5
   ;; If non nil then spacemacs will check for updates at startup
   ;; when the current branch is not `develop'. Note that checking for
   ;; new versions works via git commands, thus it calls GitHub services
   ;; whenever you start Emacs. (default nil)
   dotspacemacs-check-for-update nil
   ;; If non-nil, a form that evaluates to a package directory. For example, to
   ;; use different package directories for different Emacs versions, set this
   ;; to `emacs-version'.
   dotspacemacs-elpa-subdirectory nil
   ;; One of `vim', `emacs' or `hybrid'.
   ;; `hybrid' is like `vim' except that `insert state' is replaced by the
   ;; `hybrid state' with `emacs' key bindings. The value can also be a list
   ;; with `:variables' keyword (similar to layers). Check the editing styles
   ;; section of the documentation for details on available variables.
   ;; (default 'vim)
   dotspacemacs-editing-style 'vim
   ;; If non nil output loading progress in `*Messages*' buffer. (default nil)
   dotspacemacs-verbose-loading nil
   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed. (default 'official)
   dotspacemacs-startup-banner 'official
   ;; List of items to show in startup buffer or an association list of
   ;; the form `(list-type . list-size)`. If nil then it is disabled.
   ;; Possible values for list-type are:
   ;; `recents' `bookmarks' `projects' `agenda' `todos'."
   ;; List sizes may be nil, in which case
   ;; `spacemacs-buffer-startup-lists-length' takes effect.
   ;; (default nil)
   dotspacemacs-startup-lists '((recents . 5)
                                (projects . 7))
   ;; True if the home buffer should respond to resize events.
   dotspacemacs-startup-buffer-responsive t
   ;; Default major mode of the scratch buffer (default `text-mode')
   dotspacemacs-scratch-mode 'text-mode
   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press <SPC> T n to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   dotspacemacs-themes '(monokai
                         spacemacs-dark
                         spacemacs-light
                         solarized-light
                         solarized-dark
                         leuven
                         zenburn
                         smyx)
   ;; If non nil the cursor color matches the state color in GUI Emacs.
   dotspacemacs-colorize-cursor-according-to-state t
   ;; Default font. `powerline-scale' allows to quickly tweak the mode-line
   ;; size to make separators look not too crappy.
   ;; dotspacemacs-default-font '("Source Code Pro"
   dotspacemacs-default-font '("Sauce Code Powerline"
                               :size 18
                               :weight normal
                               :width normal
                               :powerline-scale 1.1)

   ;; dotspacemacs-default-font '("Source Code Pro for Powerline Standard"
   ;;                             :size 18
   ;;                             :weight normal
   ;;                             :width normal
   ;;                             :powerline-scale 1.1)
   ;; The leader key
   dotspacemacs-leader-key "SPC"
   ;; The key used for Emacs commands (M-x) (after pressing on the leader key).
   ;; (default "SPC")
   dotspacemacs-emacs-command-key "SPC"
   ;; The key used for Vim Ex commands (default ":")
   dotspacemacs-ex-command-key ":"
   ;; The leader key accessible in `emacs state' and `insert state'
   ;; (default "M-m")
   dotspacemacs-emacs-leader-key "M-m"
   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it. (default ",")
   dotspacemacs-major-mode-leader-key ","
   ;; Major mode leader key accessible in `emacs state' and `insert state'.
   ;; (default "C-M-m)
   dotspacemacs-major-mode-emacs-leader-key "C-M-m"
   ;; These variables control whether separate commands are bound in the GUI to
   ;; the key pairs C-i, TAB and C-m, RET.
   ;; Setting it to a non-nil value, allows for separate commands under <C-i>
   ;; and TAB or <C-m> and RET.
   ;; In the terminal, these pairs are generally indistinguishable, so this only
   ;; works in the GUI. (default nil)
   dotspacemacs-distinguish-gui-tab nil
   ;; If non nil `Y' is remapped to `y$' in Evil states. (default nil)
   dotspacemacs-remap-Y-to-y$ t
   ;; If non-nil, the shift mappings `<' and `>' retain visual state if used
   ;; there. (default t)
   dotspacemacs-retain-visual-state-on-shift t
   ;; If non-nil, J and K move lines up and down when in visual mode.
   ;; (default nil)
   dotspacemacs-visual-line-move-text nil
   ;; If non nil, inverse the meaning of `g' in `:substitute' Evil ex-command.
   ;; (default nil)
   dotspacemacs-ex-substitute-global nil
   ;; Name of the default layout (default "Default")
   dotspacemacs-default-layout-name "Default"
   ;; If non nil the default layout name is displayed in the mode-line.
   ;; (default nil)
   dotspacemacs-display-default-layout nil
   ;; If non nil then the last auto saved layouts are resume automatically upon
   ;; start. (default nil)
   dotspacemacs-auto-resume-layouts nil
   ;; Size (in MB) above which spacemacs will prompt to open the large file
   ;; literally to avoid performance issues. Opening a file literally means that
   ;; no major mode or minor modes are active. (default is 1)
   dotspacemacs-large-file-size 10
   ;; Location where to auto-save files. Possible values are `original' to
   ;; auto-save the file in-place, `cache' to auto-save the file to another
   ;; file stored in the cache directory and `nil' to disable auto-saving.
   ;; (default 'cache)
   dotspacemacs-auto-save-file-location 'cache
   ;; Maximum number of rollback slots to keep in the cache. (default 5)
   dotspacemacs-max-rollback-slots 5
   ;; If non nil, `helm' will try to minimize the space it uses. (default nil)
   dotspacemacs-helm-resize nil
   ;; if non nil, the helm header is hidden when there is only one source.
   ;; (default nil)
   dotspacemacs-helm-no-header nil
   ;; define the position to display `helm', options are `bottom', `top',
   ;; `left', or `right'. (default 'bottom)
   dotspacemacs-helm-position 'bottom
   ;; Controls fuzzy matching in helm. If set to `always', force fuzzy matching
   ;; in all non-asynchronous sources. If set to `source', preserve individual
   ;; source settings. Else, disable fuzzy matching in all sources.
   ;; (default 'always)
   dotspacemacs-helm-use-fuzzy 'always
   ;; If non nil the paste micro-state is enabled. When enabled pressing `p`
   ;; several times cycle between the kill ring content. (default nil)
   dotspacemacs-enable-paste-transient-state nil
   ;; Which-key delay in seconds. The which-key buffer is the popup listing
   ;; the commands bound to the current keystroke sequence. (default 0.4)
   dotspacemacs-which-key-delay 0.4
   ;; Which-key frame position. Possible values are `right', `bottom' and
   ;; `right-then-bottom'. right-then-bottom tries to display the frame to the
   ;; right; if there is insufficient space it displays it at the bottom.
   ;; (default 'bottom)
   dotspacemacs-which-key-position 'bottom
   ;; If non nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil to boost the loading time. (default t)
   dotspacemacs-loading-progress-bar t
   ;; If non nil the frame is fullscreen when Emacs starts up. (default nil)
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil
   ;; If non nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX. (default nil)
   dotspacemacs-fullscreen-use-non-native nil
   ;; If non nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (default nil) (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup nil
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-active-transparency 90
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'. (default 90)
   dotspacemacs-inactive-transparency 90
   ;; If non nil show the titles of transient states. (default t)
   dotspacemacs-show-transient-state-title t
   ;; If non nil show the color guide hint for transient state keys. (default t)
   dotspacemacs-show-transient-state-color-guide t
   ;; If non nil unicode symbols are displayed in the mode line. (default t)
   dotspacemacs-mode-line-unicode-symbols t
   ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters the
   ;; point when it reaches the top or bottom of the screen. (default t)
   dotspacemacs-smooth-scrolling nil
   ;; If non nil line numbers are turned on in all `prog-mode' and `text-mode'
   ;; derivatives. If set to `relative', also turns on relative line numbers.
   ;; (default nil)
   dotspacemacs-line-numbers 'relative
   ;; Code folding method. Possible values are `evil' and `origami'.
   ;; (default 'evil)
   dotspacemacs-folding-method 'evil
   ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
   ;; (default nil)
   dotspacemacs-smartparens-strict-mode nil
   ;; If non-nil pressing the closing parenthesis `)' key in insert mode passes
   ;; over any automatically added closing parenthesis, bracket, quote, etc…
   ;; This can be temporary disabled by pressing `C-q' before `)'. (default nil)
   dotspacemacs-smart-closing-parenthesis nil
   ;; Select a scope to highlight delimiters. Possible values are `any',
   ;; `current', `all' or `nil'. Default is `all' (highlight any scope and
   ;; emphasis the current one). (default 'all)
   dotspacemacs-highlight-delimiters 'all
   ;; If non nil, advise quit functions to keep server open when quitting.
   ;; (default nil)
   dotspacemacs-persistent-server nil
   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `ag', `pt', `ack' and `grep'.
   ;; (default '("ag" "pt" "ack" "grep"))
   dotspacemacs-search-tools '("ag" "pt" "ack" "grep")
   ;; The default package repository used if no explicit repository has been
   ;; specified with an installed package.
   ;; Not used for now. (default nil)
   dotspacemacs-default-package-repository nil
   ;; Delete whitespace while saving buffer. Possible values are `all'
   ;; to aggressively delete empty line and long sequences of whitespace,
   ;; `trailing' to delete only the whitespace at end of lines, `changed'to
   ;; delete only whitespace for changed lines or `nil' to disable cleanup.
   ;; (default nil)
   dotspacemacs-whitespace-cleanup nil
   ))

(defun my-open-link-function ()
  "Open link, interpreting it a the name of a headline."
  (let* ((el (org-element-context))
         (type (first el))
         (link-type (plist-get (cadr el) :type))
         (path (let ((path-1 (plist-get (cadr el) :path)))
                 (when (stringp path-1)
                   (org-link-unescape path-1)))))
    (when (and (eql type 'link)
               path
               (string= link-type "fuzzy"))
      (let* ((path (regexp-quote path))
             (result
              (delq nil
                    (org-map-entries
                     (lambda ()
                       (when (string-match
                              path
                              (org-get-heading))
                         (list (buffer-file-name) (point))))
                     nil
                     ;; Here we set the scope.
                     ;; 'agenda would search in all agenda files.
                     ;; We want a list of all org files in `my-link-search-directory'.
                     (directory-files
                      my-link-search-directory
                      t "[.]org\\'")))))
        (when result
          (when (> (length result) 1)
            (message "Warning: multiple search results for %s" path))
          (let ((file (caar result))
                (pos (cadar result)))
            (find-file file)
            (goto-char pos)))))))

;; git
;; (git :variables
;;      git-magit-status-fullscreen t
;;      git-enable-github-support t
;;      git-gutter-use-fringe t)
(defun dotspacemacs/user-config ()
  (require 'mu4e-contrib)
  (setq mu4e-html2text-command 'mu4e-shr2text)
  "Configuration function.
   This function is called at the very end of Spacemacs initialization after
   layers configuration."
  (setq dotspacemacs-version-check-enable 'nil)
  (setq nlinum-relative-redisplay-delay 0.1)
  (add-to-list 'exec-path "~/bin")
  ;; active Babel languages
  (org-babel-do-load-languages
   'org-babel-load-languages
   '((java . t)
     ;; (R . t)
     (http . t)
     (dot . t)
     (haskell . t)
     (js . t)
     (latex . t)
     (ruby . t)
     (sh . t)
     (emacs-lisp . t)
     (C . t)
     (plantuml . t)
     (python . t)
     (ditaa . t)
     ))
  (setq restclient-use-org t)
  (setq org-confirm-babel-evaluate nil)
  (defvar yt-iframe-format
    (concat "<iframe width=\"440\""
            " height=\"335\""
            " src=\"https://www.youtube.com/embed/%s\""
            " frameborder=\"0\""
            " allowfullscreen>%s</iframe>"))

  ;; allow spacemacs to be used as GIT_EDITOR
  (global-git-commit-mode t)
  (setq langtool-language-tool-jar "~/LanguageTool/languagetool-commandline.jar")
  (setq org-plantuml-jar-path "~/.emacs.d/plantuml.jar")


  ;; (setq ispell-hunspell-dict-paths-alist '("c:/msys64/mingw64/share"))
  ;; (setq ispell-program-name "hunspell"
  ;;       ispell-dictionary "de_DE")
  ;; (setq ispell-local-dictionary-alist
  ;;       '(("en_US" "[[:alpha:]]" "[^[:alpha:]]" "[']" nil nil nil utf-8)
  ;;         ("de_DE" "[[:alpha:]]" "[^[:alpha:]]" "[']" nil nil nil utf-8)))
  ;; ;; (ispell-set-spellchecker-params)
  ;; (setq ispell-hunspell-add-multi-dic "en_US,de_DE")

  (add-to-list 'ispell-local-dictionary-alist '(("english"
                                                 "[[:alpha:]]"
                                                 "[^[:alpha:]]"
                                                 "[']"
                                                 t
                                                 ("-d" "en_US")
                                                 nil
                                                 utf-8)))
  (add-to-list 'ispell-local-dictionary-alist '(("german"
                                                 "[[:alpha:]]"
                                                 "[^[:alpha:]]"
                                                 "[']"
                                                 t
                                                 ("-d" "de_DE")
                                                 nil
                                                 utf-8)))
  (setq ispell-hunspell-dictionary-alist ispell-local-dictionary-alist)

  ;; (setq ispell-program-name "hunspell"          ; Use hunspell to correct mistakes
  ;; ispell-dictionary   "german") ; Default dictionary to use
  (setq ispell-program-name "hunspell")
  ;; (setq ispell-dictionary "german,english")
  (setq ispell-dictionary "english")
  ;; ispell-set-spellchecker-params has to be called
  ;; before ispell-hunspell-add-multi-dic will work
  (ispell-set-spellchecker-params)
  ;; (ispell-hunspell-add-multi-dic "german,english")
  ;; (ispell-hunspell-add-multi-dic "english")

  (setq mu4e-account-alist
        '(("gmail"
           (mu4e-sent-messages-behavior delete)
           (mu4e-sent-folder "/gmail/sent")
           (mu4e-drafts-folder "/gmail/drafts")
           (mu4e-trash-folder "/gmail/trash")
           (user-mail-address "reza.jelveh@gmail.com")
           (user-full-name "Reza Jelveh"))
          ("sauce"
           (mu4e-sent-messages-behavior delete)
           (mu4e-sent-folder "/sauce/sent")
           (mu4e-drafts-folder "/sauce/drafts")
           (mu4e-trash-folder "/sauce/trash")
           (user-mail-address "reza@saucelabs.com")
           (user-full-name "Reza Jelveh"))
          ("jelveh"
           (mu4e-sent-messages-behavior sent)
           (mu4e-sent-folder "/jelveh/sent")
           (mu4e-drafts-folder "/jelveh/drafts")
           (mu4e-trash-folder "/jelveh/trash")
           (user-mail-address "reza@jelveh.me")
           (user-full-name "Reza Jelveh"))))
  (setq message-send-mail-function 'message-send-mail-with-sendmail
        sendmail-program "/usr/bin/msmtp"
        user-full-name "Reza Jelveh")
  (mu4e/mail-account-reset)
  (setq initial-major-mode 'org-mode)
  (setq org-directory "~/org")
  (setq org-default-notes-file (concat org-directory "/notes.org"))
  (setq org-publish-project-alist
        '(("html"
           :base-directory "~/org/"
           :base-extension "org"
           :publishing-directory "~/org/exports"
           :publishing-function org-html-publish-to-html
           :recursive nil)
          ("books"
           :base-directory "~/org/books"
           :base-extension "org"
           :publishing-directory "~/org/exports/books"
           :publishing-function org-html-publish-to-html)
          ("wiki"
           :base-directory "~/org/wiki"
           :base-extension "org"
           :publishing-directory "~/org/exports/wiki"
           :publishing-function org-html-publish-to-html)
          ("wikipdf"
           :base-directory "~/org/wiki"
           :base-extension "org"
           :publishing-directory "~/org/exports/wiki"
           :publishing-function org-latex-publish-to-pdf)
          ("pdf"
           :base-directory "~/org/"
           :base-extension "org"
           :publishing-directory "~/org/exports"
           :publishing-function org-latex-publish-to-pdf
           :recursive nil)
          ("letters"
           :base-directory "~/org/letters"
           :base-extension "org"
           :publishing-directory "~/org/exports/letters"
           :publishing-function org-koma-letter-export-to-pdf)
          ("slides"
           :base-directory "~/org/slides"
           :base-extension "org"
           :publishing-directory "~/org/exports/slides"
           :publishing-function org-ioslide-export-as-html)
          ("all" :components ("html" "pdf"))))
  (setq org-mobile-inbox-for-pull "~/org/flagged.org")
  (setq org-mobile-directory "~/Dropbox/MobileOrg")
  (setq org-agenda-files '("~/org"
                           "~/org/wiki"
                           "~/org/wiki/regelwerk"
                           "~/org/wiki/pe" ))
  (setq magit-repository-directories '("~/git"))
  (setq-default ycmd-server-command '("python" "~/.vim/plugged/YouCompleteMe/third_party/ycmd/ycmd"))
  (setq-default mac-right-option-modifier nil)
  (setq org-log-done t)
  (setq org-latex-pdf-process (list "latexmk -f -pdf %f"))

  (org-add-link-type "mpv" #'mpv-play)
  (defun org-mpv-complete-link (&optional arg)
    (replace-regexp-in-string
     "file:" "mpv:"
     (org-file-complete-link arg)
     t t))

  (defun org-timer-item--mpv-insert-playback-position (fun &rest args)
    "When no org timer is running but mpv is alive, insert playback position."
    (if (and
        (not org-timer-start-time)
        (mpv-live-p))
        (mpv-insert-playback-position t)
      (apply fun args)))
  (advice-add 'org-timer-item :around
              #'org-timer-item--mpv-insert-playback-position)
  (add-hook 'org-open-at-point-functions #'mpv-seek-to-position-at-point)
  (org-add-link-type
   "yt"
   (lambda (handle)
     (browse-url
      (concat "https://www.youtube.com/embed/" handle)))
   (lambda (path desc backend)
     (cl-case backend
       (html (format yt-iframe-format
                     path (or desc "")))
       (latex (format "\href{%s}{%s}"
                      path (or desc "video"))))))

  (setq org-capture-templates
        '(("ort/checkitem" "Org Repo Checklist Item" checkitem
           (file+headline
            (ort/todo-file)
            "Checklist"))
          ("ort/todo" "Org Repo Todo" entry
           (file+headline
            (ort/todo-file)
            "Todos")
           "* TODO  %?			%T\n %i\n Link: %l\n")
          ("a" "Appointment" entry
           (file+headline "~/org/taskdiary.org" "Calendar")
           "* APPT %^{Description} %^g\n%?\nAdded: %U")
         ("n" "Notes" entry
           (file+datetree "~/org/taskdiary.org")
           "* %^{Description} %^g %?\nAdded: %U")
          ("t" "Todo" entry
           (file+headline "~/org/TODO.org" "Tasks")
           "* TODO %?\n  %i\n  %a")
          ("T" "Task Diary" entry
           (file+datetree "~/org/taskdiary.org")
           "* TODO %^{Description}  %^g\n%?\nAdded: %U")
          ("j" "Journal entry" plain
           (file+datetree+prompt "~/org/personal/journal.org")
           "%K - %a\n%i\n%?\n")
          ("J" "Work Journal" entry
           (file+datetree "~/org/workjournal.org")
           "** %^{Heading}")
          ("l" "Log Time" entry
           (file+datetree "~/org/timelog.org")
           "** %U - %^{Activity}  :TIME:")))


  (setq org-agenda-custom-commands
        '(("x" agenda)
          ("y" agenda*)
          ("w" todo "WAITING")
          ("W" todo-tree "WAITING")
          ("s" todo "STARTED")
          ("S" todo-tree "STARTED")
          ("c" tags "+COMPUTER")
          ("t" tags "+TELEPHONE")
          ("o" . "OFFICE tag searches")
          ("os" tags "+OFFICE+ITIN")
          ("op" tags "+OFFICE+ITE")
          ("oc" tags "+OFFICE+ITA")
          ("ol" tags "+OFFICE+LUNCHTIME")
          ("ot" tags "+OFFICE+TELEPHONE")
          ("or" tags "+OFFICE+RETROSPECTIVE")
          ("od" tags "+OFFICE+DAILYSCRUM")
          ("oa" tags "+OFFICE+ASAP")
          ("h" . "HOME tag searches")
          ("hi" tags "+HOME+MA")
          ("hc" tags "+HOME+COMPUTER")
          ("hp" tags "+HOME+TELEPHONE")
          ("hr" tags "+HOME+VIKI")
          ("W" "Completed and/or deferred tasks from previous week"
           ((agenda "" ((org-agenda-span 7)
                        (org-agenda-start-day "-7d")
                        (org-agenda-entry-types '(:timestamp))
                        (org-agenda-show-log t)))))))


  ;; Common settings for all reviews
  (setq efs/org-agenda-review-settings
        '((org-agenda-files '("~/org"
                              "~/org/wiki"
                              "~/org/wiki/regelwerk"
                              "~/org/wiki/pe" ))
          (org-agenda-show-all-dates t)
          (org-agenda-start-with-log-mode t)
          (org-agenda-start-with-clockreport-mode t)
          (org-agenda-archives-mode t)
          ;; I don't care if an entry was archived
          (org-agenda-hide-tags-regexp
           (concat org-agenda-hide-tags-regexp
                   "\\|ARCHIVE"))
          ))
  ;; Show the agenda with the log turn on, the clock table show and
  ;; archived entries shown.  These commands are all the same exept for
  ;; the time period.
  (add-to-list 'org-agenda-custom-commands
               `("Rw" "Week in review"
                 agenda ""
                 ;; agenda settings
                 ,(append
                   efs/org-agenda-review-settings
                   '((org-agenda-span 'week)
                     (org-agenda-start-on-weekday 0)
                     (org-agenda-overriding-header "Week in Review"))
                   )
                 ("~/org/review/week.html")
                 ))

  (add-to-list 'org-agenda-custom-commands
               `("Rd" "Day in review"
                 agenda ""
                 ;; agenda settings
                 ,(append
                   efs/org-agenda-review-settings
                   '((org-agenda-span 'day)
                     (org-agenda-overriding-header "Week in Review"))
                   )
                 ("~/org/review/day.html")
                 ))

  (add-to-list 'org-agenda-custom-commands
               `("Rm" "Month in review"
                 agenda ""
                 ;; agenda settings
                 ,(append
                   efs/org-agenda-review-settings
                   '((org-agenda-span 'month)
                     (org-agenda-start-day "01")
                     (org-read-date-prefer-future nil)
                     (org-agenda-overriding-header "Month in Review"))
                   )
                 ("~/org/review/month.html")
                 ))

    ; Targets include this file and any file contributing to the agenda - up to 9 levels deep
    (setq org-refile-targets (quote ((nil :maxlevel . 9)
                                     (org-agenda-files :maxlevel . 9))))

    ; Use full outline paths for refile targets - we file directly with IDO
    (setq org-refile-use-outline-path t)

    ; Targets complete directly with IDO
    (setq org-outline-path-complete-in-steps nil)

    ; Allow refile to create parent tasks with confirmation
    (setq org-refile-allow-creating-parent-nodes (quote confirm))

    ; Use IDO for both buffer and file completion and ido-everywhere to t
    (setq org-completion-use-ido t)
    (setq ido-everywhere t)
    (setq ido-max-directory-size 100000)
    (ido-mode (quote both))

    ; Use the current window when visiting files and buffers with ido
    (setq ido-default-file-method 'selected-window)
    (setq ido-default-buffer-method 'selected-window)

    ; Use the current window for indirect buffer display
    (setq org-indirect-buffer-display 'current-window)

    ; Refile settings
    ; Exclude DONE state tasks from refile targets

    (defun bh/verify-refile-target ()
      "Exclude todo keywords with a done state from refile targets"
      (not (member (nth 2 (org-heading-components)) org-done-keywords)))

    (setq org-refile-target-verify-function 'bh/verify-refile-target)

    (setq jiralib-url "http://jira.internal.com")
    (defvar my-link-search-directory "~/org/wiki")

    (add-hook
     'org-open-at-point-functions
     'my-open-link-function)
    "This is were you can ultimately override default Spacemacs configuration.
 This function is called at the very end of Spacemacs initialization."
  ;; use O as org global bindings
  (evil-leader/set-key
    "Oi" 'org-wiki-index
    "Oa" 'org-agenda
    "Og" 'helm-org-agenda-files-headings
    "Oo" 'org-clock-out
    "Oc" 'org-capture
    "OC" 'helm-org-capture-templates ;requires templates to be defined.
    "Ol" 'org-store-link)

  (setq markdown-command "markdown")
  ;; (setq markdown-css-dir "~/.emacs.d/markdown-css/")

  ;; (setq css-theme (expand-file-name  "~/.emacs.d/markdown-css/css/clearness.css"))
  (setq markdown-css-paths (list
                            (concat "file:///" (expand-file-name "~/.emacs.d/css/github-markdown.css"))
                            (concat "file:///" (expand-file-name "~/.emacs.d/css/hljs-github.min.css"))
                            (concat "file:///" (expand-file-name "~/.emacs.d/css/pilcrow.css"))
                            ))
  ;; (setq markdown-css-paths '("~/css/clearness.css"))
  ;; (setq markdown-css-theme "clearness")
  ;; (setq-default git-enable-github-support t)
  ;; (setq-default git-magit-status-fullscreen t)
  (setq powerline-default-separator 'arrow)
  ;; (setq powerline-default-theme 'center)
  ;; (setq powerline-default-separator 'nil))

  (setq magit-repo-dirs '("~/git/"))
  ;; (setq-default dotspacemacs-themes '(smyx))
  ;; (setq-default
  ;; ;; Default theme applied at startup
  ;; (setq-default dotspacemacs-default-theme 'zenburn)

  (eval-after-load 'ox '(require 'ox-koma-letter))
  (eval-after-load 'ox '(require 'ox-confluence))
  (require 'ox-extra)
  (eval-after-load 'ox-koma-letter
    '(progn
       (add-to-list 'org-latex-classes
                    '("my-letter"
                      "\\documentclass\{scrlttr2\}
     \\usepackage[ngerman]{babel}
     \\setkomavar{frombank}{(1234)\\,567\\,890}
     \[DEFAULT-PACKAGES]
     \[PACKAGES]
     \[EXTRA]"))
       (add-to-list 'org-latex-classes
                    '("anotherletter"
                      "\\documentclass\{scrlttr2\}
     \\usepackage[ngerman]{babel}
     \\setkomavar{frombank}{(1234)\\,567\\,890}
     \[DEFAULT-PACKAGES]
     \[PACKAGES]
     \[EXTRA]"))

       (setq org-koma-letter-default-class "my-letter")))

  (eval-after-load 'ox-cv
    '(progn
       (add-to-list 'org-latex-classes
                    '("mymoderncv"
                      "\\documentclass\{moderncv\}
\\moderncvtheme[grey]{classic}
\[NO-DEFAULT-PACKAGES]
\[NO-PACKAGES]
\[EXTRA]"))
       (setq org-export-before-parsing-hook '(ox-cv-export-parse-employment))))
  (ox-extras-activate '(ignore-headlines))
  (setq alert-default-style 'toaster)
  (require 'org-alert)
  ;; (org-alert-enable)
  (setq org-wiki/location "~/org/wiki")

  (setq-default
   ;; js2-mode
   js2-basic-offset 2
   js2-indent-switch-body t
   js-indent-level 2
   ;; web-mode
   css-indent-level 2
   css-indent-offset 2
   web-mode-markup-indent-offset 2
   web-mode-css-indent-offset 2
   web-mode-code-indent-offset 2
   web-mode-attr-indent-offset 2
   tab-width 2
   evil-shift-width 2
   js-indent-level 2
   ruby-indent-level 2
   html-indent-level 2
   indent-tabs-mode nil

   web-mode-code-indent-offset 2
   web-mode-css-indent-offset 2
   web-mode-enable-auto-indentation t
   web-mode-indent-style 2
   web-mode-markup-indent-offset 2
   web-mode-sql-indent-offset 2
   web-mode-code-indent-offset 2
   web-mode-markup-indent-offset 2
   )
  ;; Setting and showing the 80-character column width
  ;; (setq mac-option-modifier 'none)
  ;; (set-fill-column 80)
  ;; (auto-fill-mode t)
  (with-eval-after-load 'web-mode
    (add-to-list 'web-mode-indentation-params '("lineup-args" . nil))
    (add-to-list 'web-mode-indentation-params '("lineup-concats" . nil))
    (add-to-list 'web-mode-indentation-params '("lineup-calls" . nil)))
  (setq golden-ratio-adjust-factor .9
        golden-ratio-wide-adjust-factor .9)

  (setq reftex-default-bibliography '("~/org/bibliography/references.bib"))

  )

(defun dotspacemacs/user-init ()
  ;; (golden-ratio-mode 1)
  (setq evil-want-fine-undo 't)
  ;;  (spacemacs/load-or-install-package 'sx t)
  ;;  (require 'sx-load)
  ;; (setq org-bullets-bullet-list '("■" "◆" "▲" "▶"))
  (setq-default evil-escape-key-sequence "jk")
  (setq paradox-github-token "7693224097823e845d1f39f82ba5fea5a7ae5531")
  (defun add-word-to-personal-dictionary ()
    (interactive)
    (let ((current-location (point))
          (word (flyspell-get-word)))
      (when (consp word)
        (flyspell-do-correct 'save nil (car word) current-location (cadr word) (caddr word) current-location))))

  (let ((langs '("american" "german")))
    (setq lang-ring (make-ring (length langs)))
    (dolist (elem langs) (ring-insert lang-ring elem)))

  (defun cycle-ispell-languages ()
    (interactive)
    (let ((lang (ring-ref lang-ring -1)))
      (ring-insert lang-ring lang)
      (ispell-change-dictionary lang)))

  (global-set-key [f7] 'cycle-ispell-languages)
  ;; (add-hook 'c-mode-hook 'ycmd-mode))
  (defun dired-open-file ()
    "In dired, open the file named on this line."
    (interactive)
    (let* ((file (dired-get-filename nil t)))
      (message "Opening %s..." file)
      (call-process "xdg-open" nil 0 nil file)
      (message "Opening %s done" file)))
  ;; see org-ref for use of these variables
  (setq org-ref-bibliography-notes "~/Documents/Papers/notes.org"
        org-ref-default-bibliography '("~/Documents/Papers/references.bib")
        org-ref-pdf-directory "~/Documents/Papers/")
  (server-start)
  (add-hook 'org-mode-hook (lambda ()
                             (push '(?s . ("#+BEGIN_SRC sh" . "#+END_SRC")) evil-surround-pairs-alist)))
  ;; Font
  ;; (set-face-attribute 'default nil :family "mononoki")
  ;; (set-face-attribute 'default nil :family "NanumGothicCoding")
  ;; (set-face-attribute 'default nil :family "Sauce Code Powerline")
  (set-face-attribute 'default nil :family "Terminus")
  (set-face-attribute 'default nil :height 120)
  (set-face-attribute 'default nil :weight 'normal)
  )

;;  smyx -> flatland -> stekene-dark ->  firebelly -> subatomic
;; wombat
;;  nilfheim background color, irblacks green, hemisu green
;; flatland theme issues: 1. search highlight is to bright
;; 2.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#d2ceda" "#f2241f" "#67b11d" "#b1951d" "#3a81c3" "#a31db1" "#21b8c7" "#655370"])
 '(cua-global-mark-cursor-color "#2aa198")
 '(cua-normal-cursor-color "#839496")
 '(cua-overwrite-cursor-color "#b58900")
 '(cua-read-only-cursor-color "#859900")
 '(evil-want-Y-yank-to-eol t)
 '(highlight-symbol-colors
   (--map
    (solarized-color-blend it "#002b36" 0.25)
    (quote
     ("#b58900" "#2aa198" "#dc322f" "#6c71c4" "#859900" "#cb4b16" "#268bd2"))))
 '(highlight-symbol-foreground-color "#93a1a1")
 '(hl-bg-colors
   (quote
    ("#7B6000" "#8B2C02" "#990A1B" "#93115C" "#3F4D91" "#00629D" "#00736F" "#546E00")))
 '(hl-fg-colors
   (quote
    ("#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36" "#002b36")))
 '(nrepl-message-colors
   (quote
    ("#dc322f" "#cb4b16" "#b58900" "#546E00" "#B4C342" "#00629D" "#2aa198" "#d33682" "#6c71c4")))
 '(org-agenda-files
   (quote
    ("c:/Users/jelveh/org/notes.org" "c:/Users/jelveh/org/refile.org" "c:/Users/jelveh/org/regelwerk.org" "c:/Users/jelveh/org/saucelabs.org" "c:/Users/jelveh/org/taskdiary.org" "c:/Users/jelveh/org/timelog.org" "c:/Users/jelveh/org/workjournal.org")))
 '(package-selected-packages
   (quote
    (focus tldr password-generator org-drill-table ox-pandoc ox-ioslide orgit org org-plus-contrib ox-cv helm-youtube zeal-at-point w3m counsel-dash engine-mode org-wiki org-ref org-glossary x-cv ledger-mode flycheck-ledger wakatime-mode stickyfunc-enhance srefactor nlinum-relative nlinum xwidgete makey ggtags mpv mu4e-maildirs-extension mu4e-alert lua-mode ess-smart-equals ess-R-object-popup ess-R-data-view ctable ess julia-mode powerline spinner parent-mode projectile seq pkg-info epl flx iedit smartparens anzu evil goto-chg undo-tree highlight request diminish bind-key f s helm avy helm-core popup alert log4e gntp markdown-mode gitignore-mode fringe-helper gh logito pcache flyspell-correct-helm magit pos-tip company inf-ruby yasnippet auto-complete vimrc-mode projectile-rails rake inflections git-gutter+ git-gutter feature-mode magit-popup git-commit dash async evil-cleverparens paredit dactyl-mode eclim adoc-mode markup-faces names json-rpc package-build bind-map marshal ht xkcd web-mode web-beautify tagedit sql-indent slim-mode scss-mode sass-mode org-jira org-alert omnisharp less-css-mode json-mode js2-refactor js-doc helm-css-scss evil-snipe emmet-mode confluence company-web company-tern coffee-mode dash-functional tern web-completion-data xml-rpc multiple-cursors js2-mode json-snatcher json-reformat csharp-mode flycheck hydra haml-mode vmd-mode key-chord helm-bibtex biblio parsebib biblio-core pandoc-mode auctex-latexmk plantuml-mode minitest hide-comnt ein websocket pug-mode org-jekyll langtool flyspell-popup flyspell-correct-ivy flyspell-correct spray solarized-theme wgrep smex ivy-hydra counsel-projectile counsel swiper ivy yapfify uuidgen py-isort ox-gfm org-projectile org-download ob-http mwim livid-mode skewer-mode simple-httpd live-py-mode link-hint github-search with-editor eyebrowse evil-visual-mark-mode evil-unimpaired evil-ediff eshell-z dumb-jump company-emacs-eclim column-enforce-mode cargo csv-mode rust-mode grizzl ycmd request-deferred deferred auctex anaconda-mode pythonic elixir-mode ox-reveal macrostep elisp-slime-nav auto-compile packed zonokai-theme zenburn-theme zen-and-art-theme yaml-mode xterm-color ws-butler window-numbering which-key volatile-highlights vi-tilde-fringe use-package underwater-theme ujelly-theme twilight-theme twilight-bright-theme twilight-anti-bright-theme tronesque-theme toxi-theme toml-mode toc-org tao-theme tangotango-theme tango-plus-theme tango-2-theme sunny-day-theme sublime-themes subatomic256-theme subatomic-theme stekene-theme spacemacs-theme spaceline spacegray-theme soothe-theme soft-stone-theme soft-morning-theme soft-charcoal-theme smyx-theme smooth-scrolling smeargle shell-pop seti-theme rvm ruby-tools ruby-test-mode ruby-end rubocop rspec-mode robe reverse-theme reveal-in-osx-finder restclient restart-emacs rbenv ranger rainbow-delimiters railscasts-theme racer quelpa pyvenv pytest pyenv-mode py-yapf purple-haze-theme professional-theme popwin planet-theme pip-requirements phoenix-dark-pink-theme phoenix-dark-mono-theme persp-mode pcre2el pbcopy pastels-on-dark-theme paradox page-break-lines osx-trash organic-green-theme org-repo-todo org-present org-pomodoro org-bullets open-junk-file omtose-phellack-theme oldlace-theme occidental-theme obsidian-theme noctilux-theme niflheim-theme neotree naquadah-theme mustang-theme multi-term move-text monokai-theme monochrome-theme molokai-theme moe-theme mmm-mode minimal-theme material-theme markdown-toc majapahit-theme magit-gitflow magit-gh-pulls lush-theme lorem-ipsum linum-relative light-soap-theme leuven-theme launchctl jbeans-theme jazz-theme ir-black-theme inkpot-theme info+ indent-guide ido-vertical-mode hy-mode hungry-delete htmlize hl-todo highlight-parentheses highlight-numbers highlight-indentation heroku-theme hemisu-theme help-fns+ helm-themes helm-swoop helm-pydoc helm-projectile helm-mode-manager helm-make helm-gitignore helm-flyspell helm-flx helm-descbinds helm-dash helm-company helm-c-yasnippet helm-ag hc-zenburn-theme gruvbox-theme gruber-darker-theme grandshell-theme gotham-theme google-translate golden-ratio gnuplot github-clone github-browse-file gitconfig-mode gitattributes-mode git-timemachine git-messenger git-link git-gutter-fringe git-gutter-fringe+ gist gh-md gandalf-theme flycheck-ycmd flycheck-rust flycheck-pos-tip flx-ido flatui-theme flatland-theme firebelly-theme fill-column-indicator fasd farmhouse-theme fancy-battery expand-region exec-path-from-shell evil-visualstar evil-tutor evil-surround evil-search-highlight-persist evil-numbers evil-mc evil-matchit evil-magit evil-lisp-state evil-indent-plus evil-iedit-state evil-exchange evil-escape evil-commentary evil-args evil-anzu eval-sexp-fu espresso-theme eshell-prompt-extras esh-help erlang dracula-theme django-theme disaster diff-hl define-word dash-at-point darktooth-theme darkmine-theme darkburn-theme dakrone-theme cython-mode cyberpunk-theme company-ycmd company-statistics company-racer company-quickhelp company-c-headers company-auctex company-anaconda colorsarenice-theme color-theme-sanityinc-tomorrow color-theme-sanityinc-solarized cmake-mode clues-theme clean-aindent-mode clang-format chruby cherry-blossom-theme busybee-theme bundler buffer-move bubbleberry-theme bracketed-paste birds-of-paradise-plus-theme badwolf-theme auto-yasnippet auto-highlight-symbol auto-dictionary apropospriate-theme anti-zenburn-theme ansible-doc ansible ample-zen-theme ample-theme alect-themes alchemist aggressive-indent afternoon-theme adaptive-wrap ace-window ace-link ace-jump-helm-line ac-ispell)))
 '(paradox-automatically-star t)
 '(ring-bell-function (quote ignore))
 '(send-mail-function (quote mailclient-send-it))
 '(smartrep-mode-line-active-bg (solarized-color-blend "#859900" "#073642" 0.2))
 '(term-default-bg-color "#002b36")
 '(term-default-fg-color "#839496")
 '(vc-annotate-background-mode nil)
 '(xterm-color-names
   ["#073642" "#dc322f" "#859900" "#b58900" "#268bd2" "#d33682" "#2aa198" "#eee8d5"])
 '(xterm-color-names-bright
   ["#002b36" "#cb4b16" "#586e75" "#657b83" "#839496" "#6c71c4" "#93a1a1" "#fdf6e3"]))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:background nil))))
 '(company-tooltip-common ((t (:inherit company-tooltip :weight bold :underline nil))))
 '(company-tooltip-common-selection ((t (:inherit company-tooltip-selection :weight bold :underline nil)))))
