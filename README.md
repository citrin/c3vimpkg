VIM packages used by me (citrin)
================================

This repo was created to simplify updating vim packages I use.

Use
---

    mkdir -p ~/.vim/pack && cd ~/.vim/pack && git clone --recursive git@github.com:citrin/c3vimpkg.git

Add plugin
----------

    git submodule add https://github.com/pluginname ./opt/pluginname

Update vim plugins
------------------

    git submodule update --remote --merge

Then commit to github:

    git commit -am "Update plugins"


Remove plugin
-------------

    git submodule deinit vim/pack/mypackages/start/nameofplugin
    git rm vim/pack/mypackages/start/nameofplugin
    rm -Rf .git/modules/vim/pack/mypackages/start/nameofplugin

