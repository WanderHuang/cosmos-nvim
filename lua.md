# `nvim`中使用`lua`

参见[nvim-lua-guide-zh](https://github.com/glepnir/nvim-lua-guide-zh)

## `lua`语法

```lua
-- pcall() 返回 true false
-- if ... then ... else ... end 分支语法

-- luaeval() 把字符串转换到Vimscript的类型，第二个参数可选，替换_A可以访问全局变量
let dict = luaeval('{foo = "bar", baz = "qux"}')
echo luaeval('_A[1] + _A[2]', [1,2]) -- 2

-- 函数语法
function a()

end

-- neovim 暴露的API，全局变量vim
-- _G可以挂载全局变量


-- 模块
local a = {} -- 本地变量

a.name = "module name"

function a.abc() -- 模块方法

end

return a -- 返回模块
```

- `vim.inspect`: 把 Lua 对象以更易读的方式打印（在打印 Lua table 时会很有用）
- `vim.regex`: 在 Lua 中使用 Vim 寄存器
- `vim.api`: 暴露 vim 的 API(:h API) 的模块（别的远程调用也是调用同样的 API)
- `vim.loop`: Neovim 的 event lopp 模块（使用 LibUV)
- `vim.lsp`: 控制内置 LSP 客户端的模块
- `vim.treesitter`: 暴露 tree-sitter 库中一些实用函数的模块

## `VimScript`语法
```vim
" v:lua允许从vim中调用lua函数
call v:lua.print('hello lua')

" 调用lua脚本
lua << EOF
  function hello()
    print('hello lua')
  end
EOF

" 示例，使用statusline
lua << EOF
function _G.statusline()
    local filepath = '%f'
    local align_section = '%='
    local percentage_through_file = '%p%%'
    return string.format(
        '%s%s%s',
        filepath,
        align_section,
        percentage_through_file
    )
end
EOF

set statusline=%!v:lua.statusline()
```