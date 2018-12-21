
## Adding a single plugin / module

adding the plugin by username/projectname as a git submodule
in the directory with the name equal to the vim plugin

separate plugins go in `pack/3rd/start`
javascript related go in `pack/javascript/start`

if there are any optional plugins, they go in `pack/3rd/opt`

examples:

```bash
git submodule add --name 'tpope/vim-fugitive' https://github.com/tpope/vim-fugitive.git pack/3rd/start/fugitive	

git submodule add --name 'cormacrelf/vim-colors-github' https://github.com/cormacrelf/vim-colors-github.git pack/colors/opt/github
```
