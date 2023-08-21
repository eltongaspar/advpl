
Set Procedure to Lib_MsgLoad.prg

Function Lib_CalcIRPFAnalise()

Local rSalBruto := 0  // Salári Bruto
Local rQtdeDepend := 0 // Qtde de dependentes 
Local rValDepend := 0 // Valor por Dependentes 
Local rValPensaoAliment := 0 // Valor Pensao Alimentacia 
Local rINSS := 0 // Valor Inss
Local rIRPFSimp := 0 // Vaor IRPF Simplificado 
Local rValTotDepend := 0 // Valor Total Dependentes 
Local rValBaseIR := 0
Local rValBaseIRSimp := 0
Local rValProgIR := 0
Local rValProgIRSimp := 0
Local rValDedIR := 0
Local rValDedIRSimp := 0
Local cAlicotIRPF := ''
Local cAlicotIRPFSimp :=  ''
Local rValLiqComp := 0
Local rValLiqSimp := 0
Local cTipoIRPF := ''
Local rIRCompRec := 0
Local rIRSimpRec := 0
Local cMsgInform := ''
Local iQtdeMsgInform := 10

// Capturar Informações 
Accept('Informe o Salario Bruto:  ') to rSalBruto
Accept('Informe a Qtde Dependentes:  ') to rQtdeDepend
Accept('Informe o Valor por Dependentes:  ') to rValDepend
Accept('Informe o Valor da Pensao Alimenticia:  ') to rValPensaoAliment
Accept('Informe o Valor do INSS:  ') to rINSS
Accept('Informe o Valor do IRPF Simplificado:  ') to rIRPFSimp

// Converter Informações
rSalBruto := Val(rSalBruto)
rQtdeDepend := Val(rQtdeDepend)
rValDepend := Val(rValDepend)
rValPensaoAliment := Val(rValPensaoAliment)
rINSS := Val(rINSS)
rIRPFSimp := Val(rIRPFSimp)

// Calculo Valor Total Dependentes
rValTotDepend := rValDepend * rQtdeDepend

// Calculo Base IR Completo e Composto 
rValBaseIR := rSalBruto - rINSS - rValPensaoAliment - rValTotDepend
rValBaseIRSimp := rSalBruto - rIRPFSimp


// Analisar Faixa de IR Completo 
// Faixa 01
If rValBaseIR <= 2112.00
	rValProgIR = 0
	rValDedIR = 0
	cAlicotIRPF = '0%'
Endif 

// Faixa 02
If rValBaseIR >= 2112.01 .And. rValBaseIR <= 2826.65
	rValProgIR = rValBaseIR * 0.075
	rValDedIR = 158.40
	cAlicotIRPF = '7,5%'
Endif 

// Faixa 03
If rValBaseIR >= 2826.66 .And. rValBaseIR <= 3751.05
	rValProgIR = rValBaseIR * 0.15
	rValDedIR = 370.40
	cAlicotIRPF = '15%'
Endif 

// Faixa 04
If rValBaseIR >= 3751.06 .And. rValBaseIR <= 4664.68
	rValProgIR = rValBaseIR * 0.22
	rValDedIR = 651.73
	cAlicotIRPF = '22%'
Endif 

// Faixa 05
If rValBaseIR > 4664.68
	rValProgIR = rValBaseIR * 0.275
	rValDedIR = 884.96
	cAlicotIRPF = '27,5%'
Endif


// Analisar Faixa de IR Simples
// Faixa 01
If rValBaseIRSimp <= 2112.00
	rValProgIRSimp = 0
	rValDedIRSimp = 0
	cAlicotIRPFSimp = '0%'
Endif 

// Faixa 02
If rValBaseIRSimp >= 2112.01 .And. rValBaseIRSimp <= 2826.65
	rValProgIRSimp = rValBaseIRSimp * 0.075
	rValDedIRSimp = 158.40
	cAlicotIRPFSimp = '7,5%'
Endif 

