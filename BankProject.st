<?xml version="1.0"?>

<st-source>
<time-stamp>From VisualWorks® Personal Use Edition, 7.9.1 of October 18, 2012 on March 8, 2014 at 12:39:49 AM</time-stamp>


<component-created>
<name>BankProject</name> <type>package</type>
</component-created><!-- Package BankProject(1.11,kappagantula)* -->


<component-property>
<name>BankProject</name> <type>package</type>
<property>packageName</property> <value>'BankProject'</value>
</component-property>

<component-property>
<name>BankProject</name> <type>package</type>
<property>comment</property> <value>'This package contains the code of Assignment 6 given for CS535 Object Oriented Programming and Design Class.
The class hierarchy designed is:
	Bank 						- Creates a Bank with a routing number
	BankAccount 					- Create an account and implement Bank Operations
		NormalAccount 				- Create a normal type account
		PreferredAccount 			- Create a preferred type account
		PremiumAccount 			- Create a premium type account
		GoldAccount 				- Create a gold type account
	Transaction  					- A parent class for all kinds of transactions
		Cancel 						- Cancel a transaction
		ClearCheck 					- Clear a deposited check
		Deposit 					- Deposit money in account
			DepositCash 			- Deposit cash in account
			DepositCheck 			- Deposit check in account
		Withdrawal 					-Withdraw money from account
			WithdrawalCheck 		- Check given to others
			WithdrawalCash 		- Cash withdrawn from account
	Currency 						- Create and maintain currency
 	Currency Conversion 			- Perform currency conversion


'</value>
</component-property>

<class>
<name>Transaction</name>
<environment>Smalltalk</environment>
<super>Core.Object</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>id date accountNumber </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>BankProject</package>
</attributes>
</class>

<comment>
<class-id>Transaction</class-id>
<body>I initialize the the transactions and add them to an account class.</body>
</comment>

<class>
<name>Deposit</name>
<environment>Smalltalk</environment>
<super>Transaction</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>amount </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>BankProject</package>
</attributes>
</class>

<comment>
<class-id>Deposit</class-id>
<body>I am the parent class for all deposit type transactions.</body>
</comment>

<class>
<name>Withdrawal</name>
<environment>Smalltalk</environment>
<super>Transaction</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>amount </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>BankProject</package>
</attributes>
</class>

<comment>
<class-id>Withdrawal</class-id>
<body>I implement the Withdrawal functionality and related methods.</body>
</comment>

<class>
<name>DepositCheck</name>
<environment>Smalltalk</environment>
<super>Deposit</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>BankProject</package>
</attributes>
</class>

<comment>
<class-id>DepositCheck</class-id>
<body>I implement the Deposit Check functionality and related methods.</body>
</comment>

<class>
<name>CurrencyConversion</name>
<environment>Smalltalk</environment>
<super>Core.Object</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>sourceCurrency destinationCurrency date rate </inst-vars>
<class-inst-vars>Instance ExchangeRates </class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>BankProject</package>
</attributes>
</class>

<comment>
<class-id>CurrencyConversion</class-id>
<body>I store the currency conversion objects using singleton pattern.</body>
</comment>

<class>
<name>BankAccount</name>
<environment>Core</environment>
<super>Core.Object</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>transactions name number type </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>BankProject</package>
</attributes>
</class>

<comment>
<class-id>Core.BankAccount</class-id>
<body>I implement Object Oriented Bank Account Class and related operations.</body>
</comment>

<class>
<name>NormalAccount</name>
<environment>Core</environment>
<super>Core.BankAccount</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>withdrawLimit overdraftFine </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>BankProject</package>
</attributes>
</class>

<comment>
<class-id>Core.NormalAccount</class-id>
<body>I hold Normal Account related parameters.</body>
</comment>

<class>
<name>Bank</name>
<environment>Smalltalk</environment>
<super>Core.Object</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>routingNumber accounts outgoingTransactions </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>BankProject</package>
</attributes>
</class>

<comment>
<class-id>Bank</class-id>
<body>I hold the various accounts and their info.</body>
</comment>

<class>
<name>PreferredAccount</name>
<environment>Core</environment>
<super>Core.BankAccount</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>withdrawalLimit overdraftFine </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>BankProject</package>
</attributes>
</class>

<comment>
<class-id>Core.PreferredAccount</class-id>
<body>I hold Preferred Account related parameters.</body>
</comment>

<class>
<name>PremiumAccount</name>
<environment>Core</environment>
<super>Core.BankAccount</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>overdraftFine withdrawalLimit </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>BankProject</package>
</attributes>
</class>

<comment>
<class-id>Core.PremiumAccount</class-id>
<body>I hold Premium Account related parameters.</body>
</comment>

<class>
<name>GoldAccount</name>
<environment>Core</environment>
<super>Core.BankAccount</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>withdrawalLimit overdraftFine </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>BankProject</package>
</attributes>
</class>

<comment>
<class-id>Core.GoldAccount</class-id>
<body>I hold Gold Account related parameters.</body>
</comment>

<class>
<name>DepositCash</name>
<environment>Smalltalk</environment>
<super>Deposit</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>BankProject</package>
</attributes>
</class>

<comment>
<class-id>DepositCash</class-id>
<body>I deposit cash into a given account.</body>
</comment>

<class>
<name>WithdrawalCash</name>
<environment>Smalltalk</environment>
<super>Withdrawal</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>account </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>BankProject</package>
</attributes>
</class>

<comment>
<class-id>WithdrawalCash</class-id>
<body>I withdraw cash from a given account</body>
</comment>

<class>
<name>WithdrawalCheck</name>
<environment>Smalltalk</environment>
<super>Withdrawal</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>account </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>BankProject</package>
</attributes>
</class>

<comment>
<class-id>WithdrawalCheck</class-id>
<body>I record check transactions performed on an account by another account.</body>
</comment>

<class>
<name>Currency</name>
<environment>Smalltalk</environment>
<super>Core.Object</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>amount symbol type </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>BankProject</package>
</attributes>
</class>

<comment>
<class-id>Currency</class-id>
<body>I implement the methods required for currency calculations.</body>
</comment>

<class>
<name>CurrencyTest</name>
<environment>Smalltalk</environment>
<super>SUnit.TestCase</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>BankProject</package>
</attributes>
</class>

<class>
<name>BankTest</name>
<environment>Smalltalk</environment>
<super>SUnit.TestCase</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars></inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>BankProject</package>
</attributes>
</class>

<class>
<name>ClearCheck</name>
<environment>Smalltalk</environment>
<super>Transaction</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>amount </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>BankProject</package>
</attributes>
</class>

<comment>
<class-id>ClearCheck</class-id>
<body>I implement the clear check functionality and related methods.</body>
</comment>

<class>
<name>Cancel</name>
<environment>Smalltalk</environment>
<super>Transaction</super>
<private>false</private>
<indexed-type>none</indexed-type>
<inst-vars>amount </inst-vars>
<class-inst-vars></class-inst-vars>
<imports></imports>
<category></category>
<attributes>
<package>BankProject</package>
</attributes>
</class>

<comment>
<class-id>Cancel</class-id>
<body>I cancel a given transaction in an account file using the transaction id.</body>
</comment>

<methods>
<class-id>Core.BankAccount class</class-id> <category>instance creation</category>

