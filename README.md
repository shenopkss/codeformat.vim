# codeformater.vim
可能是世界上最好用的vim代码格式化插件，目前支持：
- html
- json

## 依赖
- python3
- http://tool.oschina.net 

## 安装
手动或使用vim插件管理器

## 使用(插件已配置) 
`noremap <Leader>hf :call HtmlCodeFormat()<CR><Esc>:set filetype=html<CR>`

`noremap <Leader>jf <Esc>:%!python -m json.tool<CR><Esc>:set filetype=json<CR>`

