
# Future Plugins (maybe)

## flash.nvim DONE
flash.nvim allows you to have more precise control over how you move around in your neovim
- [this video](https://www.youtube.com/watch?v=rdFaTJPHQwg) shows a demo of how it works
- [flash.nvim](https://github.com/folke/flash.nvim) is the link to the github page

## trouble.nvim DONE
trouble.nvim is a pretty way of showing errors and helping you solve these errors
- [trouble.nvim](https://github.com/folke/trouble.nvim) this is the link to the github page

## mini.ai DONE
mini.ai allows you to extend a and i so if I am nested parenthese (()) I can do i( again and go to the outer ones
- [mini.ai](https://github.com/nvim-mini/mini.ai) this is the link to the github page

## aerial.nvim or outline.nvim
these plugins allow for you to skin through code via the functions in your code which is pretty cool
- [aerial.nvim](https://github.com/stevearc/aerial.nvim)
- [outline.nvim](https://github.com/hedyhli/outline.nvim)

## dashboard.nvim
this is purely for ricing but it could also allow me to get to my nvim config easier
- [dashboard.nvim](https://github.com/nvimdev/dashboard-nvim)

## neo-tree.nvim
a tree structure at the side of the screen similar to vscode. I am not sure if it is optimal but it definetely could be good to do
- [neo_tree.nvim](https://github.com/nvim-neo-tree/neo-tree.nvim)

## lualine.nvim DOING MINI.STATUSLINE
I removed lualine because it wasn't following transparency of nvim. I do like having a shnazzy statusline so I might program my own.
- [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
- can also do the mini statusline 

## luasnip
luasnip will allow me to generate code snippets which could speed up development. I am unsure if I like it however becaue it is a little bit destracting
- [luasnip](https://github.com/L3MON4D3/LuaSnip)

## which-key.nvim
if my config grows enough and I have enough plugins then I potentially should add which-key to help me remember all of them.
- [which-key.nvim](https://github.com/folke/which-key.nvim)

## todo-comments.nvim
this is just a QOL change that will make TODO look very bold and noticeable 
- [todo-comments.nvim](https://github.com/folke/todo-comments.nvim)

## other thoughts on plugins
I don't think i should necessarily go insane on all the plugins. this is because I have to learn them all. One thing I think could be good is more git integration (even though I already have fugitive) if there was ever a git diff problem in the past I would always go to vscode to solve that which I really shouldn't so yeah


# I think I will remove yazi.nvim

# Problems to solve
### Editing problems
I am pretty bad at navigating through directories. I think using harpoon more will make it better, but I should also edit my netrw to work similar to yazi. 
netrw changes:
- put on relative line numbers
- display how to add a file and all the commands on the top
I could also use something like neo-tree.nvim but I have a feeling that it won't feel that fast. Additionaly, my typing speed is pretty bad and I am not very good with the nvim keybindings and navigating within a file. I am able to move up and down with <C-u> or <C-d> but it doesn't feel precise enough. I think that having outline.nvim or aerial.nvim should make moving within a large file easier to do. 

**IMPORTANT** I am thinking of creating a keybind <jj> in order to enter normal mode. I think this would be faster but I need to figure out how I would type jj normally if I was editing something like a markdown file. Maybe I make it so that it is toggleable? 

TL;DR
- bad at in file navigation. should use flash.nvim to help with this a bit
- bad at directory navigation. Should improve netrw and allow for opening in side and in main buffer (should replace yazi)
- I want to delete yazi
- I need better lsp integration 

**IMPORTANT** I already have a lot of good tools in order to navigate through files and everything. I should learn how to use them.

### portability problems
I want this to be easily downloadable and works out of the box when I put it on my macbook for work. I also want to have only the nixos config as the main option which hopefully shouldn't be a big deal. 
**IMPORTANT** figure out the best way to be compatible and work with nixos and also move to the macbook

### visual improvements
If I have freetime I should add a dashboard and a lualine. I should also improve the look of everythin in my configuration. 

