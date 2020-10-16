if exists('g:no_vim_conceal') || !has('conceal') || &enc != 'utf-8'
  finish
endif

" comparators
syntax match pyOperator "<=" conceal cchar=≤
syntax match pyOperator ">=" conceal cchar=≥
syntax match pyOperator "!=" conceal cchar=≢
syntax match pyOperator "==" conceal cchar=≡
syntax match pyOperator "->" conceal cchar=→

" operators
syntax match pyOperator " / " conceal cchar=÷
syntax match pyOperator " \* " conceal cchar=×
syntax match pyOperator " = " conceal cchar=←

" keywords
syntax keyword pyStatement assert conceal cchar=!!
syntax keyword pyOperator sum conceal cchar=∑
syntax keyword pyStatement lambda conceal cchar=λ
syntax keyword pyStatement return conceal cchar=∴
syntax keyword pyStatement def conceal cchar=ƒ
syntax keyword pyStatement int conceal cchar=ℤ
syntax keyword pyStatement float conceal cchar=ℝ
syntax keyword pyStatement complex conceal cchar=ℂ
syntax keyword pyStatement bool conceal cchar=𝔹
syntax keyword pyStatement None conceal cchar=∅
syntax keyword pyStatement str conceal cchar=𝐒
syntax keyword pyStatement list conceal cchar=ι
syntax keyword pyStatement Callable conceal cchar=Ƒ

hi link pyOperator Operator
hi link pyStatement Statement
hi link pyKeyword Keyword
hi! link Conceal Operator

setlocal conceallevel=1
