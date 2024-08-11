Class {
	#name : #SchemeParser,
	#superclass : #SmaCCParser,
	#category : #SchemeEditor
}

{ #category : #'generated-accessing' }
SchemeParser class >> cacheId [
	^'2024-08-10T21:23:34.00678-07:00'
]

{ #category : #generated }
SchemeParser class >> definitionComment [
"%root Program;
%prefix MyScheme;
%suffix Node;
%annotate_tokens;

<lparen>
	: \(
	;
<number>
	:  [0-9]+
	;
<string>
	: \"" .* \""
	;
<symbol>
	: \w+
	;
<rparen>
	: \)
	;
<whitespace>
	: \s+
	;
<quote>
	: \'
	;Start
	:	(Form 'form' )+ {{}}
	;
Form
	: <quote> Form 'form' {{Quote}}
	|	Atom 
	|	List 
	;
List
	:	<lparen> (Form 'form' )+ <rparen> {{}}
	;
Atom
	:	<number> 'value' {{Number}}
	|	<string> 'value' {{String}}
	|	<symbol> 'value' {{Symbol}}
	;"
]

{ #category : #generated }
SchemeParser class >> reduceTable [
^#(
	#(14 1 #reduceActionForAtom1: 358401 false) 
	#(14 1 #reduceActionForAtom2: 358402 false) 
	#(14 1 #reduceActionForAtom3: 358403 false) 
	#(11 1 #reduceActionFor_Form__form____1: 222209 false) 
	#(9 1 #reduceActionForStart1: 212993 false) 
	#(10 1 #liftFirstValue: 222209 false) 
	#(12 1 #liftFirstValue: 246787 false) 
	#(12 1 #liftFirstValue: 246786 false) 
	#(12 2 #reduceActionForForm1: 246785 false) 
	#(11 2 #reduceActionFor_Form__form____2: 222210 false) 
	#(13 3 #reduceActionForList1: 307201 false)
	).
]

{ #category : #generated }
SchemeParser class >> scannerClass [
	^SchemeScanner
]

{ #category : #generated }
SchemeParser class >> startingStateForStart [
	^ 1
]

{ #category : #generated }
SchemeParser class >> symbolNames [
	^ #('<lparen>' '<number>' '<string>' '<symbol>' '<rparen>' '<whitespace>' '<quote>' 'B e g i n' 'Start' '(Form ''form'' )' '(Form ''form'' )+' 'Form' 'List' 'Atom' 'E O F' 'error')
]

{ #category : #generated }
SchemeParser class >> symbolTypes [
	^ #(#SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #SmaCCToken #MySchemeStartNode #MySchemeStartNode #MySchemeProgramNode #OrderedCollection #MySchemeProgramNode #MySchemeListNode #MySchemeProgramNode #SmaCCToken #SmaCCErrorNode)
]

{ #category : #generated }
SchemeParser class >> transitionTable [
^#(
#[1 0 9 0 1 0 13 0 2 0 17 0 3 0 21 0 4 0 25 0 7 0 29 0 9 0 33 0 10 0 37 0 11 0 33 0 12 0 33 0 13 0 33 0 14] 
#[1 0 9 0 1 0 13 0 2 0 17 0 3 0 21 0 4 0 25 0 7 0 33 0 10 0 53 0 11 0 33 0 12 0 33 0 13 0 33 0 14] 
#[0 0 6 0 1 0 2 0 3 0 4 0 5 0 7 0 15] 
#[0 0 10 0 1 0 2 0 3 0 4 0 5 0 7 0 15] 
#[0 0 14 0 1 0 2 0 3 0 4 0 5 0 7 0 15] 
#[1 0 9 0 1 0 13 0 2 0 17 0 3 0 21 0 4 0 25 0 7 0 57 0 12 0 57 0 13 0 57 0 14] 
#[0 0 0 0 15] 
#[0 0 18 0 1 0 2 0 3 0 4 0 5 0 7 0 15] 
#[1 0 9 0 1 0 13 0 2 0 17 0 3 0 21 0 4 0 25 0 7 0 61 0 10 0 61 0 12 0 61 0 13 0 61 0 14 0 22 0 15] 
#[0 0 26 0 1 0 2 0 3 0 4 0 5 0 7 0 15] 
#[0 0 30 0 1 0 2 0 3 0 4 0 5 0 7 0 15] 
#[0 0 34 0 1 0 2 0 3 0 4 0 5 0 7 0 15] 
#[1 0 9 0 1 0 13 0 2 0 17 0 3 0 21 0 4 0 65 0 5 0 25 0 7 0 61 0 10 0 61 0 12 0 61 0 13 0 61 0 14] 
#[0 0 38 0 1 0 2 0 3 0 4 0 5 0 7 0 15] 
#[0 0 42 0 1 0 2 0 3 0 4 0 5 0 7 0 15] 
#[0 0 46 0 1 0 2 0 3 0 4 0 5 0 7 0 15]
	).
]

{ #category : #'generated-reduction actions' }
SchemeParser >> reduceActionForAtom1: nodes [
	| result |
	result := MySchemeNumberNode new.
	result value: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
SchemeParser >> reduceActionForAtom2: nodes [
	| result |
	result := MySchemeStringNode new.
	result value: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
SchemeParser >> reduceActionForAtom3: nodes [
	| result |
	result := MySchemeSymbolNode new.
	result value: (nodes at: 1).
	^ result
]

{ #category : #'generated-reduction actions' }
SchemeParser >> reduceActionForForm1: nodes [
	| result |
	result := MySchemeQuoteNode new.
	result quoteToken: (nodes at: 1).
	result form: (nodes at: 2).
	^ result
]

{ #category : #'generated-reduction actions' }
SchemeParser >> reduceActionForList1: nodes [
	| result |
	result := MySchemeListNode new.
	result lparenToken: (nodes at: 1).
	result addNodes: (nodes at: 2) to: result forms.
	result rparenToken: (nodes at: 3).
	^ result
]

{ #category : #'generated-reduction actions' }
SchemeParser >> reduceActionForStart1: nodes [
	| result |
	result := MySchemeStartNode new.
	result addNodes: (nodes at: 1) to: result forms.
	^ result
]

{ #category : #'generated-reduction actions' }
SchemeParser >> reduceActionFor_Form__form____1: nodes [
	| result |
	result := OrderedCollection new: 2.
	self add: (nodes at: 1) to: result.
	^ result
]

{ #category : #'generated-reduction actions' }
SchemeParser >> reduceActionFor_Form__form____2: nodes [
	| result |
	result := nodes at: 1.
	self add: (nodes at: 2) to: result.
	^ result
]

{ #category : #accessing }
SchemeParser >> schemeStyler: aParserClass [
	<smaccStyler: #SchemeParser priority: 50>
	^ (self forParser: aParserClass)
		stylerRules:
			{(GtSmaCCNodeStylerRule
				nodeClassName: #MySchemeNumberNode
				styleBlock: [ :styler | styler foreground: Color red ]).
			(GtSmaCCNodeStylerRule
				nodeClassName: #MySchemeStringNode
				styleBlock: [ :styler | styler foreground: Color blue ]).				
			(GtSmaCCNodeVariableStylerRule
				nodeClassName: #SmaCCErrorNode
				variableNames: #(dismissedTokens errorToken)
				styleBlock: [ :styler | styler foreground: Color red ])}
]
