$MODEL TCCT_SAT
# 
# template file: Template.tpl
# ESATAN-TMS 2020, run date 16:09 Sun 2 May 2021
# Model name: TCCT_SAT        Analysis case: acase01
#
  $LOCALS
  # GENCODE LOCALS - DO NOT REMOVE 
#
  $NODES
  # GENCODE NODES - DO NOT REMOVE 
#
  $CONDUCTORS
  # GENCODE CONDUCTORS - DO NOT REMOVE 
#
  $CONSTANTS
  # GENCODE CONSTANTS - DO NOT REMOVE 
#
  $ARRAYS
  # GENCODE ARRAYS - DO NOT REMOVE 
#
  $EVENTS
  # GENCODE EVENTS - DO NOT REMOVE 
#
  $SUBROUTINES
  # GENCODE SUBROUTINES - DO NOT REMOVE 
C
  $INITIAL
      GENMOR
  # GENCODE BOUNDARY_CONDS - DO NOT REMOVE 
  # GENCODE INITIAL - DO NOT REMOVE 
C
  $EXECUTION

C
      TIMEND=5453.0577
      OUTINT=545.30577
      NLOOP=100
      RELXCA=0.01
      DTIMEI=10.0
      CALL SOLCYC('SLCRNC',0.01D0,0.01D0,5453.0577D0,100,' ','NONE')
C
      CALL SLCRNC
C
  $VARIABLES1
  # GENCODE VARIABLES1 - DO NOT REMOVE 
C
  $VARIABLES2
  # GENCODE VARIABLES2 - DO NOT REMOVE 
C
  $OUTPUTS
      CALL PRNDTB(' ', 'L, T, QI, C', CURRENT)
C
      CALL DMPTMD(' ', 'NODES, CONDUCTORS, CONSTANTS', CURRENT, ' ')

  # GENCODE OUTPUTS - DO NOT REMOVE 
C
$ENDMODEL TCCT_SAT
