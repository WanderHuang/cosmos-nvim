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
- `m {key}`标记一个mark，在其他地方可以使用`' {key}`跳转回去，`:delm[arks] A-Z0-9`清空标记
- `_`跳转到行首第一个非空格字符
- `dt"`删除到下一个`"`，比如`abc "xxx" abc`删除为`"xxx" abc`
- `'` 调用标签
- `"` 调用寄存器

## 原生`.vimrc`配置格式

可以设置的选项称为`options`，可以使用`:h options`查看你可以用的选项，然后用`:h xxx`查看可以配置的那些参数信息，比如`:h expandtab`、`:h shiftwidth`

- `nmap nnoremap`区别，前者会循环展开「rhs会继续作为lhs直到无法展开取最后一个rhs执行」，后者仅展开当前命令「仅执行rhs」。
```vimrc
set number
set scrolloff=8
```

##  原生能力

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
6. `packadd cfilter` 增加过滤功能，然后可以使用`:Cfilter REG`

### 宏

1. `q {key} {Motions} q` 使用`q`开始和`q`结束
2. `q a Vyp q`表示记录一个宏`@a`，宏的动作为`Vyp`，复制行并粘贴，宏定义好之后就可以使用`@a`调用`Vyp`这个连续的操作


### buffer处理

1. `:%bd|e#` 关闭所有buffer并打开最后一个buffer