<body package="BankProject" selector="type">type	^'NewAccount'</body>

<body package="BankProject" selector="new">new	"Answer a newly created and initialized instance."	^super new initialize</body>

<body package="BankProject" selector="from:">from: aString	|keywords anId aDate anAccountNumber aName anAccountType anAmount anAccount|	anId := 1.	aDate := 2.	"aTransactionType := 3."	anAccountNumber := 4.	aName := 5.	anAccountType := 6.	anAmount := 7.	keywords := aString tokensBasedOn: Character tab.	self subclasses do:[ :eachClass|		eachClass type = ( keywords at: anAccountType )ifTrue:[			anAccount := eachClass withId: ( keywords at: anId ) withName: ( keywords at: aName ) withAccountNumber: ( keywords at: anAccountNumber ) withBalance: ( keywords at: anAmount ) on: ( keywords at: aDate ).		].			].	anAccount addTransaction: ( DepositCash withId:  ( keywords at: anId ) withAmount: ( Currency fromString: ( keywords at: anAmount ) ) withDate: ( keywords at: aDate ) onAccount: ( keywords at: anAccountNumber) ).	^anAccount.</body>
</methods>


<methods>
<class-id>Core.BankAccount</class-id> <category>accessing</category>

<body package="BankProject" selector="number:">number: anObject	number := anObject</body>

<body package="BankProject" selector="transactions">transactions	^transactions</body>

<body package="BankProject" selector="name:">name: anObject	name := anObject</body>

<body package="BankProject" selector="number">number	^number</body>

<body package="BankProject" selector="name">name	^name</body>

<body package="BankProject" selector="transactions:">transactions: anObject	transactions := anObject</body>

<body package="BankProject" selector="type">type	^type</body>

<body package="BankProject" selector="type:">type: anObject	type := anObject</body>
</methods>

<methods>
<class-id>Core.BankAccount</class-id> <category>operations</category>

<body package="BankProject" selector="balance">balance	| balance sortedTransactions |	sortedTransactions := transactions asSortedCollection: [ :firstItem :secondItem |				( Timestamp readFromString: firstItem date ) &lt;  ( Timestamp readFromString: secondItem date ).	].	balance := Currency fromNumber: 0 as: 'USD'.	sortedTransactions do: [ :eachTransaction | 				balance := eachTransaction newBalance: balance.					].	^balance</body>

<body package="BankProject" selector="availableBalanceIn:">availableBalanceIn: aDuration	| availableBalance aTimestamp |	availableBalance := Currency fromNumber: 0 as:'USD'.		aTimestamp := 	Timestamp now + aDuration.		transactions do: [ :eachTransaction |									availableBalance := eachTransaction newAvailableBalanceIn: aTimestamp previousAvailableBalance: availableBalance.	].	^availableBalance</body>

<body package="BankProject" selector="balanceIn:">balanceIn: aDuration	| balance aTimestamp|	balance := Currency fromNumber: 0 as:'USD'.	aTimestamp := 	Timestamp now + aDuration.		transactions do: [ :eachTransaction |				balance := eachTransaction newBalanceIn: aTimestamp previousBalance: balance	].	^balance</body>

<body package="BankProject" selector="addTransaction:">addTransaction: anItem	transactions add: anItem.</body>

<body package="BankProject" selector="availableBalance">availableBalance	| availableBalance |	availableBalance := Currency fromNumber: 0 as: 'USD'.	transactions do: [ :eachTransaction | 			availableBalance := eachTransaction newAvailableBalance: availableBalance.	].	^availableBalance</body>
</methods>

<methods>
<class-id>Core.BankAccount</class-id> <category>initialize-release</category>

<body package="BankProject" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	transactions := OrderedCollection new.</body>
</methods>


<methods>
<class-id>Core.PreferredAccount class</class-id> <category>instance creation</category>

<body package="BankProject" selector="withId:withName:withAccountNumber:withBalance:on:">withId:anId withName: aName withAccountNumber: anAccountNumber withBalance: anAmount on:aDate	|anAccount|	anAccount := super new name: aName; number: anAccountNumber; type: self type.	^anAccount.</body>

<body package="BankProject" selector="type">type	^'Preferred'</body>
</methods>


<methods>
<class-id>Core.PreferredAccount</class-id> <category>initialize-release</category>

<body package="BankProject" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Replace this comment with the appropriate initialization code *** "	^self</body>
</methods>

<methods>
<class-id>Core.PreferredAccount</class-id> <category>accessing</category>

<body package="BankProject" selector="withdrawalLimit">withdrawalLimit	^Currency fromNumber: -1000 as: 'USD'.</body>

<body package="BankProject" selector="overdraftFine">overdraftFine	^Currency fromNumber: 3 as: 'USD'.</body>
</methods>


<methods>
<class-id>Core.PremiumAccount class</class-id> <category>instance creation</category>

<body package="BankProject" selector="type">type	^'Premium'</body>

<body package="BankProject" selector="withId:withName:withAccountNumber:withBalance:on:">withId:anId withName: aName withAccountNumber: anAccountNumber withBalance: anAmount on:aDate	|anAccount|	anAccount := super new name: aName; number: anAccountNumber; type: self type.	^anAccount.</body>
</methods>


<methods>
<class-id>Core.PremiumAccount</class-id> <category>initialize-release</category>

<body package="BankProject" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Replace this comment with the appropriate initialization code *** "	^self</body>
</methods>

<methods>
<class-id>Core.PremiumAccount</class-id> <category>accessing</category>

<body package="BankProject" selector="overdraftFine">overdraftFine	^Currency fromNumber: 700 as: 'USD'.</body>

<body package="BankProject" selector="withdrawalLimit">withdrawalLimit	^Currency fromNumber: -10000 as: 'USD'.</body>
</methods>


<methods>
<class-id>Core.GoldAccount class</class-id> <category>instance creation</category>

<body package="BankProject" selector="type">type	^'Gold'</body>

<body package="BankProject" selector="withId:withName:withAccountNumber:withBalance:on:">withId:anId withName: aName withAccountNumber: anAccountNumber withBalance: anAmount on:aDate	|anAccount|	anAccount := super new name: aName; number: anAccountNumber; type: self type.	^anAccount.</body>
</methods>


<methods>
<class-id>Core.GoldAccount</class-id> <category>initialize-release</category>

<body package="BankProject" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Replace this comment with the appropriate initialization code *** "	^self</body>
</methods>

<methods>
<class-id>Core.GoldAccount</class-id> <category>accessing</category>

<body package="BankProject" selector="withdrawalLimit">withdrawalLimit	^Currency fromNumber: -100000 as: 'USD'.</body>

<body package="BankProject" selector="overdraftFine">overdraftFine	^Currency fromNumber: 5000 as: 'USD'.</body>
</methods>


<methods>
<class-id>Transaction class</class-id> <category>instance creation</category>

<body package="BankProject" selector="fromString:in:of:">	fromString: aString in: anAccount of: aBank	"I add a transaction to the list of transactions"	|keywords transactionTypePosition|	transactionTypePosition := 4.	keywords := aString tokensBasedOn: Character tab.	( ( self subclasses size ) &gt; 0 ) ifFalse:[		self fromString: aString in: anAccount.	]ifTrue:[		self subclasses do: [ :eachClass|			( eachClass type = ( keywords at: transactionTypePosition ) ) ifTrue:[				eachClass fromString:aString in: anAccount of: aBank 			].		].		].</body>

