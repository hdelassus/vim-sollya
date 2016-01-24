" Vim syntax file
" Language: Sollya
" Maintainer: Hugues de Lassus Saint-Geniès
" Version: 0.4beta
" Latest Revision: January 22, 2016

if exists("b:current_syntax")
  finish
endif

" Keywords
syn keyword sollyaBlock begin end
syn keyword sollyaConditional if then else match with
syn keyword sollyaLabel default
syn keyword sollyaRepeat while do for from to by in
syn keyword sollyaStatement return proc procedure
syn keyword sollyaDecl list of var
syn keyword sollyaFreeVar _x_

"" Predefined functions and operators
"syn keyword sollyaOperators ! != && () * + , - .  ...  .: / :.  := ; < = == >
"      \ \@ \{ [\| \|] \|\| \} \~ \[ \] \^

syn keyword sollyaConstants HP SG D DD TD QD
      \ halfprecision single double doubledouble tripledouble quad
      \ RD RN RU RZ
      \ infty NaN
      \ pi Pi

syn keyword sollyaBoolean
      \ false true

syn keyword sollyaSpecialValues absolute relative
      \ fixed floating
      \ file
      \ honorcoeffprec
      \ off on
      \ error
      \ postscript postscriptfile
      \ perturb

syn keyword sollyaDisplayValues binary decimal dyadic hexadecimal powers

syn keyword sollyaFunctions abs
      \ acos
      \ acosh
      \ asin
      \ asinh
      \ atan
      \ atanh
      \ cos
      \ cosh
      \ diff
      \ DE
      \ doubleextended
      \ erf
      \ erfc
      \ ceil
      \ exp
      \ expm1
      \ floor
      \ log log10 log1p log2
      \ max
      \ min
      \ nearestint
      \ remez
      \ revert
      \ sin sinh
      \ sqrt
      \ subpoly
      \ sup
      \ supnorm
      \ tan tanh
      \ write

syn keyword sollyaGlobalVariables autosimplify
      \ canonical
      \ diam
      \ dieonerrormode
      \ display
      \ fullparentheses
      \ hopitalrecursions
      \ midpointmode
      \ points
      \ prec
      \ rationalmode
      \ roundingwarnings
      \ taylorrecursions
      \ timing
      \ verbosity

syn match sollyaSpecialFunctions display "\(SG\|D\|DD\|TD\|HP\|QD\) *("he=e-1
syn match sollyaSpecialFunctions display "\(single\|double\) *("he=e-1
syn match sollyaSpecialFunctions display "\(doubledouble\|tripledouble\) *("he=e-1
syn match sollyaSpecialFunctions display "\(halfprecision\|quad\) *("he=e-1

syn keyword sollyaCommands
      \ accurateinfnorm
      \ annotatefunction
      \ asciiplot
      \ autodiff
      \ bashevaluate
      \ bashexecute
      \ bind
      \ canonical
      \ chebyshevform
      \ checkinfnorm
      \ coeff
      \ composepolynomials
      \ degree
      \ denominator
      \ dirtyfindzeros
      \ dirtyinfnorm
      \ dirtyintegral
      \ dirtysimplify
      \ evaluate
      \ execute
      \ exponent
      \ externalplot
      \ externalproc
      \ findzeros
      \ fpminimax
      \ getbacktrace
      \ getsuppressedmessages
      \ guessdegree
      \ head
      \ horner
      \ implementconstant
      \ implementpoly
      \ inf
      \ infnorm
      \ integral
      \ isbound
      \ isevaluable
      \ length
      \ library
      \ libraryconstant
      \ mantissa
      \ mid
      \ nop
      \ numberroots
      \ numerator
      \ objectname
      \ parse
      \ plot
      \ precision
      \ print printbinary printdouble printexpansion printfloat printhexa
      \ printsingle printxml
      \ quit
      \ rationalapprox
      \ readfile readxml
      \ rename
      \ restart
      \ round roundcoefficients roundcorrectly
      \ searchgal
      \ showmessagenumbers
      \ simplify
      \ sort
      \ substitute
      \ sup
      \ suppressmessage
      \ tail
      \ taylor taylorform
      \ time
      \ unsuppressmessage
      \ version
      \ worstcase
      \ zerodenominators

syn keyword sollyaTypes
      \ boolean
      \ constant
      \ function
      \ integer
      \ object
      \ range
      \ string
      \ void

syn keyword sollyaTodo contained TODO FIXME XXX NOTE

syn case ignore
"" Literal Numbers
" Decimal FP numbers
syn match sollyaNumbers     display "\d\+\.\=\d*"
syn match sollyaNumbers     display "\.\=\d*"
" Decimal FP numbers with exponent e or E
syn match sollyaNumbers     display "\d\+\(\.\d\+\)\=e[-+]\=\d\+"
syn match sollyaNumbers     display "\.\d\+e[-+]\=\d\+"
" Decimal FP numbers with exponent b or B
syn match sollyaNumbers     display "\d\+b[-+]\=\d\+"
" Binary FP numbers
syn match sollyaNumbers     display "[01]\+\.\=[01]*_2"
syn match sollyaNumbers     display "\.[01]\+_2"
" Hexadecimal FP numbers
syn match sollyaNumbers     display "0x\x\+\(\.\x*\)\=p[-+]\=\d\+"

"" Identifiers
syn match sollyaIdentifiers display "[_a-z]\+[_a-z0-9]*"
syn case match

" Regions
syn region sollyaStrings  start='"'   end='"' skip='\\"'
syn region sollyaCommentL start='//'  end='$' skip='\\$' contains=sollyaTodo
syn region sollyaComment  start='/\*' end='\*/' contains=sollyaTodo

let b:current_syntax = "sollya"

" Highlights bindings
hi def link sollyaTodo                  Todo
hi def link sollyaCommentL              sollyaComment
hi def link sollyaComment               Comment

hi def link sollyaStrings               String
hi def link sollyaConstants             Constant
hi def link sollyaSpecialValues         Constant
hi def link sollyaNumbers               Float
hi def link sollyaDisplayValues         Constant
hi def link sollyaBoolean               Boolean

hi def link sollyaBlock                 Keyword
hi def link sollyaConditional           Conditional
hi def link sollyaLabel                 Label
hi def link sollyaRepeat                Repeat
hi def link sollyaStatement             Statement
hi def link sollyaDecl                  Keyword
hi def link sollyaFreeVar               Keyword
hi def link sollyaFunctions             Statement
hi def link sollyaSpecialFunctions      Statement
hi def link sollyaCommands              Statement
hi def link sollyaGlobalVariables       Statement

hi def link sollyaTypes                 Type

hi def link sollyaIdentifiers           NONE
