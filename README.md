# .emacs.d
## git cloneしたあとにやるやつ
```M-x package-install-selected-packages```

    $ cd ~/.emacs.d/site-lisp
    $ curl -LO https://raw.githubusercontent.com/emacs-jp/init-loader/master/init-loader.el
    $ cd ~/.emacs.d/themes
    $ curl -LO https://github.com/emacs-jp/replace-colorthemes/raw/master/desert-theme.el
    $ git clone --recursive https://github.com/capitaomorte/yasnippet ~/.emacs.d/site-lisp/yasnippet
    $ git clone https://github.com/jaypei/emacs-neotree.git ~/.emacs.d/site-lisp/neotree
    # 以下Macのみ
    $ git clone git://github.com/hayamiz/twittering-mode.git ~/.emacs.d/site-lisp/twittering-mode


## package-installする必要がある設定ファイル
``` M-x package-install-selected-packages ``` やっておけば大丈夫かも

各設定ファイルを開いて`;;;(package-install ~`の行末尾で`C-x C-e`でインストール可能

- 01_use-package.el
- 05_nlinum.el
- 08_ido-mode.el
- 10_company-mode.el
- 50_multi-term.el
- 60_markdown.el
- 60_php-mode.el
- 61_open-junk-file.el
- 62_rinari.el

## 参考
[akisute3](https://github.com/akisute3/dotfiles/tree/master/.emacs.d)