<body package="BankProject" selector="getAccountNumberFromPosition:">getAccountNumberFromPosition: aString	|accountNumber|		accountNumber := ( aString tokensBasedOn: $: ) at: 3.	^accountNumber.</body>

<body package="BankProject" selector="getAccountNumberFrom:">getAccountNumberFrom:aString	|accountNumberPosition accountNumber transactionTypePosition|	transactionTypePosition := 3.	Transaction subclasses do:[ :eachClass|				accountNumberPosition := 5.		( ( (aString tokensBasedOn: Character tab ) at: transactionTypePosition ) = Cancel type  ) ifTrue:[			accountNumberPosition := 4.		].		( ( ( (aString tokensBasedOn: Character tab ) at: transactionTypePosition ) = Deposit type  ) and: [ ( (aString tokensBasedOn: Character tab ) at: 4 ) = DepositCheck type] ) ifTrue:[			accountNumberPosition := 6.		].	].	accountNumber := ( aString tokensBasedOn: Character tab ) at: accountNumberPosition.	accountNumber := ( accountNumber tokensBasedOn: $: ) at: transactionTypePosition.	^accountNumber.</body>
</methods>


<methods>
<class-id>Transaction</class-id> <category>accessing</category>

<body package="BankProject" selector="id:">id: anObject	id := anObject</body>

<body package="BankProject" selector="accountNumber:">accountNumber: anObject	accountNumber := anObject</body>

<body package="BankProject" selector="date">date	^date</body>

<body package="BankProject" selector="accountNumber">accountNumber	^accountNumber</body>

<body package="BankProject" selector="date:">date: anObject	date := anObject</body>

<body package="BankProject" selector="convert:on:">convert: aCurrency on: aDate|anObject|					anObject := ( CurrencyConversion rates ) detect: [ :eachConversionObject |			( ( eachConversionObject sourceCurrency ) =   aCurrency type ) &amp; ( ( eachConversionObject destinationCurrency ) = 'USD' ) &amp; ( ( Date readFromString: ( eachConversionObject date printString ) ) = ( Date readFromString: aDate ) ).					] ifNone: [1].		( anObject = 1  ) ifFalse:[						^Currency fromNumber: ( ( anObject rate asNumber * aCurrency amount ) truncateTo: 0.01 ) as: 'USD'.		].			^aCurrency.</body>

<body package="BankProject" selector="id">id	^id</body>
</methods>

<methods>
<class-id>Transaction</class-id> <category>initialize-release</category>

<body package="BankProject" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Edit the following to properly initialize instance variables ***"	" *** And replace this comment with additional initialization code *** "	^self</body>
</methods>


<methods>
<class-id>Withdrawal class</class-id> <category>instance creation</category>

<body package="BankProject" selector="type">type	^'Withdrawal'</body>
</methods>


<methods>
<class-id>Withdrawal</class-id> <category>accessing</category>

<body package="BankProject" selector="amount:">amount: anObject	amount := anObject</body>

<body package="BankProject" selector="amount">amount	^amount</body>
</methods>

<methods>
<class-id>Withdrawal</class-id> <category>initialize-release</category>

<body package="BankProject" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Replace this comment with the appropriate initialization code *** "	^self</body>
</methods>


<methods>
<class-id>WithdrawalCash class</class-id> <category>instance creation</category>

<body package="BankProject" selector="fromString:in:of:">fromString: aString in: anAccount of: aBank	"I add a transaction to the list of transactions"	"111117	12.04.2013 1:30	Withdrawal	Cash	:055012581:000032451283	$30.00 USD"	| anId aDate anAmount keywords item|	anId := 1.	aDate := 2.	anAmount := 6.	keywords := aString tokensBasedOn: Character tab.	item := super new initialize.	item id: ( keywords at: anId ).	item date: ( keywords at: aDate ).	item accountNumber: ( anAccount number ).	item amount: ( Currency fromString: ( keywords at: anAmount ) ).	item account: anAccount.		anAccount addTransaction: item.</body>

<body package="BankProject" selector="new">new	"Answer a newly created and initialized instance."	^super new initialize</body>

<body package="BankProject" selector="type">type	^'Cash'</body>
</methods>


<methods>
<class-id>WithdrawalCash</class-id> <category>accessing</category>

<body package="BankProject" selector="account">account	^account</body>

<body package="BankProject" selector="account:">account: anObject	account := anObject</body>
</methods>

<methods>
<class-id>WithdrawalCash</class-id> <category>operations</category>

<body package="BankProject" selector="newBalanceIn:previousBalance:">newBalanceIn: aDuration previousBalance:previousBalance			|anAmount|	anAmount := self convert: amount on: date.	( ( Timestamp readFromString: date ) &lt; aDuration) ifTrue: [		BankAccount subclasses do:[ :eachClass |			( eachClass type = account type) ifTrue:[				( ( previousBalance - anAmount ) &lt;  ( account withdrawalLimit ) )ifTrue:[					^ previousBalance - account overdraftFine.				]ifFalse:[					^ previousBalance - anAmount.				].			].			].	].	^previousBalance</body>

<body package="BankProject" selector="newAvailableBalanceIn:previousAvailableBalance:">newAvailableBalanceIn: aDuration previousAvailableBalance:previousAvailableBalance		|anAmount|	anAmount := self convert: amount on: date.	( ( Timestamp readFromString: date ) &lt; aDuration ) ifTrue: [		BankAccount subclasses do:[ :eachClass|		( eachClass type = account type) ifTrue:[				( ( previousAvailableBalance - anAmount ) &lt;  ( account withdrawalLimit ) )ifTrue:[					^ previousAvailableBalance - account overdraftFine.				]ifFalse:[					^ previousAvailableBalance - anAmount.				].			].			].	].	^previousAvailableBalance</body>

<body package="BankProject" selector="newBalance:">newBalance: previousBalance	|anAmount|	BankAccount subclasses do:[ :eachClass|		anAmount := self convert: amount on: date.		( eachClass type = account type) ifTrue:[			( ( previousBalance - anAmount ) &lt;  ( account withdrawalLimit ) )ifTrue:[				^ previousBalance - account overdraftFine.			]ifFalse:[				^ previousBalance - anAmount.			].		].	].</body>

<body package="BankProject" selector="newAvailableBalance:">newAvailableBalance: previousAvailableBalance	|anAmount|	anAmount := self convert: amount on: date.	BankAccount subclasses do:[ :eachClass|				( eachClass type = account type) ifTrue:[						( ( previousAvailableBalance - anAmount ) &lt;  ( account withdrawalLimit ) )ifTrue:[				^ previousAvailableBalance - account overdraftFine.			]ifFalse:[				^ previousAvailableBalance - anAmount.			].		].		].</body>
</methods>

<methods>
<class-id>WithdrawalCash</class-id> <category>initialize-release</category>

<body package="BankProject" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Replace this comment with the appropriate initialization code *** "	^self</body>

<body package="BankProject" selector="type">type	^'Cash'</body>
</methods>


<methods>
<class-id>Deposit class</class-id> <category>instance creation</category>

<body package="BankProject" selector="type">type	^'Deposit'</body>
</methods>


