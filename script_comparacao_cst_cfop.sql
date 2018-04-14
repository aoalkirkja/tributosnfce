SELECT  s.tipost,
        (CASE
            WHEN (s.tipost = 'NORMAL' AND s.cst IS NULL)
                THEN 'TRIBUTACAO INVALIDA. CST NULO'
            WHEN (s.tipost = 'SIMPLES_NACIONAL' AND s.csosn IS NULL)
                THEN 'TRIBUTACAO INVALIDA. CSOSN NULO'
            WHEN (s.tipost = 'NORMAL' AND s.csosn IS NOT NULL)
                THEN 'TRIBUTACAO INVALIDA. REGIME NORMAL COM CSOSN.'
            WHEN (s.tipost = 'NORMAL' AND s.cst NOT IN ('00','20','40','41','60','90'))
                THEN 'TRIBUTACAO INVALIDA. CST NAO PERMITIDO PARA REGIME NORMAL. CST: '||s.cst
            WHEN (s.tipost = 'NORMAL' AND s.cst IN ('00','20','40','41','60'))
                THEN 'TRIBUTACAO CORRETA. CST: '||s.cst
            WHEN (s.tipost = 'NORMAL' AND s.cst = '90')
                THEN 'TRIBUTACAO DE ACORDO COM A UF. PROCURE O CONTADOR. CST: '||s.cst
            WHEN (s.tipost = 'SIMPLES_NACIONAL' AND s.csosn = '900')
                THEN 'TRIBUTACAO DE ACORDO COM A UF. PROCURE O CONTADOR. CSOSN: '||s.csosn
            WHEN (s.tipost = 'SIMPLES_NACIONAL' AND s.cst IS NOT NULL)
                THEN 'TRIBUTACAO INVALIDA. SIMPLES NACIONAL COM CST. CSOSN: '||s.csosn
            WHEN (s.tipost = 'SIMPLES_NACIONAL' AND s.csosn NOT IN ('102','103','300','500','900'))
                THEN 'TRIBUTACAO INVALIDA. CSOSN NAO PERMITIDO PARA SIMPLES NACIONAL. CSOSN: '||s.csosn
            ELSE
                'CST: '||s.cst||' - CSOSN: '||s.csosn   
         END) cst_csosn,
        c.cfop,
        (CASE
            WHEN ((s.cst IN ('00','20','40','41') OR s.csosn IN ('102','103','300')) AND c.cfop IN (5401,5403,5405,5653,5656,5667,5933))
                THEN ('CFOP INCOMPATIVEL COM CST/ CSOSN')
            WHEN ((s.cst IN ('00','20','40','41') OR s.csosn IN ('102','103','300')) AND c.cfop IN (5101,5102,5103,5104,5115))
                THEN ('CFOP: '||c.cfop||'. CFOP CORRETO PARA CST: '||s.cst)
            WHEN ((s.cst IN '60' OR s.csosn = '500') AND c.cfop IN (5401,5403,5405,5653,5656,5667,5933))
                THEN ('CFOP: '||c.cfop||'. CFOP CORRETO PARA CST 60')
            WHEN ((s.cst IN '60' OR s.csosn = '500') AND c.cfop IN (5101,5102,5103,5104,5115))
                THEN ('ERRO: CFOP: '||c.cfop||'. CFOP INCOMPATIVEL PARA CST 60')     
            WHEN ((s.cst IN '90' OR s.csosn = '900'))
                THEN ('PROCURE SEU CONTADOR. CST DEFINIDO POR FILIAL. CST: '||s.cst||' E CFOP: '||c.cfop)  
            ELSE
                'CFOP: '||c.cfop||' NAO PERMITIDO PARA A NFC-e' 
         END) cfop_cst 
  FROM  cfop c,
        situacaotributaria s
 WHERE  c.cfop = :cfop
   AND  s.cst  = :cst
   
