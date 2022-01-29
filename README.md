# 🪐 好用的`neovim(0.6+)`配置！ 🚀

基于[cosmos-nvim](https://github.com/yetone/cosmos-nvim)配置的自己的neovim配置，带一些简单的注释

安装步骤

1. `git clone https://github.com/WanderHuang/nvim-lua-config-mac.git ~/.config/nvim`
2. `vim +checkhealth`
3. in vim: `:PackerInstall`

## 特殊技能

### 全局查找替换

1. `<space>/`查找项目对应的字符串
2. `<C-q>`把`telescope`查出来的数据导入`quickfix list`
3. `[option]`过滤自己需要修改的数据要使用`cfilter`，加载`:packadd Cfilter`
4. `:Cfilter YOUR_STRING`
5. `:cdo s/ORIGIN/REPLACEMENT/gc`