<methods>
<class-id>Deposit</class-id> <category>accessing</category>

<body package="BankProject" selector="amount:">amount: anObject	amount := anObject</body>

<body package="BankProject" selector="amount">amount	^amount</body>

<body package="BankProject" selector="type">type	^'Deposit'</body>
</methods>

<methods>
<class-id>Deposit</class-id> <category>initialize-release</category>

<body package="BankProject" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Replace this comment with the appropriate initialization code *** "	^self</body>
</methods>


<methods>
<class-id>DepositCash class</class-id> <category>instance creation</category>

<body package="BankProject" selector="new">new	"Answer a newly created and initialized instance."	^super new initialize</body>

<body package="BankProject" selector="type">type	^'Cash'</body>

<body package="BankProject" selector="fromString:in:of:">fromString: aString in:anAccount of: aBank	"I add a transaction to the list of transactions"	"111116	12.03.2013 1:30	Deposit	Check	:055012581:000032451283	:055012581:000032451294	100	3	$20.00 USD"	| anId aDate anAmount keywords item|	anId := 1.	aDate := 2.	anAmount := 6.	keywords := aString tokensBasedOn: Character tab.	item := super new initialize.	item id: ( keywords at: anId ).	item date: ( keywords at: aDate ).	item accountNumber: ( anAccount number ).	item amount: ( Currency fromString: ( keywords at: anAmount ) ).	anAccount addTransaction: item.</body>

<body package="BankProject" selector="withId:withAmount:withDate:onAccount:">withId: anId withAmount: anAmount withDate: aDate onAccount: anAccount	^self new id: anId; amount: anAmount; date: aDate; accountNumber: anAccount.</body>
</methods>


<methods>
<class-id>DepositCash</class-id> <category>accessing</category>

<body package="BankProject" selector="type">type	^'Cash'</body>
</methods>

<methods>
<class-id>DepositCash</class-id> <category>operations</category>

<body package="BankProject" selector="newAvailableBalance:">newAvailableBalance: previousAvailableBalance	|anAmount|	anAmount := self convert: amount on: date.	^ previousAvailableBalance + anAmount.</body>

<body package="BankProject" selector="newBalanceIn:previousBalance:">newBalanceIn: aDuration previousBalance:previousBalance			|anAmount|	anAmount := self convert: amount on: date.	( ( Timestamp readFromString: date ) &lt; aDuration) ifTrue: [				^previousBalance + anAmount	].		^previousBalance</body>

<body package="BankProject" selector="newAvailableBalanceIn:previousAvailableBalance:">newAvailableBalanceIn: aDuration previousAvailableBalance:previousAvailableBalance			|anAmount|	anAmount := self convert: amount on: date.	( ( Timestamp readFromString: date ) &lt; aDuration ) ifTrue: [		^previousAvailableBalance + anAmount	].	^previousAvailableBalance</body>

<body package="BankProject" selector="newBalance:">newBalance: previousBalance	|anAmount|	anAmount := self convert: amount on: date.	^ previousBalance + anAmount.</body>
</methods>

<methods>
<class-id>DepositCash</class-id> <category>initialize-release</category>

<body package="BankProject" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Replace this comment with the appropriate initialization code *** "	^self</body>
</methods>


<methods>
<class-id>WithdrawalCheck class</class-id> <category>instance creation</category>

<body package="BankProject" selector="type">type	^'Check'</body>

<body package="BankProject" selector="fromString:in:of:">fromString: aString in: anAccount of: aBank	"I add a transaction to the list of transactions"	| item anId aDate anAmount keywords toAccount anotherItem|	anId := 1.	aDate := 2.	toAccount := 6.	anAmount := 8. 	keywords := aString tokensBasedOn: Character tab.	( ( ( anAccount balance ) - ( Currency fromString: ( keywords at: anAmount ) ) ) &lt; ( anAccount withdrawalLimit ) ) ifTrue:[			anotherItem := Cancel new id: ( keywords at: anId ); date: ( keywords at: aDate ); accountNumber:( keywords at: ( toAccount ) ); amount: ( Currency fromString: ( keywords at: anAmount ) ).					( aBank outgoingTransactions ) add: anotherItem.			item := self new id: ( keywords at: anId ); date: ( keywords at: aDate ); accountNumber:( anAccount number ); amount: ( anAccount overdraftFine ).			item account: anAccount.				anAccount addTransaction: item.		^anotherItem	] ifFalse:[		item := self new id: ( keywords at: anId ); date: ( keywords at: aDate ); accountNumber:( anAccount number ); amount: ( Currency fromString: ( keywords at: anAmount ) ).		item account: anAccount.			anAccount addTransaction: item.		^ item	].</body>

<body package="BankProject" selector="new">new	"Answer a newly created and initialized instance."	^super new initialize</body>
</methods>


<methods>
<class-id>WithdrawalCheck</class-id> <category>accessing</category>

<body package="BankProject" selector="account:">account: anObject	account := anObject</body>

<body package="BankProject" selector="account">account	^account</body>
</methods>

<methods>
<class-id>WithdrawalCheck</class-id> <category>operations</category>

<body package="BankProject" selector="newBalance:">newBalance: previousBalance	|anAmount|	anAmount := self convert: amount on: date.	BankAccount subclasses do:[ :eachClass|		( eachClass type = account type) ifTrue:[			( ( previousBalance - anAmount ) &lt;  ( account withdrawalLimit ) )ifTrue:[				^ previousBalance - account overdraftFine.			]ifFalse:[				^ previousBalance - anAmount.			].		].		].</body>

<body package="BankProject" selector="newAvailableBalance:">newAvailableBalance: previousAvailableBalance	|anAmount|	anAmount := self convert: amount on: date.	BankAccount subclasses do:[ :eachClass|		( eachClass type = account type) ifTrue:[			( ( previousAvailableBalance - anAmount ) &lt;  ( account withdrawalLimit ) )ifTrue:[				^ previousAvailableBalance - account overdraftFine.			]ifFalse:[				^ previousAvailableBalance - anAmount.			].		].		].</body>

<body package="BankProject" selector="newBalanceIn:previousBalance:">newBalanceIn: aDuration previousBalance:previousBalance	|anAmount|	anAmount := self convert: amount on: date.			( ( Timestamp readFromString: date ) &lt; aDuration) ifTrue: [			BankAccount subclasses do:[ :eachClass|			( eachClass type = account type) ifTrue:[				( ( previousBalance - anAmount ) &lt;  ( account withdrawalLimit ) )ifTrue:[					^ previousBalance - account overdraftFine.				]ifFalse:[					^ previousBalance - anAmount.				].			].			].	].	^previousBalance</body>

<body package="BankProject" selector="newAvailableBalanceIn:previousAvailableBalance:">newAvailableBalanceIn: aDuration previousAvailableBalance:previousAvailableBalance		|anAmount|	anAmount := self convert: amount on: date.	( ( Timestamp readFromString: date ) &lt; aDuration ) ifTrue: [		BankAccount subclasses do:[ :eachClass|			( eachClass type = account type) ifTrue:[				( ( previousAvailableBalance - anAmount ) &lt;  ( account withdrawalLimit ) )ifTrue:[					^ previousAvailableBalance - account overdraftFine.				]ifFalse:[					^ previousAvailableBalance - anAmount.				].			].			].	].	^previousAvailableBalance</body>
</methods>

