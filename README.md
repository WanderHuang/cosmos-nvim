# 🪐 好用的`neovim(0.6+)`配置！ 🚀

基于[cosmos-nvim](https://github.com/yetone/cosmos-nvim)配置的自己的neovim配置，带一些简单的注释

前置依赖

1. 搜索工具`ripgrep`, `fd`

安装步骤

1. `git clone https://github.com/WanderHuang/nvim-lua-config-mac.git ~/.config/nvim`
2. `vim +checkhealth`
3. in vim: `:PackerInstall`

## 一般技能

写了一些常用键位记忆的清单，可以[在这里提取](./vim.keys.md)

## 特殊技能

### 查找替换

1. `/ORIGIN`查找
2. `:s/ORIGIN/REPLACE`查找替换，当前行查找，也可以`:1,3/ORIGIN/REPLACE`表示替换第一行到第三行
3. `visual mode`同样适用，可以用来区域替换
4. `:%s`表示全文`:1,$`，从第一行到最后一行
5. `:s/ORIGIN/REPLACE/g`中`/g`和正则里面一个意思，一行
6. `/c`会出现确认提示，`yes/no`，配合使用`/gc`

### quickfix

这个列表用于快速跳转修复，属于原生能力，非常好用

1. 在查找列表中使用`<tab>`可以选择可以把哪些文件添加到`quickfix list`，然后按`<CR>`可以添加
2. 映射了`C-j C-k`为`:cnext :cprev`
3. `:copen`打开
4. `:cclose`关闭
5. `:cexpr []`清空`quickfix list`

### 全局查找替换

1. `<space>/`查找项目对应的字符串
2. `<C-q>`把`telescope`查出来的数据导入`quickfix list`，配合映射的`C-j C-k`可以快速修复
3. `[option]`过滤自己需要修改的数据要使用`cfilter`，加载`:packadd Cfilter`
4. `:Cfilter YOUR_STRING`
5. `:cdo s/ORIGIN/REPLACEMENT/gc` 在所有`quickifix list`中执行一条命令