// Faixa 03
If rValBaseIRSimp >= 2826.66 .And. rValBaseIRSimp <= 3751.05
	rValProgIRSimp = rValBaseIRSimp * 0.15
	rValDedIRSimp = 370.40
	cAlicotIRPFSimp = '15%'
Endif 

// Faixa 04
If rValBaseIRSimp >= 3751.06 .And. rValBaseIRSimp <= 4664.68
	rValProgIRSimp = rValBaseIRSimp * 0.22
	rValDedIRSimp = 651.73
	cAlicotIRPFSimp = '22%'
Endif 

// Faixa 05
If rValBaseIRSimp > 4664.68
	rValProgIRSimp = rValBaseIRSimp * 0.275
	rValDedIRSimp = 884.96
	cAlicotIRPFSimp = '27,5%'
Endif

/*Base de cÃ¡lculo	AlÃ­quota	Parcela a deduzir do IR
De R$ 2.112,01 atÃ© R$ 2.826,65	7,5%	R$ 158,40
De R$ 2.826,66 atÃ© R$ 3.751,05	15%	R$ 370,40
De R$ 3.751,06 atÃ© R$ 4.664,68	22,5%	R$ 651,73
Acima de R$ 4.664,68	27,5%*/


/*Base de Cálculo (R$)	Alíquota (%)	Parcela a Deduzir do IR (R$)
Até 2.112,00				zero				zero
De 2.112,01 até 2.826,65	7,5					158,40
De 2.826,66 até 3.751,05	15					370,40
De 3.751,06 até 4.664,68	22,5				651,73
Acima de 4.664,68	2		7,5						884,96        */


// Calculo IR a Recolher
rIRCompRec = rValProgIR - rValDedIR
rIRSimpRec = rValProgIRSimp-rValDedIR

// Calculo Valor Liquido a Receber
rValLiqComp := rSalBruto - rIRCompRec - rINSS - rValPensaoAliment - rValTotDepend - rValDedIR
rValLiqSimp := rSalBruto - rIRSimpRec - rIRPFSimp

// Compara IRPF Completo e Simples pelo Valor Base Dedução
iF rValLiqComp < rIRSimpRec
	cTipoIRPF = '1'
EndIf

iF rValLiqComp > rIRSimpRec
	cTipoIRPF := '2'
EndIf

cMsgInform := 'Calculando IRPF - Imposto de Renda Pessoa Fisica'
MsgLoad(cMsgInform,iQtdeMsgInform)

Qout('Salario Bruto ' + Str(rSalBruto))
Qout('Qtde Dependentes:  ' + Str(rQtdeDepend))
Qout('Valor por Dependes:  ' + Str(rValDepend))
Qout('Valor Total por Dependes:  ' + Str(rValTotDepend))
Qout('Valor Pensao Alimenticia:  ' + Str(rValPensaoAliment)) 
Qout('Valor INSS:  ' + Str(rINSS))
Qout('Valor Base IRPF:  ' + Str(rValBaseIR))
Qout('Valor Base IRPF Simples:  ' + Str(rValBaseIRSimp))
Qout('Valor IRPF Deduzido Completo:  ' + Str(rValProgIR))
Qout('Valor IRPF Deduzido Simples:  ' + Str(rValProgIRSimp))
Qout('Valor IRPF Alicota:  ' + (cAlicotIRPF))
Qout('Valor IRPF Alicota Simples:  ' + (cAlicotIRPFSimp))
Qout (('IR Completo a Recolher ') + Str(rIRCompRec))
Qout (('IR Completo a Recolher ') + Str(rIRSimpRec))
Qout('Valor Liquido Completo:  ' + Str(rValLiqComp))
Qout('Valor Liquido Simples:  ' + Str(rValLiqSimp))

If cTipoIRPF = '1'
	QOut('IRPF Completo')
EndIf

If cTipoIRPF = '2'
	QOut('IRPF Simplificado')
EndIf

Inkey (5)








Return NIL 