<methods>
<class-id>WithdrawalCheck</class-id> <category>initialize-release</category>

<body package="BankProject" selector="type">type	^'Check'</body>

<body package="BankProject" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Replace this comment with the appropriate initialization code *** "	^self</body>
</methods>


<methods>
<class-id>Currency class</class-id> <category>instance creation</category>

<body package="BankProject" selector="new">new	"Answer a newly created and initialized instance."	^ self shouldNotImplement.	"^super new initialize"</body>

<body package="BankProject" selector="fromNumber:as:">fromNumber: anAmount as:aType	"I create a currency object from a string"	|aCurrency|	aCurrency := super new amount: ( anAmount ); symbol: '$'; type:aType.	aCurrency beImmutable.	^aCurrency.</body>

<body package="BankProject" selector="fromString:">fromString: anAmount	"I create a currency object from a string"	|aCurrency trimmedAmount|	trimmedAmount := anAmount copyFrom: 2 to: anAmount size.	trimmedAmount := trimmedAmount tokensBasedOn: Character space.	aCurrency := super new amount: ( ( ( trimmedAmount at: 1 ) asNumber ) truncateTo: 0.01  ); symbol: '$'; type: ( trimmedAmount at: 2 ).		aCurrency beImmutable.	^aCurrency.</body>
</methods>


<methods>
<class-id>Currency</class-id> <category>comparing</category>

<body package="BankProject" selector="=">= aCurrency	( aCurrency isMemberOf: Currency ) ifFalse:[		self error: 'Comparison type mismatch'	].	^ ( ( self amount - aCurrency amount &lt; 0.001 ) &amp; ( self symbol = aCurrency symbol ) &amp; ( self type = aCurrency type ) )</body>
</methods>

<methods>
<class-id>Currency</class-id> <category>accessing</category>

<body package="BankProject" selector="amount">amount	^amount</body>

<body package="BankProject" selector="type">type	^type</body>

<body package="BankProject" selector="symbol:">symbol: anObject	symbol := anObject.</body>

<body package="BankProject" selector="amount:">amount: anObject	amount := anObject.</body>

<body package="BankProject" selector="type:">type: anObject	type := anObject</body>

<body package="BankProject" selector="symbol">symbol	^symbol</body>
</methods>

<methods>
<class-id>Currency</class-id> <category>arithmetic</category>

<body package="BankProject" selector="+">+ aCurrency	^Currency fromNumber: ( ( self amount + aCurrency amount ) truncateTo: 0.01 ) as: self type.</body>

<body package="BankProject" selector="-">- aCurrency		^ Currency fromNumber: ( ( self amount - aCurrency amount ) truncateTo: 0.01 ) as: self type.</body>
</methods>

<methods>
<class-id>Currency</class-id> <category>initialize-release</category>

<body package="BankProject" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."		super initialize.	" *** Edit the following to properly initialize instance variables ***"	amount := 0.	symbol := '$'.		" *** And replace this comment with additional initialization code *** "			^self</body>
</methods>

<methods>
<class-id>Currency</class-id> <category>magnitude</category>

<body package="BankProject" selector="&gt;=">&gt;= aCurrency	( aCurrency isMemberOf: Currency ) ifFalse:[		self error: 'Comparison type mismatch'	].	^ ( self amount &gt;= aCurrency amount )</body>

<body package="BankProject" selector="&gt;">&gt; aCurrency	( aCurrency isMemberOf: Currency ) ifFalse:[		self error: 'Comparison type mismatch'	].	^ ( self amount &gt; aCurrency amount )</body>

<body package="BankProject" selector="&lt;">&lt; aCurrency	( aCurrency isMemberOf: Currency ) ifFalse:[		self error: 'Comparison type mismatch'	].	^ ( self amount &lt; aCurrency amount )</body>

<body package="BankProject" selector="&lt;=">&lt;= aCurrency	( aCurrency isMemberOf: Currency ) ifFalse:[		self error: 'Comparison type mismatch'	].	^ ( self amount &lt;= aCurrency amount )</body>
</methods>

<methods>
<class-id>Currency</class-id> <category>printing</category>

<body package="BankProject" selector="printString">printString	^ ( ( amount ) printFormat:  '$#,###.00' ), ' ', type.</body>
</methods>


<methods>
<class-id>CurrencyTest</class-id> <category>tests</category>

<body package="BankProject" selector="test">test| a b c d sum |a := Currency fromString: '$1.00 USD'.b := Currency fromNumber: 2.12 as: 'USD'.sum := Currency fromNumber: 3.12 as:'USD'.c := a + b.self assert: sum = c.d := c - ( Currency fromNumber: 1 as:'USD' ).self assert: d = b.self assert: a printString = '$1.00 USD'.</body>
</methods>


<methods>
<class-id>BankTest</class-id> <category>test data</category>

<body package="BankProject" selector="sampleFile">sampleFile	^'111113\' , (self today - 10 days) printString	, '\NewAccount\000032451283\Roger Whitney\Normal\$100.00 USD111114\' , (self today - 9 days) printString	, '\NewAccount\000032451294\James Bond\Premium\$500.00 USD111115\' , (self today - 9 days) printString	, '\Deposit\Cash\:055012581:000032451283\$10.00 USD111116\' , (self today - 8 days) printString	, '\Deposit\Check\:055012581:000032451283\:055012581:000032451294\100\3\$20.00 USD111117\' , (self today - 7 days) printString	, '\Withdrawal\Cash\:055012581:000032451283\$30.00 USD111118\' , (self today - 7 days) printString	, '\Withdrawal\Check\:055012581:000032451283\:995012581:000077451283\101\$10.00 USD111119\' , (self today - 6 days) printString	, '\Deposit\Check\:995012581:000077451299\:055012581:000032451283\100\3\$20.00 USD111120\' , (self today - 5 days) printString	, '\Cancel\:055012581:000032451283\111119' replaceAll: $\ with: Character tab.</body>

<body package="BankProject" selector="dataFiles">dataFiles	^#( 'simpleCreate' 'sampleFile' 'multipleAccountTypesWithdrawLimit').</body>

<body package="BankProject" selector="simpleCreate">simpleCreate^'111113\' , (Timestamp readFromString: 'November 15, 2013 11:31:55 PM' ) printString	, '\NewAccount\000032451283\Roger Whitney\Normal\$100.00 MXN111114\' , (Timestamp readFromString: 'November 18, 2013 11:31:55 PM') printString	, '\Deposit\Cash\:055012581:000032451283\$1000.00 MXN111115\' , (self today - 2 days) printString	, '\NewAccount\000032451284\James Bond\Premium\$500.00 USD' replaceAll: $\ with: Character tab.</body>

<body package="BankProject" selector="multipleAccountTypesWithdrawLimit">multipleAccountTypesWithdrawLimit^'111113\' , (self today - 2 days) printString	, '\NewAccount\000032451283\Aditya\Normal\$100.00 USD111114\' , (self today - 2 days) printString	, '\NewAccount\000032451284\Pavan\Preferred\$100.00 USD111115\' , (self today - 2 days) printString	, '\NewAccount\000032451285\Kartheek\Premium\$100.00 USD111116\' , (self today - 2 days) printString	, '\NewAccount\000032451286\Harini\Gold\$100.00 USD111117\' , (self today - 7 days) printString	, '\Withdrawal\Cash\:055012581:000032451283\$1000.00 USD111118\' , (self today - 7 days) printString	, '\Withdrawal\Cash\:055012581:000032451284\$2000.00 USD111119\' , (self today - 7 days) printString	, '\Withdrawal\Cash\:055012581:000032451285\$20000.00 USD111120\' , (self today - 7 days) printString	, '\Withdrawal\Cash\:055012581:000032451286\$120000.00 USD'replaceAll: $\ with: Character tab.</body>
</methods>

