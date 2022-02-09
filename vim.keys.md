## 模式

- normal
- insert
- visual
- visual line
- terminal
- window

## 原生键位

> 减少`Google`次数

- `h j k l` 左下上右 一步
- `w b` 左右 文本跨越
- `zz` 光标放在中间
- `<C-c> <Esc>` 从`insert`模式到`normal`模式
- `yy` 复制一行，`y`表示`yank`，从当前位置复制到内存「注意不是复制到剪切板」
- `<C-v>` 多行选择
- `V` 进入`Visual Line Mode`，此时`j k`可以按行选择高亮区域
- `v` 进入`Visual Mode`
- `dd` 删除一行
- `p` 粘贴，`P` 向上粘贴
- `:reg` 查看`cmd`注册器，`delete`和`yank`的内容
- `u` undo
- `<C-r>` redo
- `:map` 查看键位映射，其他模式同理，比如`:nmap`
- `"*y` 复制到剪切板，`"{regsiter}`为`delete`、`yank`等服务
- `:set number` 显示行号，`:set relativenumber`显示相对的行号
- `:set scrolloff=n` 设置滚动偏移量，光标能到的最底部
- `:echo stdpath("config")` 显示当前`vim`的配置文件地址，把`config`改为`data`则显示`vim`的数据缓存地址
- `<C-n>`和`<C-p>`可以在选项菜单中实现光标的上下移动，比如`:h ex`出现的选项，可以用这两个命令上下选择
- `<C-w>` 和窗口相关
- `netrw` 可以使用`:Ex` `:Vex`搜索`Buffer`，「explore」
- `:so %` 表示`source`当前文件

## 原生`.vimrc`配置格式

可以设置的选项称为`options`，可以使用`:h options`查看你可以用的选项，然后用`:h xxx`查看可以配置的那些参数信息，比如`:h expandtab`、`:h shiftwidth`

- `nmap nnoremap`区别，前者会循环展开「rhs会继续作为lhs直到无法展开取最后一个rhs执行」，后者仅展开当前命令「仅执行rhs」。
```vimrc
set number
set scrolloff=8
```
