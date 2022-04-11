if exists("b:current_syntax")
    finish
endif


syntax case match

syntax keyword ebnfUniversal U

syntax match ebnfAssignmentMark /::=/
syntax match ebnfBranchOp       /|/
syntax match ebnfContiguousOp   /->/
syntax match ebnfEscapeSequence /\\./ contained
syntax match ebnfExceptionOp    /-/
syntax match ebnfIdentifier     /[a-zA-Z_][a-zA-Z0-9_]*/
syntax match ebnfOptionalOp     /?/
syntax match ebnfPresenceOp     /+/
syntax match ebnfRepetitionOp   /\*/

syntax region ebnfCharClass start=/\[\@<=/ end=/]\@=/
syntax region ebnfComment   start=/#/      end=/$/
syntax region ebnfComment   start=/(\*/    end=/\*)/
syntax region ebnfString    start=/"/ skip=/\\"/ end=/"/ contains=ebnfEscapeSequence
syntax region ebnfString    start=/'/ skip=/\\'/ end=/'/ contains=ebnfEscapeSequence

highlight link ebnfAssignmentMark Special
highlight link ebnfBranchOp       Operator
highlight link ebnfCharClass      Constant
highlight link ebnfComment        Comment
highlight link ebnfContiguousOp   Operator
highlight link ebnfEscapeSequence Special
highlight link ebnfExceptionOp    Operator
highlight link ebnfIdentifier     Identifier
highlight link ebnfOptionalOp     Operator
highlight link ebnfPresenceOp     Operator
highlight link ebnfRepetitionOp   Operator
highlight link ebnfString         String
highlight link ebnfUniversal      Special


let b:current_syntax = "ebnf"