<methods>
<class-id>BankTest</class-id> <category>initialize-release</category>

<body package="BankProject" selector="tearDown">tearDown	self dataFiles do: 			[:each |			| file |			file := each asFilename.			file exists ifTrue: [file delete]]</body>
</methods>

<methods>
<class-id>BankTest</class-id> <category>tests</category>

<body package="BankProject" selector="testOutgoingTransactions">testOutgoingTransactions	| aBank |	self createFile: 'sampleFile'.	aBank := Bank  routingNumber: '055012581'.	aBank transactionsFrom: 'sampleFile' asFilename.	self assert: ( ( aBank outgoingTransactions ) size ) = 1.</body>

<body package="BankProject" selector="testMultipleAccountTypesWithdrawalLimit">testMultipleAccountTypesWithdrawalLimit	| aBank |	self createFile: 'multipleAccountTypesWithdrawLimit'.	aBank := Bank  routingNumber: '055012581'.	aBank transactionsFrom: 'multipleAccountTypesWithdrawLimit' asFilename.	self	assert: ( ( aBank account:  '000032451283' ) balance) = ( Currency fromNumber: 95 as: 'USD' ).	self	assert: ( ( aBank account:  '000032451284' ) balance) = ( Currency fromNumber: 97 as: 'USD' ).	self	assert: ( ( aBank account:  '000032451285' ) balance) = ( Currency fromNumber: -600 as: 'USD' ).	self	assert: ( ( aBank account:  '000032451286' ) balance) = ( Currency fromNumber: -4900 as: 'USD' ).</body>

<body package="BankProject" selector="testMultipleAccounts">testMultipleAccounts	"Tests the instance method account: as well as class method routingNumber:"	| aBank |	self createFile: 'sampleFile'.	aBank := Bank  routingNumber: '055012581'.	aBank transactionsFrom: 'sampleFile' asFilename.	self	assert: ( ( aBank account:  '000032451283' ) balance) = ( Currency fromNumber: 50 as: 'USD' ).	self	assert: ( ( aBank account:  '000032451294' ) balance) = ( Currency fromNumber: 520 as: 'USD' ).</body>

<body package="BankProject" selector="testSampleFile">testSampleFile	| aBank |	self createFile: 'sampleFile'.	aBank := Bank  routingNumber: '055012581'.	aBank transactionsFrom: 'sampleFile' asFilename.	self	assert: ( ( aBank account:  '000032451283' ) balance ) = ( Currency fromNumber: 50 as: 'USD' ).	self	assert: ( ( aBank account:  '000032451283' ) availableBalance ) = ( Currency fromNumber: 50 as: 'USD' ).	self	assert: ( ( aBank account:  '000032451283' ) balanceIn: -5 days ) = ( Currency fromNumber: 50 as: 'USD' ).	self	assert: ( ( aBank account:  '000032451283' ) availableBalanceIn: -5 days ) = ( Currency fromNumber: 70 as: 'USD' ).</body>

<body package="BankProject" selector="testInternationalCurrencyConversion">testInternationalCurrencyConversion	| aBank |	self createFile: 'simpleCreate'.	aBank := Bank  routingNumber: '055012581'.	aBank transactionsFrom: 'simpleCreate' asFilename.	self	assert: ( ( aBank account:  '000032451283' ) balance ) = ( Currency fromNumber: 84.97 as: 'USD' ).</body>
</methods>

<methods>
<class-id>BankTest</class-id> <category>private</category>

<body package="BankProject" selector="createFile:">createFile: aStringName	| file fileWrite contents |	file := aStringName asFilename.	fileWrite := file writeStream.		[contents := self perform: aStringName asSymbol.	contents replaceAll: $\ with: Character tab.	fileWrite nextPutAll: contents]			ensure: [fileWrite close.]</body>

<body package="BankProject" selector="today">today	^Timestamp now</body>
</methods>


<methods>
<class-id>ClearCheck class</class-id> <category>instance creation</category>

<body package="BankProject" selector="type">type	^'ClearCheck'</body>
</methods>


<methods>
<class-id>ClearCheck</class-id> <category>accessing</category>

<body package="BankProject" selector="amount:">amount: anObject	amount := anObject</body>

<body package="BankProject" selector="amount">amount	^amount</body>

<body package="BankProject" selector="type">type	^'ClearCheck'</body>
</methods>

<methods>
<class-id>ClearCheck</class-id> <category>operations</category>

<body package="BankProject" selector="newBalance:">newBalance: previousBalance	^previousBalance</body>

<body package="BankProject" selector="newAvailableBalance:">newAvailableBalance: previousBalance	|anAmount|	anAmount := self convert: amount on: date.	^previousBalance + anAmount</body>

<body package="BankProject" selector="newBalanceIn:previousBalance:">newBalanceIn: aDuration previousBalance:previousBalance			^previousBalance</body>

<body package="BankProject" selector="newAvailableBalanceIn:previousAvailableBalance:">newAvailableBalanceIn: aDuration previousAvailableBalance:previousAvailableBalance				|anAmount|	anAmount := self convert: amount on: date.	( ( Timestamp readFromString: date ) &lt; aDuration) ifTrue: [		^previousAvailableBalance + anAmount	].	^previousAvailableBalance</body>
</methods>

<methods>
<class-id>ClearCheck</class-id> <category>initialize-release</category>

<body package="BankProject" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Replace this comment with the appropriate initialization code *** "	^self</body>
</methods>


<methods>
<class-id>Cancel class</class-id> <category>instance creation</category>

<body package="BankProject" selector="type">type	^'Cancel'</body>

<body package="BankProject" selector="fromString:in:of:">fromString: aString in:anAccount of: aBank	"I add a transaction to the list of transactions"	"111116	12.03.2013 1:30	Deposit	Check	:055012581:000032451283	:055012581:000032451294	100	3	$20.00 USD"	| aTransactionId aCollection keywords item anAmount anId aDate aTransactionAmount aClearCheckTransaction|	aTransactionId :=5.	anId := 1.	aDate := 2.	aTransactionAmount := 9.	aClearCheckTransaction := 2.	keywords := aString tokensBasedOn: Character tab.	aTransactionId := keywords at: aTransactionId.	aCollection := anAccount transactions select: [ :eachTransaction|		( eachTransaction id = aTransactionId  ).	].	anAccount transactions remove: ( aCollection at: aClearCheckTransaction ).	anAmount :=  ( aCollection at: 1 ) amount.	item := super new initialize.	item amount: anAmount.	item accountNumber: ( anAccount number ).	item id: ( keywords at: anId ).	item date: ( keywords at: aDate ).	anAccount addTransaction: item.</body>
</methods>


<methods>
<class-id>Cancel</class-id> <category>accessing</category>

<body package="BankProject" selector="amount:">amount: anObject	amount := anObject</body>

