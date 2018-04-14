SELECT  s.tipost,
        s.csosn,
        s.cst,
        (CASE
            WHEN (s.tipost = 'NORMAL' AND s.cst IS NULL)
                THEN 'TRIBUTACAO INVALIDA. CST NULO'
            WHEN (s.tipost = 'SIMPLES_NACIONAL' AND s.csosn IS NULL)
                THEN 'TRIBUTACAO INVALIDA. CSOSN NULO'
            WHEN (s.tipost = 'NORMAL' AND s.csosn IS NOT NULL)
                THEN 'TRIBUTACAO INVALIDA. REGIME NORMAL COM CSOSN.'
            WHEN (s.tipost = 'NORMAL' AND s.cst NOT IN ('00','20','40','41','60','90'))
                THEN 'TRIBUTACAO INVALIDA. CST NAO PERMITIDO PARA REGIME NORMAL. CST: '||s.cst
            WHEN (s.tipost = 'NORMAL' AND s.cst IN ('00','10','20','30','40','41','51','60','70'))
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
         END)
  FROM  situacaotributaria s
order BY s.tipost
