" Vim syntax file
" Language: Sollya
" Maintainer: Hugues de Lassus Saint-Geniès
" Version: 0.4beta
" Latest Revision: January 22, 2016

if exists("b:current_syntax")
  finish
endif

" Keywords
syn keyword sollyaKeywords begin end var
      \ if then else
      \ while do
      \ for from to by in
      \ proc procedure return
      \ externalproc bind
      \ match with default
      \ list of
syn keyword sollyaKeywords _x_

"" Predefined functions and operators
"syn keyword sollyaOperators ! != && () * + , - .  ...  .: / :.  := ; < = == >
"      \ \@ \{ [\| \|] \|\| \} \~ \[ \] \^

syn keyword sollyaConstants HP SG D DD TD QD
      \ halfprecision single double doubledouble tripledouble quad
      \ RD RN RU RZ
      \ infty NaN
      \ pi Pi

syn keyword sollyaSpecialValues absolute relative
      \ false true
      \ fixed floating
      \ file
      \ honorcoeffprec
      \ off on
      \ error
      \ postscript postscriptfile
      \ perturb

syn keyword sollyaDisplayValues binary decimal dyadic hexadecimal powers

" FIXME
syn keyword sollyaUndocumented
      \ coeff
      \ composepolynomials
      \ degree
      \ exponent
      \ externalproc
      \ guessdegree
      \ length
      \ mantissa
      \ mid
      \ objectname
      \ precision
      \ printsingle printxml
      \ readfile readxml
      \ rename
      \ time
      \ zerodenominators

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

syn keyword sollyaCommands accurateinfnorm
      \ annotatefunction
      \ asciiplot
      \ autodiff
      \ bashevaluate
      \ bashexecute
      \ canonical
      \ chebyshevform
      \ checkinfnorm
      \ denominator
      \ dirtyfindzeros
      \ dirtyinfnorm
      \ dirtyintegral
      \ dirtysimplify
      \ evaluate
      \ execute
      \ externalplot
      \ findzeros
      \ fpminimax
      \ getbacktrace
      \ getsuppressedmessages
      \ head
      \ horner
      \ implementconstant
      \ implementpoly
      \ inf
      \ infnorm
      \ integral
      \ isbound
      \ isevaluable
      \ library
      \ libraryconstant
      \ nop
      \ numberroots
      \ numerator
      \ parse
      \ plot
      \ print printbinary printdouble printexpansion printfloat printhexa
      \ quit
      \ rationalapprox
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
      \ unsuppressmessage
      \ version
      \ worstcase

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
syn match sollyaComments "//.*$" contains=sollyaTodo

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
syn region sollyaComments start='/\*' end='\*/' contains=sollyaTodo

let b:current_syntax = "sollya"

" Highlights bindings
hi def link sollyaTodo                  Todo
hi def link sollyaComments              Comment

hi def link sollyaStrings               Constant
hi def link sollyaConstants             Constant
hi def link sollyaSpecialValues         Constant
hi def link sollyaNumbers               Constant
hi def link sollyaDisplayValues         Constant

hi def link sollyaKeywords              Statement
hi def link sollyaFunctions             Statement
hi def link sollyaSpecialFunctions      Statement
hi def link sollyaCommands              Statement
hi def link sollyaUndocumented          Statement
hi def link sollyaGlobalVariables       Statement

hi def link sollyaTypes                 Type

hi def link sollyaIdentifiers           NONE