<body package="BankProject" selector="amount">amount	^amount</body>

<body package="BankProject" selector="type">type	^'Cancel'</body>
</methods>

<methods>
<class-id>Cancel</class-id> <category>operations</category>

<body package="BankProject" selector="newAvailableBalance:">newAvailableBalance: previousBalance	^previousBalance</body>

<body package="BankProject" selector="newBalanceIn:previousBalance:">newBalanceIn: aDuration previousBalance:previousBalance			|anAmount|	anAmount := self convert: amount on: date.	( ( Timestamp readFromString: date ) &lt; aDuration) ifTrue: [				^previousBalance - anAmount	].		^previousBalance</body>

<body package="BankProject" selector="newAvailableBalanceIn:previousAvailableBalance:">newAvailableBalanceIn: aDuration previousAvailableBalance:previousAvailableBalance					^previousAvailableBalance</body>

<body package="BankProject" selector="newBalance:">newBalance: previousBalance	|anAmount|	anAmount := self convert: amount on: date.	^previousBalance - anAmount</body>
</methods>

<methods>
<class-id>Cancel</class-id> <category>initialize-release</category>

<body package="BankProject" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Replace this comment with the appropriate initialization code *** "	^self</body>
</methods>


<methods>
<class-id>DepositCheck class</class-id> <category>instance creation</category>

<body package="BankProject" selector="fromString:in:of:">fromString: aString in: anAccount  of: aBank	"I add a transaction to the list of transactions"	"111119	12.05.2013 1:30	Deposit	Check	:995012581:000077451299	:055012581:000032451283	100	3	$20.00 USD"	| item anId aDate anAmount keywords fromAccount toAccount duration checkClearanceDate clearCheckItem |	anId := 1.	aDate := 2.	fromAccount := 5.	toAccount := 6.	duration := 8.	anAmount := 9.		keywords := aString tokensBasedOn: Character tab.	checkClearanceDate := ( ( Timestamp readFromString: ( keywords at: aDate ) ) + ( ( keywords at: duration ) asNumber days ) ) printString.	item := self new id: ( keywords at: anId ); date: ( keywords at: aDate ); accountNumber:( keywords at: toAccount ); amount: ( Currency fromString: ( keywords at: anAmount ) ).	clearCheckItem := ClearCheck new id: ( keywords at: anId ); date: ( checkClearanceDate ); accountNumber:( keywords at: toAccount ); amount: ( Currency fromString: ( keywords at: anAmount ) ).	( ( ( aBank account: ( Transaction getAccountNumberFromPosition: ( keywords at: fromAccount ) ) ) isNil ) or: [ ( ( aBank account: ( Transaction getAccountNumberFromPosition: ( keywords at: toAccount ) ) ) isNil ) ] ) ifTrue:[		anAccount addTransaction: item.		anAccount addTransaction: clearCheckItem.		( aBank outgoingTransactions ) add: ( WithdrawalCheck new id: ( keywords at: anId ); date: ( keywords at: aDate ); accountNumber:( keywords at: fromAccount ); amount: ( Currency fromString: (keywords at: anAmount ) ) ).	]ifFalse:[			|sourceAccount 	aWithdrawal|			sourceAccount := ( aBank account: (Transaction getAccountNumberFromPosition: ( keywords at: fromAccount ) ) ).														aWithdrawal := WithdrawalCheck new id: ( keywords at: anId ); date: ( keywords at: aDate ); accountNumber: sourceAccount number; amount: ( Currency fromString: ( keywords at: anAmount ) ).						aWithdrawal account: sourceAccount.				sourceAccount addTransaction: aWithdrawal.			anAccount addTransaction: item.			anAccount addTransaction: clearCheckItem.	].</body>

<body package="BankProject" selector="type">type	^'Check'</body>
</methods>


<methods>
<class-id>DepositCheck</class-id> <category>accessing</category>

<body package="BankProject" selector="type">type	^'Check'</body>
</methods>

<methods>
<class-id>DepositCheck</class-id> <category>operations</category>

<body package="BankProject" selector="newAvailableBalanceIn:previousAvailableBalance:">newAvailableBalanceIn: aDuration previousAvailableBalance:previousAvailableBalance			^previousAvailableBalance</body>

<body package="BankProject" selector="newBalance:">newBalance: previousBalance	|anAmount|	anAmount := self convert: amount on: date.	^previousBalance + anAmount</body>

<body package="BankProject" selector="newAvailableBalance:">newAvailableBalance: previousAvailableBalance	^previousAvailableBalance</body>

<body package="BankProject" selector="newBalanceIn:previousBalance:">newBalanceIn: aDuration previousBalance:previousBalance			|anAmount|	anAmount := self convert: amount on: date.	( ( Timestamp readFromString: date ) &lt; aDuration) ifTrue: [		^previousBalance + anAmount	].	^previousBalance</body>
</methods>

<methods>
<class-id>DepositCheck</class-id> <category>initialize-release</category>

<body package="BankProject" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Replace this comment with the appropriate initialization code *** "	^self</body>
</methods>


<methods>
<class-id>Core.NormalAccount class</class-id> <category>instance creation</category>

<body package="BankProject" selector="withId:withName:withAccountNumber:withBalance:on:">withId:anId withName: aName withAccountNumber: anAccountNumber withBalance: anAmount on:aDate	|anAccount|	anAccount := super new name: aName; number: anAccountNumber; type: self type.	^anAccount.</body>

<body package="BankProject" selector="type">type	^'Normal'</body>
</methods>


<methods>
<class-id>Core.NormalAccount</class-id> <category>initialize-release</category>

<body package="BankProject" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Edit the following to properly initialize instance variables ***"	" *** And replace this comment with additional initialization code *** "	^self</body>
</methods>

<methods>
<class-id>Core.NormalAccount</class-id> <category>accessing</category>

<body package="BankProject" selector="withdrawalLimit">withdrawalLimit	^Currency fromNumber: 0 as: 'USD'.</body>

<body package="BankProject" selector="overdraftFine">overdraftFine	^ Currency fromNumber: 5 as: 'USD'.</body>
</methods>


<methods>
<class-id>Bank class</class-id> <category>instance creation</category>

<body package="BankProject" selector="routingNumber:">routingNumber: aString	|aBank|	aBank := super new routingNumber: aString; accounts: ( OrderedCollection new ); outgoingTransactions: (OrderedCollection new).	^aBank</body>

<body package="BankProject" selector="new">new	"Answer a newly created and initialized instance."	^self shouldNotImplement.</body>
</methods>


<methods>
<class-id>Bank</class-id> <category>files</category>

<body package="BankProject" selector="transactionsFrom:">transactionsFrom: aFile	| line fileRead transactionTypePosition keywords |	transactionTypePosition := 3.		fileRead := aFile asFilename readStream.	[ fileRead atEnd ] whileFalse:[		line := fileRead upTo: ( Character cr ).		keywords := line tokensBasedOn: Character tab. 		( ( keywords at: transactionTypePosition )  = BankAccount type ) ifTrue:[						 			accounts add: (BankAccount from: line).		] ifFalse:[			Transaction subclasses do: [ :eachClass |				( eachClass type = ( ( line tokensBasedOn: Character tab ) at: transactionTypePosition ) ) ifTrue:[					 	eachClass fromString: line in: ( self account: ( Transaction getAccountNumberFrom: line ) ) of: self.				].			].			].							].	fileRead close.</body>
</methods>

