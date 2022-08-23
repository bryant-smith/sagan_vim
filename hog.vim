" Sagan Hi Link
hi link SaganComment	Comment
hi link SaganTodo	Todo
hi link SaganRuleOption Keyword
hi link SaganRuleOptionJson Comment
hi link SaganRuleOptionMeta Comment
hi link SaganRuleOptionOther Comment
hi link SaganVar	Type
hi link SaganMsgProduct	PreProc


" Hog keywords
syn keyword     HogRuleProto	skipwhite nextgroup=HogRuleSrcIP any
syn keyword     HogRuleOption   skipwhite contained nextgroup=HogRuleSROP

" Sagan keywords
syn keyword	SaganRuleOption	skipwhite contained nextgroup=SaganRuleOption after alert_time blacklist bluedot country_code default_proto default_dst_port default_src_port dynamic_load email event_id external syslog_facility flexbits flexbits_pause
syn keyword	SaganRuleOption	skipwhite contained nextgroup=SaganRuleOptionJson syslog_level nocase offset parse_port parse_proto parse_proto_program parse_hash parse_src_ip pcre priority reference rev sid syslog_tag threshold within xbits xbits_pause xbits_unpause
syn keyword	SaganRuleOptionJson	skipwhite contained nextgroup=HogRuleSROP json_content json_nocase json_contains json_pcre json_meta_content json_meta_nocase json_meta_contains json_map
syn keyword	SaganRuleOptionMeta	skipwhite contained nextgroup=HogRuleSROP meta_content meta_depth meta_distance meta_offset meta_nocase meta_within
syn keyword	SaganRuleOptionOther	skipwhite contained nextgroup=HogRuleSROP normalize program zeek_intel

syn keyword	SaganTodo	TODO NOTE ALTER contained
"syn keyword	SaganVar	sagan contained
syn match	SaganVar	"%sagan%" contained
syn match	SaganMsgProduct	"\v\[[a-zA-Z-_]+\]" contained


" Sagan Region
syn region	SaganComment	start="#" end="$" contains=SaganTodo

" Hog Region
syn region      HogString     contained start='"' end='"' extend oneline contains=HogHexEsc,SaganVar,SaganMsgProduct
syn region      HogRuleBlock      start="(" end=")" transparent skipwhite contained contains=HogRuleOption,HogComment,SaganRuleOption,SaganRuleOptionJson,SaganRuleOptionMeta,SaganRuleOptionOther fold




"syn keyword HogTodo   XXX TODO NOTE contained
"syn match   HogTodo   "Step\s\+#\=\d\+" contained
"syn region HogComment start="#" end="$" contains=HogTodo,@Spell


" syn region      HogRuleSROP     start=':' end=";" transparent keepend contained contains=HogRuleChars,HogString,HogNumber
" syn match       HogFileType   /^\s*file.*$/ transparent contains=HogFileTypeOpt,HogFileFROP
" syn keyword     HogFileTypeOpt  skipwhite contained nextgroup=HogRuleFROP file type ver category id rev content offset msg group
" syn region      HogFileFROP  start=':' end=";" transparent keepend contained contains=NotASemicoln

