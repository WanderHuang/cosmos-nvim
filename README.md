# 🪐 好用的`neovim(0.6+)`配置！ 🚀

基于[cosmos-nvim](https://github.com/yetone/cosmos-nvim)配置的自己的neovim配置，带一些简单的注释

## 展示

<img width="1657" alt="截屏2022-02-15 上午9 59 27" src="https://user-images.githubusercontent.com/18475942/153978311-2088edab-dc6f-40b5-88ef-12f1baf1363d.png">

### 功能

- [x] 文件树
- [x] 模糊查找：全局查找
- [x] `LSP`：语法检查、格式化、错误处理等
- [x] 文件查找：文件名查找
- [x] `Git`：状态、图表
- [x] 帮助按键：`<leader> <Space>`

## 安装使用

前置依赖

1. 搜索工具`ripgrep`, `fd`

安装步骤

1. `git clone https://github.com/WanderHuang/nvim-config-lua-mac.git ~/.config/nvim`
2. `vim +checkhealth`
3. in vim: `:PackerInstall`

## 一般技能

写了一些常用键位记忆的清单，可以[在这里提取](./vim.keys.md)

## 特殊技能

### 全局查找替换

1. `<space>/`查找项目对应的字符串
2. `<C-q>`把`telescope`查出来的数据导入`quickfix list`，配合映射的`C-j C-k`可以快速修复
3. `[option]`过滤自己需要修改的数据要使用`cfilter`，加载`:packadd Cfilter`
4. `:Cfilter YOUR_STRING`
5. `:cdo s/ORIGIN/REPLACEMENT/gc` 在所有`quickifix list`中执行一条命令

