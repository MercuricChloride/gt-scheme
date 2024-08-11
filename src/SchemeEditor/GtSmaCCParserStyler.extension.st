Extension { #name : #GtSmaCCParserStyler }

{ #category : #'*SchemeEditor' }
GtSmaCCParserStyler class >> schemeStyler: aParserClass [
	<smaccStyler: #SchemeParser priority: 50>
	^ (self forParser: aParserClass)
		stylerRules:
			{(GtSmaCCNodeStylerRule
				nodeClassName: #MySchemeNumberNode
				styleBlock: [ :styler | styler foreground: Color blue ]).
			(GtSmaCCNodeStylerRule
				nodeClassName: #MySchemeStringNode
				styleBlock: [ :styler | styler foreground: Color green ]).				
			(GtSmaCCNodeVariableStylerRule
				nodeClassName: #SmaCCErrorNode
				variableNames: #(dismissedTokens errorToken)
				styleBlock: [ :styler | styler foreground: Color red ])}
]