<methods>
<class-id>Bank</class-id> <category>accessing</category>

<body package="BankProject" selector="outgoingTransactions">outgoingTransactions	^outgoingTransactions</body>

<body package="BankProject" selector="account:">account: aString	|anAccount|	anAccount := accounts detect: [ :eachAccount |		eachAccount number = aString.	] ifNone:[		^nil	].	^anAccount.</body>

<body package="BankProject" selector="accounts:">accounts: anObject	accounts := anObject</body>

<body package="BankProject" selector="routingNumber:">routingNumber: anObject	routingNumber := anObject</body>

<body package="BankProject" selector="accounts">accounts	^accounts</body>

<body package="BankProject" selector="routingNumber">routingNumber	^routingNumber</body>

<body package="BankProject" selector="outgoingTransactions:">outgoingTransactions: anObject	outgoingTransactions := anObject</body>
</methods>

<methods>
<class-id>Bank</class-id> <category>initialize-release</category>

<body package="BankProject" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Edit the following to properly initialize instance variables ***"	routingNumber := nil.	" *** And replace this comment with additional initialization code *** "	^self</body>
</methods>


<methods>
<class-id>CurrencyConversion class</class-id> <category>instance creation</category>

<body package="BankProject" selector="new">new	"Answer a newly created and initialized instance."	^self shouldNotImplement.</body>

<body package="BankProject" selector="rates">rates	|files aCollection fromCurrency toCurrency aDate aRate noiseEndingAtStart noiseBeginningAtEnd titleLine firstTitleElements secondTitleElements firstRatePosition datePosition secondRatePosition firstCurrency secondCurrency aNoiseLessCollection|	firstCurrency := 1.	secondCurrency := 2.	firstRatePosition := 2.	secondRatePosition := 3.	datePosition := 1.	firstTitleElements := 2.	secondTitleElements := 3.	titleLine := 5.	noiseEndingAtStart := 6.	noiseBeginningAtEnd := 4.	Instance ifNil: [		ExchangeRates := OrderedCollection new.		files := #('USD.csv' 'MXN.csv' 'CAD.csv').		files do: [ :eachFile|			aCollection := ( eachFile asFilename readStream ) lines.			aNoiseLessCollection := aCollection copyFrom:noiseEndingAtStart to: ( aCollection size - noiseBeginningAtEnd ).			aNoiseLessCollection do:[ :eachItem |				|noiseFreeItem|				noiseFreeItem := eachItem copyReplaceAll: '"' with: ''.				fromCurrency := ( ( ( ( ( aCollection at:titleLine ) tokensBasedOn: $, ) at: firstTitleElements ) tokensBasedOn: $/ ) at: firstCurrency ) copyReplaceAll: '"' with: ''.				toCurrency := ( ( ( ( ( aCollection at: titleLine ) tokensBasedOn: $, ) at: firstTitleElements ) tokensBasedOn: $/ ) at: secondCurrency ) copyReplaceAll: '"' with: ''.				aRate := ( noiseFreeItem tokensBasedOn: $, ) at: firstRatePosition.				aDate := Timestamp readFromString: ( ( ( noiseFreeItem tokensBasedOn: $, ) at: datePosition ) shiftLeft: $- ).				ExchangeRates add: ( super new sourceCurrency: fromCurrency; destinationCurrency: toCurrency; date: aDate; rate: aRate).				fromCurrency := ( ( ( ( ( aCollection at:titleLine ) tokensBasedOn: $, ) at: secondTitleElements ) tokensBasedOn: $/ ) at: firstCurrency ) copyReplaceAll: '"' with: ''.				toCurrency := ( ( ( ( ( aCollection at: titleLine ) tokensBasedOn: $, ) at: secondTitleElements ) tokensBasedOn: $/ ) at: secondCurrency ) copyReplaceAll: '"' with: ''.				aRate := ( noiseFreeItem tokensBasedOn: $, ) at: secondRatePosition.				ExchangeRates add: ( super new sourceCurrency: fromCurrency; destinationCurrency: toCurrency; date: aDate; rate: aRate).			].					].		Instance := self basicNew.	].	^ExchangeRates</body>
</methods>


<methods>
<class-id>CurrencyConversion</class-id> <category>accessing</category>

<body package="BankProject" selector="rate">rate	^rate</body>

<body package="BankProject" selector="sourceCurrency">sourceCurrency	^sourceCurrency</body>

<body package="BankProject" selector="destinationCurrency">destinationCurrency	^destinationCurrency</body>

<body package="BankProject" selector="date">date	^date</body>

<body package="BankProject" selector="destinationCurrency:">destinationCurrency: anObject	destinationCurrency := anObject</body>

<body package="BankProject" selector="date:">date: anObject	date := anObject</body>

<body package="BankProject" selector="rate:">rate: anObject	rate := anObject</body>

<body package="BankProject" selector="sourceCurrency:">sourceCurrency: anObject	sourceCurrency := anObject</body>
</methods>

<methods>
<class-id>CurrencyConversion</class-id> <category>initialize-release</category>

<body package="BankProject" selector="initialize">initialize	"Initialize a newly created instance. This method must answer the receiver."	super initialize.	" *** Edit the following to properly initialize instance variables ***"	sourceCurrency := nil.	destinationCurrency := nil.	date := nil.	" *** And replace this comment with additional initialization code *** "	^self</body>
</methods>


<methods>
<class-id>Core.String</class-id> <category>accessing</category>

<body package="BankProject" selector="tokensBasedOn:swap:and:">tokensBasedOn: aSymbol swap: firstPosition and: secondPosition	|anArray result temporaryValue|	result := WriteStream with: String new.	anArray := ( self tokensBasedOn: aSymbol ) asArray.	temporaryValue := anArray at: firstPosition.	anArray at: firstPosition put: ( anArray at: secondPosition ).	anArray at: secondPosition put: ( temporaryValue ).	anArray do:[:item| result nextPutAll: item asString; nextPut: aSymbol].	result position: (result position - 1).	^result contents.</body>

<body package="BankProject" selector="shiftLeft:">shiftLeft: aSymbol	|aCollection result |	result := WriteStream with: String new.	aCollection := self tokensBasedOn: aSymbol.	aCollection addLast: ( aCollection removeFirst ).	aCollection do:[:item| result nextPutAll: item asString; nextPut: aSymbol].	result position: (result position - 1).	^result contents.</body>
</methods>

<methods>
<class-id>Core.String</class-id> <category>converting</category>

<body package="BankProject" selector="asCurrency">asCurrency	^Currency fromString: self</body>
</methods>


<methods>
<class-id>Core.Stream</class-id> <category>accessing</category>

<body package="BankProject" selector="lines">lines	"I read a stream one line at a time and print it."	|anOrderedCollection|		anOrderedCollection := OrderedCollection new.	[self atEnd] whileFalse:[				anOrderedCollection add: self nextLine.	].	self close.	^anOrderedCollection.</body>

<body package="BankProject" selector="nextLine">nextLine	"I read a stream one line at a time and print it."	|streamLine|		(self atEnd) ifFalse:[		streamLine := self upTo: Character lf.				^streamLine.	].</body>
</methods>



</st-source>
