$MODEL TCCT_SAT_acase01, ACDFILE
# ESATAN-TMS 2020, run date 17:14 Wed 5 May 2021
# Model name: TCCT_SAT        Analysis case: acase01
# 
# template file: Template.tpl
# ESATAN-TMS 2020, run date 16:09 Sun 2 May 2021
# Model name: TCCT_SAT        Analysis case: acase01
#
  $LOCALS
    $REAL
      #
      # Material properties from bulk 'ABS_plastic' 
      k_ABS_plastic = 0.200000;  Cp_ABS_plastic = 1600.00;  Dens_ABS_plastic = 1200.00;  
      #
      # Material properties from bulk 'Al_7075_T6' 
      k_Al_7075_T6 = 130.000;  Cp_Al_7075_T6 = 960.000;  Dens_Al_7075_T6 = 2810.00;  
      #
      # Material properties from bulk 'Be_Cu' 
      k_Be_Cu = 118.000;  Cp_Be_Cu = 420.000;  Dens_Be_Cu = 8260.00;  
      #
      # Material properties from bulk 'GaAs' 
      k_GaAs = 55.0000;  Cp_GaAs = 1000.00;  Dens_GaAs = 5300.00;  
      #
      # Material properties from bulk 'MLI' 
      k_MLI = 0.000000;  Cp_MLI = 900.000;  Dens_MLI = 300.000;  
      #
      # Material properties from bulk 'Radiator' 
      k_Radiator = 2.00000;  Cp_Radiator = 700.000;  Dens_Radiator = 2200.00;  
      #
      # Material properties from bulk 'ULE_Glass' 
      k_ULE_Glass = 1.31000;  Cp_ULE_Glass = 767.000;  Dens_ULE_Glass = 2210.00;  
#
  $NODES
    D1 = 'TRAY', T = 0.D+00,
     C = 7.5D-04 * Cp_Al_7075_T6 * Dens_Al_7075_T6,
     A = 0.500000, ALP = 0.500000, EPS = 0.100000,
     FX = -0.500000, FY = -0.500000, FZ = 2.00000;
    D2 = 'TRAY', T = 0.D+00,
     C = 7.5D-04 * Cp_Al_7075_T6 * Dens_Al_7075_T6,
     A = 0.500000, ALP = 0.500000, EPS = 0.100000,
     FX = 0.000000, FY = -0.500000, FZ = 2.00000;
    D3 = 'TRAY', T = 0.D+00,
     C = 7.5D-04 * Cp_Al_7075_T6 * Dens_Al_7075_T6,
     A = 0.500000, ALP = 0.500000, EPS = 0.100000,
     FX = 0.500000, FY = -0.500000, FZ = 2.00000;
    D4 = 'TRAY', T = 0.D+00,
     C = 7.5D-04 * Cp_Al_7075_T6 * Dens_Al_7075_T6,
     A = 0.500000, ALP = 0.500000, EPS = 0.100000,
     FX = -0.500000, FY = 0.000000, FZ = 2.00000;
    D5 = 'TRAY', T = 0.D+00,
     C = 7.5D-04 * Cp_Al_7075_T6 * Dens_Al_7075_T6,
     A = 0.500000, ALP = 0.500000, EPS = 0.100000,
     FX = 0.000000, FY = 0.000000, FZ = 2.00000;
    D6 = 'TRAY', T = 0.D+00,
     C = 7.5D-04 * Cp_Al_7075_T6 * Dens_Al_7075_T6,
     A = 0.500000, ALP = 0.500000, EPS = 0.100000,
     FX = 0.500000, FY = 0.000000, FZ = 2.00000;
    D7 = 'TRAY', T = 0.D+00,
     C = 7.5D-04 * Cp_Al_7075_T6 * Dens_Al_7075_T6,
     A = 0.500000, ALP = 0.500000, EPS = 0.100000,
     FX = -0.500000, FY = 0.500000, FZ = 2.00000;
    D8 = 'TRAY', T = 0.D+00,
     C = 7.5D-04 * Cp_Al_7075_T6 * Dens_Al_7075_T6,
     A = 0.500000, ALP = 0.500000, EPS = 0.100000,
     FX = 0.000000, FY = 0.500000, FZ = 2.00000;
    D9 = 'TRAY', T = 0.D+00,
     C = 7.5D-04 * Cp_Al_7075_T6 * Dens_Al_7075_T6,
     A = 0.500000, ALP = 0.500000, EPS = 0.100000,
     FX = 0.500000, FY = 0.500000, FZ = 2.00000;
    D10 = 'BX_outter', T = 0.D+00,
     C = 1.5D-04 * Cp_MLI * Dens_MLI,
     A = 0.250000, ALP = 0.500000, EPS = 0.100000,
     FX = -0.500000, FY = -0.500000, FZ = 2.50000;
    D11 = 'BX_inner', T = 0.D+00,
     C = 7.5D-04 * Cp_Al_7075_T6 * Dens_Al_7075_T6,
     A = 0.250000, ALP = 0.500000, EPS = 0.100000,
     FX = -0.500000, FY = -0.500000, FZ = 2.50000;
    D12 = 'BX_outter', T = 0.D+00,
     C = 1.5D-04 * Cp_MLI * Dens_MLI,
     A = 0.250000, ALP = 0.500000, EPS = 0.100000,
     FX = 0.000000, FY = -0.500000, FZ = 2.50000;
    D13 = 'BX_inner', T = 0.D+00,
     C = 7.5D-04 * Cp_Al_7075_T6 * Dens_Al_7075_T6,
     A = 0.250000, ALP = 0.500000, EPS = 0.100000,
     FX = 0.000000, FY = -0.500000, FZ = 2.50000;
    D14 = 'BX_outter', T = 0.D+00,
     C = 1.5D-04 * Cp_MLI * Dens_MLI,
     A = 0.250000, ALP = 0.500000, EPS = 0.100000,
     FX = 0.500000, FY = -0.500000, FZ = 2.50000;
    D15 = 'BX_inner', T = 0.D+00,
     C = 7.5D-04 * Cp_Al_7075_T6 * Dens_Al_7075_T6,
     A = 0.250000, ALP = 0.500000, EPS = 0.100000,
     FX = 0.500000, FY = -0.500000, FZ = 2.50000;
    D16 = 'BX_outter', T = 0.D+00,
     C = 1.5D-04 * Cp_MLI * Dens_MLI,
     A = 0.250000, ALP = 0.500000, EPS = 0.100000,
     FX = -0.500000, FY = 0.000000, FZ = 2.50000;
    D17 = 'BX_inner', T = 0.D+00,
     C = 7.5D-04 * Cp_Al_7075_T6 * Dens_Al_7075_T6,
     A = 0.250000, ALP = 0.500000, EPS = 0.100000,
     FX = -0.500000, FY = 0.000000, FZ = 2.50000;
    D18 = 'BX_outter', T = 0.D+00,
     C = 1.5D-04 * Cp_MLI * Dens_MLI,
     A = 0.250000, ALP = 0.500000, EPS = 0.100000,
     FX = 0.000000, FY = 0.000000, FZ = 2.50000;
    D19 = 'BX_inner', T = 0.D+00,
     C = 7.5D-04 * Cp_Al_7075_T6 * Dens_Al_7075_T6,
     A = 0.250000, ALP = 0.500000, EPS = 0.100000,
     FX = 0.000000, FY = 0.000000, FZ = 2.50000;
    D20 = 'BX_outter', T = 0.D+00,
     C = 1.5D-04 * Cp_MLI * Dens_MLI,
     A = 0.250000, ALP = 0.500000, EPS = 0.100000,
     FX = 0.500000, FY = 0.000000, FZ = 2.50000;
    D21 = 'BX_inner', T = 0.D+00,
     C = 7.5D-04 * Cp_Al_7075_T6 * Dens_Al_7075_T6,
     A = 0.250000, ALP = 0.500000, EPS = 0.100000,
     FX = 0.500000, FY = 0.000000, FZ = 2.50000;
    D22 = 'BX_outter', T = 0.D+00,
     C = 1.5D-04 * Cp_MLI * Dens_MLI,
     A = 0.250000, ALP = 0.500000, EPS = 0.100000,
     FX = -0.500000, FY = 0.500000, FZ = 2.50000;
    D23 = 'BX_inner', T = 0.D+00,
     C = 7.5D-04 * Cp_Al_7075_T6 * Dens_Al_7075_T6,
     A = 0.250000, ALP = 0.500000, EPS = 0.100000,
     FX = -0.500000, FY = 0.500000, FZ = 2.50000;
    D24 = 'BX_outter', T = 0.D+00,
     C = 1.5D-04 * Cp_MLI * Dens_MLI,
     A = 0.250000, ALP = 0.500000, EPS = 0.100000,
     FX = 0.000000, FY = 0.500000, FZ = 2.50000;
    D25 = 'BX_inner', T = 0.D+00,
     C = 7.5D-04 * Cp_Al_7075_T6 * Dens_Al_7075_T6,
     A = 0.250000, ALP = 0.500000, EPS = 0.100000,
     FX = 0.000000, FY = 0.500000, FZ = 2.50000;
    D26 = 'BX_outter', T = 0.D+00,
     C = 1.5D-04 * Cp_MLI * Dens_MLI,
     A = 0.250000, ALP = 0.500000, EPS = 0.100000,
     FX = 0.500000, FY = 0.500000, FZ = 2.50000;
    D27 = 'BX_inner', T = 0.D+00,
     C = 7.5D-04 * Cp_Al_7075_T6 * Dens_Al_7075_T6,
     A = 0.250000, ALP = 0.500000, EPS = 0.100000,
     FX = 0.500000, FY = 0.500000, FZ = 2.50000;
    D28 = 'BX_outter', T = 0.D+00,
     C = 1.D-04 * Cp_MLI * Dens_MLI,
     A = 0.166667, ALP = 0.500000, EPS = 0.100000,
     FX = -0.500000, FY = -0.750000, FZ = 1.66667;
    D29 = 'BX_inner', T = 0.D+00,
     C = 5.D-04 * Cp_Al_7075_T6 * Dens_Al_7075_T6,
     A = 0.166667, ALP = 0.500000, EPS = 0.100000,
     FX = -0.500000, FY = -0.750000, FZ = 1.66667;
    D30 = 'BX_outter', T = 0.D+00,
     C = 1.D-04 * Cp_MLI * Dens_MLI,
     A = 0.166667, ALP = 0.500000, EPS = 0.100000,
     FX = 0.000000, FY = -0.750000, FZ = 1.66667;
    D31 = 'BX_inner', T = 0.D+00,
     C = 5.D-04 * Cp_Al_7075_T6 * Dens_Al_7075_T6,
     A = 0.166667, ALP = 0.500000, EPS = 0.100000,
     FX = 0.000000, FY = -0.750000, FZ = 1.66667;
    D32 = 'BX_outter', T = 0.D+00,
     C = 1.D-04 * Cp_MLI * Dens_MLI,
     A = 0.166667, ALP = 0.500000, EPS = 0.100000,
     FX = 0.500000, FY = -0.750000, FZ = 1.66667;
    D33 = 'BX_inner', T = 0.D+00,
     C = 5.D-04 * Cp_Al_7075_T6 * Dens_Al_7075_T6,
     A = 0.166667, ALP = 0.500000, EPS = 0.100000,
     FX = 0.500000, FY = -0.750000, FZ = 1.66667;
    D34 = 'BX_outter', T = 0.D+00,
     C = 1.D-04 * Cp_MLI * Dens_MLI,
     A = 0.166667, ALP = 0.500000, EPS = 0.100000,
     FX = -0.500000, FY = -0.750000, FZ = 2.00000;
    D35 = 'BX_inner', T = 0.D+00,
     C = 5.D-04 * Cp_Al_7075_T6 * Dens_Al_7075_T6,
     A = 0.166667, ALP = 0.500000, EPS = 0.100000,
     FX = -0.500000, FY = -0.750000, FZ = 2.00000;
    D36 = 'BX_outter', T = 0.D+00,
     C = 1.D-04 * Cp_MLI * Dens_MLI,
     A = 0.166667, ALP = 0.500000, EPS = 0.100000,
     FX = 0.000000, FY = -0.750000, FZ = 2.00000;
    D37 = 'BX_inner', T = 0.D+00,
     C = 5.D-04 * Cp_Al_7075_T6 * Dens_Al_7075_T6,
     A = 0.166667, ALP = 0.500000, EPS = 0.100000,
     FX = 0.000000, FY = -0.750000, FZ = 2.00000;
    D38 = 'BX_outter', T = 0.D+00,
     C = 1.D-04 * Cp_MLI * Dens_MLI,
     A = 0.166667, ALP = 0.500000, EPS = 0.100000,
     FX = 0.500000, FY = -0.750000, FZ = 2.00000;
    D39 = 'BX_inner', T = 0.D+00,
     C = 5.D-04 * Cp_Al_7075_T6 * Dens_Al_7075_T6,
     A = 0.166667, ALP = 0.500000, EPS = 0.100000,
     FX = 0.500000, FY = -0.750000, FZ = 2.00000;
    D40 = 'BX_outter', T = 0.D+00,
     C = 1.D-04 * Cp_MLI * Dens_MLI,
     A = 0.166667, ALP = 0.500000, EPS = 0.100000,
     FX = -0.500000, FY = -0.750000, FZ = 2.33333;
    D41 = 'BX_inner', T = 0.D+00,
     C = 5.D-04 * Cp_Al_7075_T6 * Dens_Al_7075_T6,
     A = 0.166667, ALP = 0.500000, EPS = 0.100000,
     FX = -0.500000, FY = -0.750000, FZ = 2.33333;
    D42 = 'BX_outter', T = 0.D+00,
     C = 1.D-04 * Cp_MLI * Dens_MLI,
     A = 0.166667, ALP = 0.500000, EPS = 0.100000,
     FX = 0.000000, FY = -0.750000, FZ = 2.33333;
    D43 = 'BX_inner', T = 0.D+00,
     C = 5.D-04 * Cp_Al_7075_T6 * Dens_Al_7075_T6,
     A = 0.166667, ALP = 0.500000, EPS = 0.100000,
     FX = 0.000000, FY = -0.750000, FZ = 2.33333;
    D44 = 'BX_outter', T = 0.D+00,
     C = 1.D-04 * Cp_MLI * Dens_MLI,
     A = 0.166667, ALP = 0.500000, EPS = 0.100000,
     FX = 0.500000, FY = -0.750000, FZ = 2.33333;
    D45 = 'BX_inner', T = 0.D+00,
     C = 5.D-04 * Cp_Al_7075_T6 * Dens_Al_7075_T6,
     A = 0.166667, ALP = 0.500000, EPS = 0.100000,
     FX = 0.500000, FY = -0.750000, FZ = 2.33333;
    D46 = 'BX_outter', T = 0.D+00,
     C = 1.D-04 * Cp_MLI * Dens_MLI,
     A = 0.166667, ALP = 0.500000, EPS = 0.100000,
     FX = 0.750000, FY = -0.500000, FZ = 1.66667;
    D47 = 'BX_inner', T = 0.D+00,
     C = 5.D-04 * Cp_Al_7075_T6 * Dens_Al_7075_T6,
     A = 0.166667, ALP = 0.500000, EPS = 0.100000,
     FX = 0.750000, FY = -0.500000, FZ = 1.66667;
    D48 = 'BX_outter', T = 0.D+00,
     C = 1.D-04 * Cp_MLI * Dens_MLI,
     A = 0.166667, ALP = 0.500000, EPS = 0.100000,
     FX = 0.750000, FY = 0.000000, FZ = 1.66667;
    D49 = 'BX_inner', T = 0.D+00,
     C = 5.D-04 * Cp_Al_7075_T6 * Dens_Al_7075_T6,
     A = 0.166667, ALP = 0.500000, EPS = 0.100000,
     FX = 0.750000, FY = 0.000000, FZ = 1.66667;
    D50 = 'BX_outter', T = 0.D+00,
     C = 1.D-04 * Cp_MLI * Dens_MLI,
     A = 0.166667, ALP = 0.500000, EPS = 0.100000,
     FX = 0.750000, FY = 0.500000, FZ = 1.66667;
    D51 = 'BX_inner', T = 0.D+00,
     C = 5.D-04 * Cp_Al_7075_T6 * Dens_Al_7075_T6,
     A = 0.166667, ALP = 0.500000, EPS = 0.100000,
     FX = 0.750000, FY = 0.500000, FZ = 1.66667;
    D52 = 'BX_outter', T = 0.D+00,
     C = 1.D-04 * Cp_MLI * Dens_MLI,
     A = 0.166667, ALP = 0.500000, EPS = 0.100000,
     FX = 0.750000, FY = -0.500000, FZ = 2.00000;
    D53 = 'BX_inner', T = 0.D+00,
     C = 5.D-04 * Cp_Al_7075_T6 * Dens_Al_7075_T6,
     A = 0.166667, ALP = 0.500000, EPS = 0.100000,
     FX = 0.750000, FY = -0.500000, FZ = 2.00000;
    D54 = 'BX_outter', T = 0.D+00,
     C = 1.D-04 * Cp_MLI * Dens_MLI,
     A = 0.166667, ALP = 0.500000, EPS = 0.100000,
     FX = 0.750000, FY = 0.000000, FZ = 2.00000;
    D55 = 'BX_inner', T = 0.D+00,
     C = 5.D-04 * Cp_Al_7075_T6 * Dens_Al_7075_T6,
     A = 0.166667, ALP = 0.500000, EPS = 0.100000,
     FX = 0.750000, FY = 0.000000, FZ = 2.00000;
    D56 = 'BX_outter', T = 0.D+00,
     C = 1.D-04 * Cp_MLI * Dens_MLI,
     A = 0.166667, ALP = 0.500000, EPS = 0.100000,
     FX = 0.750000, FY = 0.500000, FZ = 2.00000;
    D57 = 'BX_inner', T = 0.D+00,
     C = 5.D-04 * Cp_Al_7075_T6 * Dens_Al_7075_T6,
     A = 0.166667, ALP = 0.500000, EPS = 0.100000,
     FX = 0.750000, FY = 0.500000, FZ = 2.00000;
    D58 = 'BX_outter', T = 0.D+00,
     C = 1.D-04 * Cp_MLI * Dens_MLI,
     A = 0.166667, ALP = 0.500000, EPS = 0.100000,
     FX = 0.750000, FY = -0.500000, FZ = 2.33333;
    D59 = 'BX_inner', T = 0.D+00,
     C = 5.D-04 * Cp_Al_7075_T6 * Dens_Al_7075_T6,
     A = 0.166667, ALP = 0.500000, EPS = 0.100000,
     FX = 0.750000, FY = -0.500000, FZ = 2.33333;
    D60 = 'BX_outter', T = 0.D+00,
     C = 1.D-04 * Cp_MLI * Dens_MLI,
     A = 0.166667, ALP = 0.500000, EPS = 0.100000,
     FX = 0.750000, FY = 0.000000, FZ = 2.33333;
    D61 = 'BX_inner', T = 0.D+00,
     C = 5.D-04 * Cp_Al_7075_T6 * Dens_Al_7075_T6,
     A = 0.166667, ALP = 0.500000, EPS = 0.100000,
     FX = 0.750000, FY = 0.000000, FZ = 2.33333;
    D62 = 'BX_outter', T = 0.D+00,
     C = 1.D-04 * Cp_MLI * Dens_MLI,
     A = 0.166667, ALP = 0.500000, EPS = 0.100000,
     FX = 0.750000, FY = 0.500000, FZ = 2.33333;
    D63 = 'BX_inner', T = 0.D+00,
     C = 5.D-04 * Cp_Al_7075_T6 * Dens_Al_7075_T6,
     A = 0.166667, ALP = 0.500000, EPS = 0.100000,
     FX = 0.750000, FY = 0.500000, FZ = 2.33333;
    D64 = 'BX_outter', T = 0.D+00,
     C = 1.D-04 * Cp_MLI * Dens_MLI,
     A = 0.166667, ALP = 0.500000, EPS = 0.100000,
     FX = 0.500000, FY = 0.750000, FZ = 1.66667;
    D65 = 'BX_inner', T = 0.D+00,
     C = 5.D-04 * Cp_Al_7075_T6 * Dens_Al_7075_T6,
     A = 0.166667, ALP = 0.500000, EPS = 0.100000,
     FX = 0.500000, FY = 0.750000, FZ = 1.66667;
    D66 = 'BX_outter', T = 0.D+00,
     C = 1.D-04 * Cp_MLI * Dens_MLI,
     A = 0.166667, ALP = 0.500000, EPS = 0.100000,
     FX = 0.000000, FY = 0.750000, FZ = 1.66667;
    D67 = 'BX_inner', T = 0.D+00,
     C = 5.D-04 * Cp_Al_7075_T6 * Dens_Al_7075_T6,
     A = 0.166667, ALP = 0.500000, EPS = 0.100000,
     FX = 0.000000, FY = 0.750000, FZ = 1.66667;
    D68 = 'BX_outter', T = 0.D+00,
     C = 1.D-04 * Cp_MLI * Dens_MLI,
     A = 0.166667, ALP = 0.500000, EPS = 0.100000,
     FX = -0.500000, FY = 0.750000, FZ = 1.66667;
    D69 = 'BX_inner', T = 0.D+00,
     C = 5.D-04 * Cp_Al_7075_T6 * Dens_Al_7075_T6,
     A = 0.166667, ALP = 0.500000, EPS = 0.100000,
     FX = -0.500000, FY = 0.750000, FZ = 1.66667;
    D70 = 'BX_outter', T = 0.D+00,
     C = 1.D-04 * Cp_MLI * Dens_MLI,
     A = 0.166667, ALP = 0.500000, EPS = 0.100000,
     FX = 0.500000, FY = 0.750000, FZ = 2.00000;
    D71 = 'BX_inner', T = 0.D+00,
     C = 5.D-04 * Cp_Al_7075_T6 * Dens_Al_7075_T6,
     A = 0.166667, ALP = 0.500000, EPS = 0.100000,
     FX = 0.500000, FY = 0.750000, FZ = 2.00000;
    D72 = 'BX_outter', T = 0.D+00,
     C = 1.D-04 * Cp_MLI * Dens_MLI,
     A = 0.166667, ALP = 0.500000, EPS = 0.100000,
     FX = 0.000000, FY = 0.750000, FZ = 2.00000;
    D73 = 'BX_inner', T = 0.D+00,
     C = 5.D-04 * Cp_Al_7075_T6 * Dens_Al_7075_T6,
     A = 0.166667, ALP = 0.500000, EPS = 0.100000,
     FX = 0.000000, FY = 0.750000, FZ = 2.00000;
    D74 = 'BX_outter', T = 0.D+00,
     C = 1.D-04 * Cp_MLI * Dens_MLI,
     A = 0.166667, ALP = 0.500000, EPS = 0.100000,
     FX = -0.500000, FY = 0.750000, FZ = 2.00000;
    D75 = 'BX_inner', T = 0.D+00,
     C = 5.D-04 * Cp_Al_7075_T6 * Dens_Al_7075_T6,
     A = 0.166667, ALP = 0.500000, EPS = 0.100000,
     FX = -0.500000, FY = 0.750000, FZ = 2.00000;
    D76 = 'BX_outter', T = 0.D+00,
     C = 1.D-04 * Cp_MLI * Dens_MLI,
     A = 0.166667, ALP = 0.500000, EPS = 0.100000,
     FX = 0.500000, FY = 0.750000, FZ = 2.33333;
    D77 = 'BX_inner', T = 0.D+00,
     C = 5.D-04 * Cp_Al_7075_T6 * Dens_Al_7075_T6,
     A = 0.166667, ALP = 0.500000, EPS = 0.100000,
     FX = 0.500000, FY = 0.750000, FZ = 2.33333;
    D78 = 'BX_outter', T = 0.D+00,
     C = 1.D-04 * Cp_MLI * Dens_MLI,
     A = 0.166667, ALP = 0.500000, EPS = 0.100000,
     FX = 0.000000, FY = 0.750000, FZ = 2.33333;
    D79 = 'BX_inner', T = 0.D+00,
     C = 5.D-04 * Cp_Al_7075_T6 * Dens_Al_7075_T6,
     A = 0.166667, ALP = 0.500000, EPS = 0.100000,
     FX = 0.000000, FY = 0.750000, FZ = 2.33333;
    D80 = 'BX_outter', T = 0.D+00,
     C = 1.D-04 * Cp_MLI * Dens_MLI,
     A = 0.166667, ALP = 0.500000, EPS = 0.100000,
     FX = -0.500000, FY = 0.750000, FZ = 2.33333;
    D81 = 'BX_inner', T = 0.D+00,
     C = 5.D-04 * Cp_Al_7075_T6 * Dens_Al_7075_T6,
     A = 0.166667, ALP = 0.500000, EPS = 0.100000,
     FX = -0.500000, FY = 0.750000, FZ = 2.33333;
    D82 = 'BX_outter', T = 0.D+00,
     C = 1.D-04 * Cp_MLI * Dens_MLI,
     A = 0.166667, ALP = 0.500000, EPS = 0.100000,
     FX = -0.750000, FY = 0.500000, FZ = 1.66667;
    D83 = 'BX_inner', T = 0.D+00,
     C = 5.D-04 * Cp_Al_7075_T6 * Dens_Al_7075_T6,
     A = 0.166667, ALP = 0.500000, EPS = 0.100000,
     FX = -0.750000, FY = 0.500000, FZ = 1.66667;
    D84 = 'BX_outter', T = 0.D+00,
     C = 1.D-04 * Cp_MLI * Dens_MLI,
     A = 0.166667, ALP = 0.500000, EPS = 0.100000,
     FX = -0.750000, FY = 0.000000, FZ = 1.66667;
    D85 = 'BX_inner', T = 0.D+00,
     C = 5.D-04 * Cp_Al_7075_T6 * Dens_Al_7075_T6,
     A = 0.166667, ALP = 0.500000, EPS = 0.100000,
     FX = -0.750000, FY = 0.000000, FZ = 1.66667;
    D86 = 'BX_outter', T = 0.D+00,
     C = 1.D-04 * Cp_MLI * Dens_MLI,
     A = 0.166667, ALP = 0.500000, EPS = 0.100000,
     FX = -0.750000, FY = -0.500000, FZ = 1.66667;
    D87 = 'BX_inner', T = 0.D+00,
     C = 5.D-04 * Cp_Al_7075_T6 * Dens_Al_7075_T6,
     A = 0.166667, ALP = 0.500000, EPS = 0.100000,
     FX = -0.750000, FY = -0.500000, FZ = 1.66667;
    D88 = 'BX_outter', T = 0.D+00,
     C = 1.D-04 * Cp_MLI * Dens_MLI,
     A = 0.166667, ALP = 0.500000, EPS = 0.100000,
     FX = -0.750000, FY = 0.500000, FZ = 2.00000;
    D89 = 'BX_inner', T = 0.D+00,
     C = 5.D-04 * Cp_Al_7075_T6 * Dens_Al_7075_T6,
     A = 0.166667, ALP = 0.500000, EPS = 0.100000,
     FX = -0.750000, FY = 0.500000, FZ = 2.00000;
    D90 = 'BX_outter', T = 0.D+00,
     C = 1.D-04 * Cp_MLI * Dens_MLI,
     A = 0.166667, ALP = 0.500000, EPS = 0.100000,
     FX = -0.750000, FY = 0.000000, FZ = 2.00000;
    D91 = 'BX_inner', T = 0.D+00,
     C = 5.D-04 * Cp_Al_7075_T6 * Dens_Al_7075_T6,
     A = 0.166667, ALP = 0.500000, EPS = 0.100000,
     FX = -0.750000, FY = 0.000000, FZ = 2.00000;
    D92 = 'BX_outter', T = 0.D+00,
     C = 1.D-04 * Cp_MLI * Dens_MLI,
     A = 0.166667, ALP = 0.500000, EPS = 0.100000,
     FX = -0.750000, FY = -0.500000, FZ = 2.00000;
    D93 = 'BX_inner', T = 0.D+00,
     C = 5.D-04 * Cp_Al_7075_T6 * Dens_Al_7075_T6,
     A = 0.166667, ALP = 0.500000, EPS = 0.100000,
     FX = -0.750000, FY = -0.500000, FZ = 2.00000;
    D94 = 'BX_outter', T = 0.D+00,
     C = 1.D-04 * Cp_MLI * Dens_MLI,
     A = 0.166667, ALP = 0.500000, EPS = 0.100000,
     FX = -0.750000, FY = 0.500000, FZ = 2.33333;
    D95 = 'BX_inner', T = 0.D+00,
     C = 5.D-04 * Cp_Al_7075_T6 * Dens_Al_7075_T6,
     A = 0.166667, ALP = 0.500000, EPS = 0.100000,
     FX = -0.750000, FY = 0.500000, FZ = 2.33333;
    D96 = 'BX_outter', T = 0.D+00,
     C = 1.D-04 * Cp_MLI * Dens_MLI,
     A = 0.166667, ALP = 0.500000, EPS = 0.100000,
     FX = -0.750000, FY = 0.000000, FZ = 2.33333;
    D97 = 'BX_inner', T = 0.D+00,
     C = 5.D-04 * Cp_Al_7075_T6 * Dens_Al_7075_T6,
     A = 0.166667, ALP = 0.500000, EPS = 0.100000,
     FX = -0.750000, FY = 0.000000, FZ = 2.33333;
    D98 = 'BX_outter', T = 0.D+00,
     C = 1.D-04 * Cp_MLI * Dens_MLI,
     A = 0.166667, ALP = 0.500000, EPS = 0.100000,
     FX = -0.750000, FY = -0.500000, FZ = 2.33333;
    D99 = 'BX_inner', T = 0.D+00,
     C = 5.D-04 * Cp_Al_7075_T6 * Dens_Al_7075_T6,
     A = 0.166667, ALP = 0.500000, EPS = 0.100000,
     FX = -0.750000, FY = -0.500000, FZ = 2.33333;
    D100 = 'BX_outter', T = 0.D+00,
     C = 1.5D-04 * Cp_MLI * Dens_MLI,
     A = 0.250000, ALP = 0.500000, EPS = 0.100000,
     FX = -0.500000, FY = 0.500000, FZ = 1.50000;
    D101 = 'BX_inner', T = 0.D+00,
     C = 7.5D-04 * Cp_Al_7075_T6 * Dens_Al_7075_T6,
     A = 0.250000, ALP = 0.500000, EPS = 0.100000,
     FX = -0.500000, FY = 0.500000, FZ = 1.50000;
    D102 = 'BX_outter', T = 0.D+00,
     C = 1.5D-04 * Cp_MLI * Dens_MLI,
     A = 0.250000, ALP = 0.500000, EPS = 0.100000,
     FX = 0.000000, FY = 0.500000, FZ = 1.50000;
    D103 = 'BX_inner', T = 0.D+00,
     C = 7.5D-04 * Cp_Al_7075_T6 * Dens_Al_7075_T6,
     A = 0.250000, ALP = 0.500000, EPS = 0.100000,
     FX = 0.000000, FY = 0.500000, FZ = 1.50000;
    D104 = 'BX_outter', T = 0.D+00,
     C = 1.5D-04 * Cp_MLI * Dens_MLI,
     A = 0.250000, ALP = 0.500000, EPS = 0.100000,
     FX = 0.500000, FY = 0.500000, FZ = 1.50000;
    D105 = 'BX_inner', T = 0.D+00,
     C = 7.5D-04 * Cp_Al_7075_T6 * Dens_Al_7075_T6,
     A = 0.250000, ALP = 0.500000, EPS = 0.100000,
     FX = 0.500000, FY = 0.500000, FZ = 1.50000;
    D106 = 'BX_outter', T = 0.D+00,
     C = 1.5D-04 * Cp_MLI * Dens_MLI,
     A = 0.250000, ALP = 0.500000, EPS = 0.100000,
     FX = -0.500000, FY = 0.000000, FZ = 1.50000;
    D107 = 'BX_inner', T = 0.D+00,
     C = 7.5D-04 * Cp_Al_7075_T6 * Dens_Al_7075_T6,
     A = 0.250000, ALP = 0.500000, EPS = 0.100000,
     FX = -0.500000, FY = 0.000000, FZ = 1.50000;
    D108 = 'BX_outter', T = 0.D+00,
     C = 1.5D-04 * Cp_MLI * Dens_MLI,
     A = 0.250000, ALP = 0.500000, EPS = 0.100000,
     FX = 0.000000, FY = 0.000000, FZ = 1.50000;
    D109 = 'BX_inner', T = 0.D+00,
     C = 7.5D-04 * Cp_Al_7075_T6 * Dens_Al_7075_T6,
     A = 0.250000, ALP = 0.500000, EPS = 0.100000,
     FX = 0.000000, FY = 0.000000, FZ = 1.50000;
    D110 = 'BX_outter', T = 0.D+00,
     C = 1.5D-04 * Cp_MLI * Dens_MLI,
     A = 0.250000, ALP = 0.500000, EPS = 0.100000,
     FX = 0.500000, FY = 0.000000, FZ = 1.50000;
    D111 = 'BX_inner', T = 0.D+00,
     C = 7.5D-04 * Cp_Al_7075_T6 * Dens_Al_7075_T6,
     A = 0.250000, ALP = 0.500000, EPS = 0.100000,
     FX = 0.500000, FY = 0.000000, FZ = 1.50000;
    D112 = 'BX_outter', T = 0.D+00,
     C = 1.5D-04 * Cp_MLI * Dens_MLI,
     A = 0.250000, ALP = 0.500000, EPS = 0.100000,
     FX = -0.500000, FY = -0.500000, FZ = 1.50000;
    D113 = 'BX_inner', T = 0.D+00,
     C = 7.5D-04 * Cp_Al_7075_T6 * Dens_Al_7075_T6,
     A = 0.250000, ALP = 0.500000, EPS = 0.100000,
     FX = -0.500000, FY = -0.500000, FZ = 1.50000;
    D114 = 'BX_outter', T = 0.D+00,
     C = 1.5D-04 * Cp_MLI * Dens_MLI,
     A = 0.250000, ALP = 0.500000, EPS = 0.100000,
     FX = 0.000000, FY = -0.500000, FZ = 1.50000;
    D115 = 'BX_inner', T = 0.D+00,
     C = 7.5D-04 * Cp_Al_7075_T6 * Dens_Al_7075_T6,
     A = 0.250000, ALP = 0.500000, EPS = 0.100000,
     FX = 0.000000, FY = -0.500000, FZ = 1.50000;
    D116 = 'BX_outter', T = 0.D+00,
     C = 1.5D-04 * Cp_MLI * Dens_MLI,
     A = 0.250000, ALP = 0.500000, EPS = 0.100000,
     FX = 0.500000, FY = -0.500000, FZ = 1.50000;
    D117 = 'BX_inner', T = 0.D+00,
     C = 7.5D-04 * Cp_Al_7075_T6 * Dens_Al_7075_T6,
     A = 0.250000, ALP = 0.500000, EPS = 0.100000,
     FX = 0.500000, FY = -0.500000, FZ = 1.50000;
    D118 = 'RDTR_outter', T = 0.D+00,
     C = 2.D-03 * Cp_Radiator * Dens_Radiator,
     A = 0.250000, ALP = 0.080000, EPS = 0.800000,
     FX = -0.250000, FY = 0.751000, FZ = 2.25000;
    D119 = 'RDTR_inner', T = 0.D+00,
     C = 2.5D-04 * Cp_Al_7075_T6 * Dens_Al_7075_T6,
     A = 0.250000, ALP = 0.500000, EPS = 0.100000,
     FX = -0.250000, FY = 0.751000, FZ = 2.25000;
    D120 = 'RDTR_outter', T = 0.D+00,
     C = 2.D-03 * Cp_Radiator * Dens_Radiator,
     A = 0.250000, ALP = 0.080000, EPS = 0.800000,
     FX = 0.250000, FY = 0.751000, FZ = 2.25000;
    D121 = 'RDTR_inner', T = 0.D+00,
     C = 2.5D-04 * Cp_Al_7075_T6 * Dens_Al_7075_T6,
     A = 0.250000, ALP = 0.500000, EPS = 0.100000,
     FX = 0.250000, FY = 0.751000, FZ = 2.25000;
    D122 = 'RDTR_outter', T = 0.D+00,
     C = 2.D-03 * Cp_Radiator * Dens_Radiator,
     A = 0.250000, ALP = 0.080000, EPS = 0.800000,
     FX = -0.250000, FY = 0.751000, FZ = 1.75000;
    D123 = 'RDTR_inner', T = 0.D+00,
     C = 2.5D-04 * Cp_Al_7075_T6 * Dens_Al_7075_T6,
     A = 0.250000, ALP = 0.500000, EPS = 0.100000,
     FX = -0.250000, FY = 0.751000, FZ = 1.75000;
    D124 = 'RDTR_outter', T = 0.D+00,
     C = 2.D-03 * Cp_Radiator * Dens_Radiator,
     A = 0.250000, ALP = 0.080000, EPS = 0.800000,
     FX = 0.250000, FY = 0.751000, FZ = 1.75000;
    D125 = 'RDTR_inner', T = 0.D+00,
     C = 2.5D-04 * Cp_Al_7075_T6 * Dens_Al_7075_T6,
     A = 0.250000, ALP = 0.500000, EPS = 0.100000,
     FX = 0.250000, FY = 0.751000, FZ = 1.75000;
    D126 = 'RDTR_outter', T = 0.D+00,
     C = 2.D-03 * Cp_Radiator * Dens_Radiator,
     A = 0.250000, ALP = 0.080000, EPS = 0.800000,
     FX = -0.250000, FY = 0.751000, FZ = 1.25000;
    D127 = 'RDTR_inner', T = 0.D+00,
     C = 2.5D-04 * Cp_Al_7075_T6 * Dens_Al_7075_T6,
     A = 0.250000, ALP = 0.500000, EPS = 0.100000,
     FX = -0.250000, FY = 0.751000, FZ = 1.25000;
    D128 = 'RDTR_outter', T = 0.D+00,
     C = 2.D-03 * Cp_Radiator * Dens_Radiator,
     A = 0.250000, ALP = 0.080000, EPS = 0.800000,
     FX = 0.250000, FY = 0.751000, FZ = 1.25000;
    D129 = 'RDTR_inner', T = 0.D+00,
     C = 2.5D-04 * Cp_Al_7075_T6 * Dens_Al_7075_T6,
     A = 0.250000, ALP = 0.500000, EPS = 0.100000,
     FX = 0.250000, FY = 0.751000, FZ = 1.25000;
    D130 = 'RDTR_outter', T = 0.D+00,
     C = 2.D-03 * Cp_Radiator * Dens_Radiator,
     A = 0.250000, ALP = 0.080000, EPS = 0.800000,
     FX = -0.250000, FY = 0.751000, FZ = 0.750000;
    D131 = 'RDTR_inner', T = 0.D+00,
     C = 2.5D-04 * Cp_Al_7075_T6 * Dens_Al_7075_T6,
     A = 0.250000, ALP = 0.500000, EPS = 0.100000,
     FX = -0.250000, FY = 0.751000, FZ = 0.750000;
    D132 = 'RDTR_outter', T = 0.D+00,
     C = 2.D-03 * Cp_Radiator * Dens_Radiator,
     A = 0.250000, ALP = 0.080000, EPS = 0.800000,
     FX = 0.250000, FY = 0.751000, FZ = 0.750000;
    D133 = 'RDTR_inner', T = 0.D+00,
     C = 2.5D-04 * Cp_Al_7075_T6 * Dens_Al_7075_T6,
     A = 0.250000, ALP = 0.500000, EPS = 0.100000,
     FX = 0.250000, FY = 0.751000, FZ = 0.750000;
    D134 = 'ADCS_outter', T = 0.D+00,
     C = 6.D-04 * Cp_ABS_plastic * Dens_ABS_plastic,
     A = 0.300000, ALP = 0.970000, EPS = 0.840000,
     FX = -0.450000, FY = -0.0500000, FZ = 1.70100;
    D135 = 'ADCS_outter', T = 0.D+00,
     C = 4.D-04 * Cp_ABS_plastic * Dens_ABS_plastic,
     A = 0.200000, ALP = 0.970000, EPS = 0.840000,
     FX = -0.450000, FY = -0.200000, FZ = 1.60100;
    D136 = 'ADCS_outter', T = 0.D+00,
     C = 2.4D-04 * Cp_ABS_plastic * Dens_ABS_plastic,
     A = 0.120000, ALP = 0.970000, EPS = 0.840000,
     FX = -0.200000, FY = -0.0500000, FZ = 1.60100;
    D137 = 'ADCS_outter', T = 0.D+00,
     C = 4.D-04 * Cp_ABS_plastic * Dens_ABS_plastic,
     A = 0.200000, ALP = 0.970000, EPS = 0.840000,
     FX = -0.450000, FY = 0.100000, FZ = 1.60100;
    D138 = 'ADCS_outter', T = 0.D+00,
     C = 2.4D-04 * Cp_ABS_plastic * Dens_ABS_plastic,
     A = 0.120000, ALP = 0.970000, EPS = 0.840000,
     FX = -0.700000, FY = -0.0500000, FZ = 1.60100;
    D139 = 'ADCS_outter', T = 0.D+00,
     C = 6.D-04 * Cp_ABS_plastic * Dens_ABS_plastic,
     A = 0.300000, ALP = 0.970000, EPS = 0.840000,
     FX = -0.450000, FY = -0.0500000, FZ = 1.50100;
    D140 = 'outter', T = 0.D+00,
     C = 7.5D-01 * Cp_ABS_plastic * Dens_ABS_plastic,
     A = 0.500000, ALP = 0.970000, EPS = 0.840000,
     FX = -0.250000, FY = -0.250000, FZ = 3.40100;
    D141 = 'outter', T = 0.D+00,
     C = 7.5D-01 * Cp_ABS_plastic * Dens_ABS_plastic,
     A = 0.500000, ALP = 0.970000, EPS = 0.840000,
     FX = 0.250000, FY = -0.250000, FZ = 3.40100;
    D142 = 'outter', T = 0.D+00,
     C = 7.5D-01 * Cp_ABS_plastic * Dens_ABS_plastic,
     A = 0.500000, ALP = 0.970000, EPS = 0.840000,
     FX = -0.250000, FY = 0.250000, FZ = 3.40100;
    D143 = 'outter', T = 0.D+00,
     C = 7.5D-01 * Cp_ABS_plastic * Dens_ABS_plastic,
     A = 0.500000, ALP = 0.970000, EPS = 0.840000,
     FX = 0.250000, FY = 0.250000, FZ = 3.40100;
    D144 = 'outter', T = 0.D+00,
     C = 6.D-01 * Cp_ABS_plastic * Dens_ABS_plastic,
     A = 0.400000, ALP = 0.970000, EPS = 0.840000,
     FX = -0.250000, FY = -0.500000, FZ = 3.20100;
    D145 = 'outter', T = 0.D+00,
     C = 6.D-01 * Cp_ABS_plastic * Dens_ABS_plastic,
     A = 0.400000, ALP = 0.970000, EPS = 0.840000,
     FX = 0.250000, FY = -0.500000, FZ = 3.20100;
    D146 = 'outter', T = 0.D+00,
     C = 6.D-01 * Cp_ABS_plastic * Dens_ABS_plastic,
     A = 0.400000, ALP = 0.970000, EPS = 0.840000,
     FX = 0.500000, FY = -0.250000, FZ = 3.20100;
    D147 = 'outter', T = 0.D+00,
     C = 6.D-01 * Cp_ABS_plastic * Dens_ABS_plastic,
     A = 0.400000, ALP = 0.970000, EPS = 0.840000,
     FX = 0.500000, FY = 0.250000, FZ = 3.20100;
    D148 = 'outter', T = 0.D+00,
     C = 6.D-01 * Cp_ABS_plastic * Dens_ABS_plastic,
     A = 0.400000, ALP = 0.970000, EPS = 0.840000,
     FX = 0.250000, FY = 0.500000, FZ = 3.20100;
    D149 = 'outter', T = 0.D+00,
     C = 6.D-01 * Cp_ABS_plastic * Dens_ABS_plastic,
     A = 0.400000, ALP = 0.970000, EPS = 0.840000,
     FX = -0.250000, FY = 0.500000, FZ = 3.20100;
    D150 = 'outter', T = 0.D+00,
     C = 6.D-01 * Cp_ABS_plastic * Dens_ABS_plastic,
     A = 0.400000, ALP = 0.970000, EPS = 0.840000,
     FX = -0.500000, FY = 0.250000, FZ = 3.20100;
    D151 = 'outter', T = 0.D+00,
     C = 6.D-01 * Cp_ABS_plastic * Dens_ABS_plastic,
     A = 0.400000, ALP = 0.970000, EPS = 0.840000,
     FX = -0.500000, FY = -0.250000, FZ = 3.20100;
    D152 = 'outter', T = 0.D+00,
     C = 7.5D-01 * Cp_ABS_plastic * Dens_ABS_plastic,
     A = 0.500000, ALP = 0.970000, EPS = 0.840000,
     FX = -0.250000, FY = 0.250000, FZ = 3.00100;
    D153 = 'outter', T = 0.D+00,
     C = 7.5D-01 * Cp_ABS_plastic * Dens_ABS_plastic,
     A = 0.500000, ALP = 0.970000, EPS = 0.840000,
     FX = 0.250000, FY = 0.250000, FZ = 3.00100;
    D154 = 'outter', T = 0.D+00,
     C = 7.5D-01 * Cp_ABS_plastic * Dens_ABS_plastic,
     A = 0.500000, ALP = 0.970000, EPS = 0.840000,
     FX = -0.250000, FY = -0.250000, FZ = 3.00100;
    D155 = 'outter', T = 0.D+00,
     C = 7.5D-01 * Cp_ABS_plastic * Dens_ABS_plastic,
     A = 0.500000, ALP = 0.970000, EPS = 0.840000,
     FX = 0.250000, FY = -0.250000, FZ = 3.00100;
    D156 = 'outter', T = 0.D+00,
     C = 1.413717D-06 * Cp_Be_Cu * Dens_Be_Cu,
     A = 0.282743, ALP = 0.200000, EPS = 0.850000,
     FX = 0.901303, FY = 0.000000, FZ = 1.89095;
    D157 = 'inner', T = 0.D+00,
     C = 1.413717D-03 * Cp_Al_7075_T6 * Dens_Al_7075_T6,
     A = 0.282743, ALP = 0.360000, EPS = 0.610000,
     FX = 0.901303, FY = 0.000000, FZ = 1.89095;
    D158 = 'outter', T = 0.D+00,
     C = 3.75D-01 * Cp_ABS_plastic * Dens_ABS_plastic,
     A = 0.375000, ALP = 0.970000, EPS = 0.840000,
     FX = 0.375000, FY = 0.000000, FZ = 1.87500;
    D159 = 'outter', T = 0.D+00,
     C = 3.75D-01 * Cp_ABS_plastic * Dens_ABS_plastic,
     A = 0.375000, ALP = 0.970000, EPS = 0.840000,
     FX = 0.375000, FY = -0.125000, FZ = 1.75000;
    D160 = 'outter', T = 0.D+00,
     C = 1.25D-01 * Cp_ABS_plastic * Dens_ABS_plastic,
     A = 0.125000, ALP = 0.970000, EPS = 0.840000,
     FX = 0.750000, FY = 0.000000, FZ = 1.75000;
    D161 = 'outter', T = 0.D+00,
     C = 3.75D-01 * Cp_ABS_plastic * Dens_ABS_plastic,
     A = 0.375000, ALP = 0.970000, EPS = 0.840000,
     FX = 0.375000, FY = 0.125000, FZ = 1.75000;
    D162 = 'outter', T = 0.D+00,
     C = 1.25D-01 * Cp_ABS_plastic * Dens_ABS_plastic,
     A = 0.125000, ALP = 0.970000, EPS = 0.840000,
     FX = 0.000000, FY = 0.000000, FZ = 1.75000;
    D163 = 'outter', T = 0.D+00,
     C = 3.75D-01 * Cp_ABS_plastic * Dens_ABS_plastic,
     A = 0.375000, ALP = 0.970000, EPS = 0.840000,
     FX = 0.375000, FY = 0.000000, FZ = 1.62500;
    D164 = 'outter', T = 0.D+00,
     C = 5.734454D-04 * Cp_ABS_plastic * Dens_ABS_plastic,
     A = 0.286723, ALP = 0.970000, EPS = 0.840000,
     FX = 0.0925000, FY = 0.160215, FZ = 1.40100;
    D165 = 'outter', T = 0.D+00,
     C = 5.734454D-04 * Cp_ABS_plastic * Dens_ABS_plastic,
     A = 0.286723, ALP = 0.970000, EPS = 0.840000,
     FX = -0.185000, FY = 0.000000, FZ = 1.40100;
    D166 = 'outter', T = 0.D+00,
     C = 5.734454D-04 * Cp_ABS_plastic * Dens_ABS_plastic,
     A = 0.286723, ALP = 0.970000, EPS = 0.840000,
     FX = 0.0925000, FY = -0.160215, FZ = 1.40100;
    D167 = 'Mirror_inner', T = 0.D+00,
     C = 1.146891D-02 * Cp_ULE_Glass * Dens_ULE_Glass,
     A = 0.286723, ALP = U, EPS = U,  # Optical properties inconsistent or not defined
     FX = 0.0925000, FY = 0.160215, FZ = 0.501000;
    D168 = 'Mirror_inner', T = 0.D+00,
     C = 1.146891D-02 * Cp_ULE_Glass * Dens_ULE_Glass,
     A = 0.286723, ALP = U, EPS = U,  # Optical properties inconsistent or not defined
     FX = -0.185000, FY = 0.000000, FZ = 0.501000;
    D169 = 'Mirror_inner', T = 0.D+00,
     C = 1.146891D-02 * Cp_ULE_Glass * Dens_ULE_Glass,
     A = 0.286723, ALP = U, EPS = U,  # Optical properties inconsistent or not defined
     FX = 0.0925000, FY = -0.160215, FZ = 0.501000;
    D170 = 'outter', T = 0.D+00,
     C = 1.04615D-02 * Cp_ABS_plastic * Dens_ABS_plastic,
     A = 0.697434, ALP = 0.970000, EPS = 0.840000,
     FX = 0.185000, FY = 0.320429, FZ = 0.725000;
    D171 = 'outter', T = 0.D+00,
     C = 1.04615D-02 * Cp_ABS_plastic * Dens_ABS_plastic,
     A = 0.697434, ALP = 0.970000, EPS = 0.840000,
     FX = -0.370000, FY = 0.000000, FZ = 0.725000;
    D172 = 'outter', T = 0.D+00,
     C = 1.04615D-02 * Cp_ABS_plastic * Dens_ABS_plastic,
     A = 0.697434, ALP = 0.970000, EPS = 0.840000,
     FX = 0.185000, FY = -0.320429, FZ = 0.725000;
    D173 = 'outter', T = 0.D+00,
     C = 1.04615D-02 * Cp_ABS_plastic * Dens_ABS_plastic,
     A = 0.697434, ALP = 0.970000, EPS = 0.840000,
     FX = 0.185000, FY = 0.320429, FZ = 1.17500;
    D174 = 'outter', T = 0.D+00,
     C = 1.04615D-02 * Cp_ABS_plastic * Dens_ABS_plastic,
     A = 0.697434, ALP = 0.970000, EPS = 0.840000,
     FX = -0.370000, FY = 0.000000, FZ = 1.17500;
    D175 = 'outter', T = 0.D+00,
     C = 1.04615D-02 * Cp_ABS_plastic * Dens_ABS_plastic,
     A = 0.697434, ALP = 0.970000, EPS = 0.840000,
     FX = 0.185000, FY = -0.320429, FZ = 1.17500;
    D176 = 'TLD2_inner', T = 0.D+00,
     C = 3.926991D-04 * Cp_MLI * Dens_MLI,
     A = 0.196350, ALP = 0.360000, EPS = 0.610000,
     FX = 0.353553, FY = 0.353553, FZ = 0.000000;
    D177 = 'TLD2_outter', T = 0.D+00,
     C = 9.817477D-05 * Cp_MLI * Dens_MLI,
     A = 0.196350, ALP = 0.360000, EPS = 0.610000,
     FX = 0.353553, FY = 0.353553, FZ = 0.000000;
    D178 = 'TLD2_inner', T = 0.D+00,
     C = 3.926991D-04 * Cp_MLI * Dens_MLI,
     A = 0.196350, ALP = 0.360000, EPS = 0.610000,
     FX = -0.353553, FY = 0.353553, FZ = 0.000000;
    D179 = 'TLD2_outter', T = 0.D+00,
     C = 9.817477D-05 * Cp_MLI * Dens_MLI,
     A = 0.196350, ALP = 0.360000, EPS = 0.610000,
     FX = -0.353553, FY = 0.353553, FZ = 0.000000;
    D180 = 'TLD2_inner', T = 0.D+00,
     C = 3.926991D-04 * Cp_MLI * Dens_MLI,
     A = 0.196350, ALP = 0.360000, EPS = 0.610000,
     FX = -0.353553, FY = -0.353553, FZ = 0.000000;
    D181 = 'TLD2_outter', T = 0.D+00,
     C = 9.817477D-05 * Cp_MLI * Dens_MLI,
     A = 0.196350, ALP = 0.360000, EPS = 0.610000,
     FX = -0.353553, FY = -0.353553, FZ = 0.000000;
    D182 = 'TLD2_inner', T = 0.D+00,
     C = 3.926991D-04 * Cp_MLI * Dens_MLI,
     A = 0.196350, ALP = 0.360000, EPS = 0.610000,
     FX = 0.353553, FY = -0.353553, FZ = 0.000000;
    D183 = 'TLD2_outter', T = 0.D+00,
     C = 9.817477D-05 * Cp_MLI * Dens_MLI,
     A = 0.196350, ALP = 0.360000, EPS = 0.610000,
     FX = 0.353553, FY = -0.353553, FZ = 0.000000;
    D184 = 'TLC2_outter', T = 0.D+00,
     C = 7.363108D-04 * Cp_MLI * Dens_MLI,
     A = 1.472622, ALP = 0.360000, EPS = 0.610000,
     FX = 0.441942, FY = 0.441942, FZ = 0.750000;
    D185 = 'TLC2_inner', T = 0.D+00,
     C = 4.417865D-03 * Cp_Al_7075_T6 * Dens_Al_7075_T6,
     A = 1.472622, ALP = 0.360000, EPS = 0.610000,
     FX = 0.441942, FY = 0.441942, FZ = 0.750000;
    D186 = 'TLC2_outter', T = 0.D+00,
     C = 7.363108D-04 * Cp_MLI * Dens_MLI,
     A = 1.472622, ALP = 0.360000, EPS = 0.610000,
     FX = -0.441942, FY = 0.441942, FZ = 0.750000;
    D187 = 'TLC2_inner', T = 0.D+00,
     C = 4.417865D-03 * Cp_Al_7075_T6 * Dens_Al_7075_T6,
     A = 1.472622, ALP = 0.360000, EPS = 0.610000,
     FX = -0.441942, FY = 0.441942, FZ = 0.750000;
    D188 = 'TLC2_outter', T = 0.D+00,
     C = 7.363108D-04 * Cp_MLI * Dens_MLI,
     A = 1.472622, ALP = 0.360000, EPS = 0.610000,
     FX = -0.441942, FY = -0.441942, FZ = 0.750000;
    D189 = 'TLC2_inner', T = 0.D+00,
     C = 4.417865D-03 * Cp_Al_7075_T6 * Dens_Al_7075_T6,
     A = 1.472622, ALP = 0.360000, EPS = 0.610000,
     FX = -0.441942, FY = -0.441942, FZ = 0.750000;
    D190 = 'TLC2_outter', T = 0.D+00,
     C = 7.363108D-04 * Cp_MLI * Dens_MLI,
     A = 1.472622, ALP = 0.360000, EPS = 0.610000,
     FX = 0.441942, FY = -0.441942, FZ = 0.750000;
    D191 = 'TLC2_inner', T = 0.D+00,
     C = 4.417865D-03 * Cp_Al_7075_T6 * Dens_Al_7075_T6,
     A = 1.472622, ALP = 0.360000, EPS = 0.610000,
     FX = 0.441942, FY = -0.441942, FZ = 0.750000;
    D192 = 'Solar_face', T = 0.D+00,
     C = 3.D-04 * Cp_GaAs * Dens_GaAs,
     A = 0.300000, ALP = 0.750000, EPS = 0.840000,
     FX = -2.65000, FY = -0.300000, FZ = 2.50000;
    D193 = 'Back_face', T = 0.D+00,
     C = 3.D-04 * Cp_Al_7075_T6 * Dens_Al_7075_T6,
     A = 0.300000, ALP = 0.500000, EPS = 0.100000,
     FX = -2.65000, FY = -0.300000, FZ = 2.50000;
    D194 = 'Solar_face', T = 0.D+00,
     C = 3.D-04 * Cp_GaAs * Dens_GaAs,
     A = 0.300000, ALP = 0.750000, EPS = 0.840000,
     FX = -2.15000, FY = -0.300000, FZ = 2.50000;
    D195 = 'Back_face', T = 0.D+00,
     C = 3.D-04 * Cp_Al_7075_T6 * Dens_Al_7075_T6,
     A = 0.300000, ALP = 0.500000, EPS = 0.100000,
     FX = -2.15000, FY = -0.300000, FZ = 2.50000;
    D196 = 'Solar_face', T = 0.D+00,
     C = 3.D-04 * Cp_GaAs * Dens_GaAs,
     A = 0.300000, ALP = 0.750000, EPS = 0.840000,
     FX = -1.65000, FY = -0.300000, FZ = 2.50000;
    D197 = 'Back_face', T = 0.D+00,
     C = 3.D-04 * Cp_Al_7075_T6 * Dens_Al_7075_T6,
     A = 0.300000, ALP = 0.500000, EPS = 0.100000,
     FX = -1.65000, FY = -0.300000, FZ = 2.50000;
    D198 = 'Solar_face', T = 0.D+00,
     C = 3.D-04 * Cp_GaAs * Dens_GaAs,
     A = 0.300000, ALP = 0.750000, EPS = 0.840000,
     FX = -1.15000, FY = -0.300000, FZ = 2.50000;
    D199 = 'Back_face', T = 0.D+00,
     C = 3.D-04 * Cp_Al_7075_T6 * Dens_Al_7075_T6,
     A = 0.300000, ALP = 0.500000, EPS = 0.100000,
     FX = -1.15000, FY = -0.300000, FZ = 2.50000;
    D200 = 'Solar_face', T = 0.D+00,
     C = 3.D-04 * Cp_GaAs * Dens_GaAs,
     A = 0.300000, ALP = 0.750000, EPS = 0.840000,
     FX = -2.65000, FY = 0.300000, FZ = 2.50000;
    D201 = 'Back_face', T = 0.D+00,
     C = 3.D-04 * Cp_Al_7075_T6 * Dens_Al_7075_T6,
     A = 0.300000, ALP = 0.500000, EPS = 0.100000,
     FX = -2.65000, FY = 0.300000, FZ = 2.50000;
    D202 = 'Solar_face', T = 0.D+00,
     C = 3.D-04 * Cp_GaAs * Dens_GaAs,
     A = 0.300000, ALP = 0.750000, EPS = 0.840000,
     FX = -2.15000, FY = 0.300000, FZ = 2.50000;
    D203 = 'Back_face', T = 0.D+00,
     C = 3.D-04 * Cp_Al_7075_T6 * Dens_Al_7075_T6,
     A = 0.300000, ALP = 0.500000, EPS = 0.100000,
     FX = -2.15000, FY = 0.300000, FZ = 2.50000;
    D204 = 'Solar_face', T = 0.D+00,
     C = 3.D-04 * Cp_GaAs * Dens_GaAs,
     A = 0.300000, ALP = 0.750000, EPS = 0.840000,
     FX = -1.65000, FY = 0.300000, FZ = 2.50000;
    D205 = 'Back_face', T = 0.D+00,
     C = 3.D-04 * Cp_Al_7075_T6 * Dens_Al_7075_T6,
     A = 0.300000, ALP = 0.500000, EPS = 0.100000,
     FX = -1.65000, FY = 0.300000, FZ = 2.50000;
    D206 = 'Solar_face', T = 0.D+00,
     C = 3.D-04 * Cp_GaAs * Dens_GaAs,
     A = 0.300000, ALP = 0.750000, EPS = 0.840000,
     FX = -1.15000, FY = 0.300000, FZ = 2.50000;
    D207 = 'Back_face', T = 0.D+00,
     C = 3.D-04 * Cp_Al_7075_T6 * Dens_Al_7075_T6,
     A = 0.300000, ALP = 0.500000, EPS = 0.100000,
     FX = -1.15000, FY = 0.300000, FZ = 2.50000;
    D208 = 'Solar_face', T = 0.D+00,
     C = 3.D-04 * Cp_GaAs * Dens_GaAs,
     A = 0.300000, ALP = 0.750000, EPS = 0.840000,
     FX = 1.15000, FY = -0.300000, FZ = 2.50000;
    D209 = 'Back_face', T = 0.D+00,
     C = 3.D-04 * Cp_Al_7075_T6 * Dens_Al_7075_T6,
     A = 0.300000, ALP = 0.500000, EPS = 0.100000,
     FX = 1.15000, FY = -0.300000, FZ = 2.50000;
    D210 = 'Solar_face', T = 0.D+00,
     C = 3.D-04 * Cp_GaAs * Dens_GaAs,
     A = 0.300000, ALP = 0.750000, EPS = 0.840000,
     FX = 1.65000, FY = -0.300000, FZ = 2.50000;
    D211 = 'Back_face', T = 0.D+00,
     C = 3.D-04 * Cp_Al_7075_T6 * Dens_Al_7075_T6,
     A = 0.300000, ALP = 0.500000, EPS = 0.100000,
     FX = 1.65000, FY = -0.300000, FZ = 2.50000;
    D212 = 'Solar_face', T = 0.D+00,
     C = 3.D-04 * Cp_GaAs * Dens_GaAs,
     A = 0.300000, ALP = 0.750000, EPS = 0.840000,
     FX = 2.15000, FY = -0.300000, FZ = 2.50000;
    D213 = 'Back_face', T = 0.D+00,
     C = 3.D-04 * Cp_Al_7075_T6 * Dens_Al_7075_T6,
     A = 0.300000, ALP = 0.500000, EPS = 0.100000,
     FX = 2.15000, FY = -0.300000, FZ = 2.50000;
    D214 = 'Solar_face', T = 0.D+00,
     C = 3.D-04 * Cp_GaAs * Dens_GaAs,
     A = 0.300000, ALP = 0.750000, EPS = 0.840000,
     FX = 2.65000, FY = -0.300000, FZ = 2.50000;
    D215 = 'Back_face', T = 0.D+00,
     C = 3.D-04 * Cp_Al_7075_T6 * Dens_Al_7075_T6,
     A = 0.300000, ALP = 0.500000, EPS = 0.100000,
     FX = 2.65000, FY = -0.300000, FZ = 2.50000;
    D216 = 'Solar_face', T = 0.D+00,
     C = 3.D-04 * Cp_GaAs * Dens_GaAs,
     A = 0.300000, ALP = 0.750000, EPS = 0.840000,
     FX = 1.15000, FY = 0.300000, FZ = 2.50000;
    D217 = 'Back_face', T = 0.D+00,
     C = 3.D-04 * Cp_Al_7075_T6 * Dens_Al_7075_T6,
     A = 0.300000, ALP = 0.500000, EPS = 0.100000,
     FX = 1.15000, FY = 0.300000, FZ = 2.50000;
    D218 = 'Solar_face', T = 0.D+00,
     C = 3.D-04 * Cp_GaAs * Dens_GaAs,
     A = 0.300000, ALP = 0.750000, EPS = 0.840000,
     FX = 1.65000, FY = 0.300000, FZ = 2.50000;
    D219 = 'Back_face', T = 0.D+00,
     C = 3.D-04 * Cp_Al_7075_T6 * Dens_Al_7075_T6,
     A = 0.300000, ALP = 0.500000, EPS = 0.100000,
     FX = 1.65000, FY = 0.300000, FZ = 2.50000;
    D220 = 'Solar_face', T = 0.D+00,
     C = 3.D-04 * Cp_GaAs * Dens_GaAs,
     A = 0.300000, ALP = 0.750000, EPS = 0.840000,
     FX = 2.15000, FY = 0.300000, FZ = 2.50000;
    D221 = 'Back_face', T = 0.D+00,
     C = 3.D-04 * Cp_Al_7075_T6 * Dens_Al_7075_T6,
     A = 0.300000, ALP = 0.500000, EPS = 0.100000,
     FX = 2.15000, FY = 0.300000, FZ = 2.50000;
    D222 = 'Solar_face', T = 0.D+00,
     C = 3.D-04 * Cp_GaAs * Dens_GaAs,
     A = 0.300000, ALP = 0.750000, EPS = 0.840000,
     FX = 2.65000, FY = 0.300000, FZ = 2.50000;
    D223 = 'Back_face', T = 0.D+00,
     C = 3.D-04 * Cp_Al_7075_T6 * Dens_Al_7075_T6,
     A = 0.300000, ALP = 0.500000, EPS = 0.100000,
     FX = 2.65000, FY = 0.300000, FZ = 2.50000;
    X99998 = 'INACTIVE_NODE', T = 0.D+00,
     A = 0.0, ALP = 0.0, EPS = 0.0;
    B99999 = 'ENVIRONMENT', T = -2.7D+02,
     A = 1.0E+20, ALP = 1.0, EPS = 1.0;
#
  $CONDUCTORS
# ESATAN-TMS 2020, run date 17:14 Wed 5 May 2021
# Model name: TCCT_SAT        Generated conductors
    GL(1,2) = k_Al_7075_T6 * 2.999866D-03; # from primitive TRAY
    GL(1,4) = k_Al_7075_T6 * 2.999866D-03; # from primitive TRAY
    GL(2,3) = k_Al_7075_T6 * 2.999866D-03; # from primitive TRAY
    GL(2,5) = k_Al_7075_T6 * 2.999866D-03; # from primitive TRAY
    GL(3,6) = k_Al_7075_T6 * 2.999866D-03; # from primitive TRAY
    GL(4,5) = k_Al_7075_T6 * 2.999866D-03; # from primitive TRAY
    GL(4,7) = k_Al_7075_T6 * 2.999866D-03; # from primitive TRAY
    GL(5,6) = k_Al_7075_T6 * 2.999866D-03; # from primitive TRAY
    GL(5,8) = k_Al_7075_T6 * 2.999866D-03; # from primitive TRAY
    GL(6,9) = k_Al_7075_T6 * 2.999866D-03; # from primitive TRAY
    GL(7,8) = k_Al_7075_T6 * 2.999866D-03; # from primitive TRAY
    GL(8,9) = k_Al_7075_T6 * 2.999866D-03; # from primitive TRAY
    GR(10,11) = 7.5D-03; # from primitive BX
    GL(11,13) = k_Al_7075_T6 * 2.999866D-03; # from primitive BX
    GL(11,17) = k_Al_7075_T6 * 2.999866D-03; # from primitive BX
    GR(12,13) = 7.5D-03; # from primitive BX
    GL(13,15) = k_Al_7075_T6 * 2.999866D-03; # from primitive BX
    GL(13,19) = k_Al_7075_T6 * 2.999866D-03; # from primitive BX
    GR(14,15) = 7.5D-03; # from primitive BX
    GL(15,21) = k_Al_7075_T6 * 2.999866D-03; # from primitive BX
    GR(16,17) = 7.5D-03; # from primitive BX
    GL(17,19) = k_Al_7075_T6 * 2.999866D-03; # from primitive BX
    GL(17,23) = k_Al_7075_T6 * 2.999866D-03; # from primitive BX
    GR(18,19) = 7.5D-03; # from primitive BX
    GL(19,21) = k_Al_7075_T6 * 2.999866D-03; # from primitive BX
    GL(19,25) = k_Al_7075_T6 * 2.999866D-03; # from primitive BX
    GR(20,21) = 7.5D-03; # from primitive BX
    GL(21,27) = k_Al_7075_T6 * 2.999866D-03; # from primitive BX
    GR(22,23) = 7.5D-03; # from primitive BX
    GL(23,25) = k_Al_7075_T6 * 2.999866D-03; # from primitive BX
    GR(24,25) = 7.5D-03; # from primitive BX
    GL(25,27) = k_Al_7075_T6 * 2.999866D-03; # from primitive BX
    GR(26,27) = 7.5D-03; # from primitive BX
    GR(28,29) = 5.D-03; # from primitive BX
    GL(29,31) = k_Al_7075_T6 * 1.999945D-03; # from primitive BX
    GL(29,35) = k_Al_7075_T6 * 4.499723D-03; # from primitive BX
    GR(30,31) = 5.D-03; # from primitive BX
    GL(31,33) = k_Al_7075_T6 * 1.999945D-03; # from primitive BX
    GL(31,37) = k_Al_7075_T6 * 4.499723D-03; # from primitive BX
    GR(32,33) = 5.D-03; # from primitive BX
    GL(33,39) = k_Al_7075_T6 * 4.499723D-03; # from primitive BX
    GR(34,35) = 5.D-03; # from primitive BX
    GL(35,37) = k_Al_7075_T6 * 1.999945D-03; # from primitive BX
    GL(35,41) = k_Al_7075_T6 * 4.499723D-03; # from primitive BX
    GR(36,37) = 5.D-03; # from primitive BX
    GL(37,39) = k_Al_7075_T6 * 1.999945D-03; # from primitive BX
    GL(37,43) = k_Al_7075_T6 * 4.499723D-03; # from primitive BX
    GR(38,39) = 5.D-03; # from primitive BX
    GL(39,45) = k_Al_7075_T6 * 4.499723D-03; # from primitive BX
    GR(40,41) = 5.D-03; # from primitive BX
    GL(41,43) = k_Al_7075_T6 * 1.999945D-03; # from primitive BX
    GR(42,43) = 5.D-03; # from primitive BX
    GL(43,45) = k_Al_7075_T6 * 1.999945D-03; # from primitive BX
    GR(44,45) = 5.D-03; # from primitive BX
    GR(46,47) = 5.D-03; # from primitive BX
    GL(47,49) = k_Al_7075_T6 * 1.999945D-03; # from primitive BX
    GL(47,53) = k_Al_7075_T6 * 4.499723D-03; # from primitive BX
    GR(48,49) = 5.D-03; # from primitive BX
    GL(49,51) = k_Al_7075_T6 * 1.999945D-03; # from primitive BX
    GL(49,55) = k_Al_7075_T6 * 4.499723D-03; # from primitive BX
    GR(50,51) = 5.D-03; # from primitive BX
    GL(51,57) = k_Al_7075_T6 * 4.499723D-03; # from primitive BX
    GR(52,53) = 5.D-03; # from primitive BX
    GL(53,55) = k_Al_7075_T6 * 1.999945D-03; # from primitive BX
    GL(53,59) = k_Al_7075_T6 * 4.499723D-03; # from primitive BX
    GR(54,55) = 5.D-03; # from primitive BX
    GL(55,57) = k_Al_7075_T6 * 1.999945D-03; # from primitive BX
    GL(55,61) = k_Al_7075_T6 * 4.499723D-03; # from primitive BX
    GR(56,57) = 5.D-03; # from primitive BX
    GL(57,63) = k_Al_7075_T6 * 4.499723D-03; # from primitive BX
    GR(58,59) = 5.D-03; # from primitive BX
    GL(59,61) = k_Al_7075_T6 * 1.999945D-03; # from primitive BX
    GR(60,61) = 5.D-03; # from primitive BX
    GL(61,63) = k_Al_7075_T6 * 1.999945D-03; # from primitive BX
    GR(62,63) = 5.D-03; # from primitive BX
    GR(64,65) = 5.D-03; # from primitive BX
    GL(64,125) = 8.308333D-02 * 5.D+02; # from contact zone BX_RDTR_contact
    GL(65,67) = k_Al_7075_T6 * 1.999945D-03; # from primitive BX
    GL(65,71) = k_Al_7075_T6 * 4.499723D-03; # from primitive BX
    GR(66,67) = 5.D-03; # from primitive BX
    GL(66,123) = 8.383333D-02 * 5.D+02; # from contact zone BX_RDTR_contact
    GL(66,125) = 8.283333D-02 * 5.D+02; # from contact zone BX_RDTR_contact
    GL(67,69) = k_Al_7075_T6 * 1.999945D-03; # from primitive BX
    GL(67,73) = k_Al_7075_T6 * 4.499723D-03; # from primitive BX
    GR(68,69) = 5.D-03; # from primitive BX
    GL(68,123) = 8.233333D-02 * 5.D+02; # from contact zone BX_RDTR_contact
    GL(69,75) = k_Al_7075_T6 * 4.499723D-03; # from primitive BX
    GR(70,71) = 5.D-03; # from primitive BX
    GL(70,121) = 3.993333D-02 * 5.D+02; # from contact zone BX_RDTR_contact
    GL(70,125) = 4.176667D-02 * 5.D+02; # from contact zone BX_RDTR_contact
    GL(71,73) = k_Al_7075_T6 * 1.999945D-03; # from primitive BX
    GL(71,77) = k_Al_7075_T6 * 4.499723D-03; # from primitive BX
    GR(72,73) = 5.D-03; # from primitive BX
    GL(72,119) = 4.151667D-02 * 5.D+02; # from contact zone BX_RDTR_contact
    GL(72,121) = 4.208333D-02 * 5.D+02; # from contact zone BX_RDTR_contact
    GL(72,123) = 4.21D-02 * 5.D+02; # from contact zone BX_RDTR_contact
    GL(72,125) = 4.096667D-02 * 5.D+02; # from contact zone BX_RDTR_contact
    GL(73,75) = k_Al_7075_T6 * 1.999945D-03; # from primitive BX
    GL(73,79) = k_Al_7075_T6 * 4.499723D-03; # from primitive BX
    GR(74,75) = 5.D-03; # from primitive BX
    GL(74,119) = 4.231667D-02 * 5.D+02; # from contact zone BX_RDTR_contact
    GL(74,123) = 4.221667D-02 * 5.D+02; # from contact zone BX_RDTR_contact
    GL(75,81) = k_Al_7075_T6 * 4.499723D-03; # from primitive BX
    GR(76,77) = 5.D-03; # from primitive BX
    GL(76,121) = 8.47D-02 * 5.D+02; # from contact zone BX_RDTR_contact
    GL(77,79) = k_Al_7075_T6 * 1.999945D-03; # from primitive BX
    GR(78,79) = 5.D-03; # from primitive BX
    GL(78,119) = 8.3D-02 * 5.D+02; # from contact zone BX_RDTR_contact
    GL(78,121) = 8.366667D-02 * 5.D+02; # from contact zone BX_RDTR_contact
    GL(79,81) = k_Al_7075_T6 * 1.999945D-03; # from primitive BX
    GR(80,81) = 5.D-03; # from primitive BX
    GL(80,119) = 8.413333D-02 * 5.D+02; # from contact zone BX_RDTR_contact
    GR(82,83) = 5.D-03; # from primitive BX
    GL(83,85) = k_Al_7075_T6 * 1.999945D-03; # from primitive BX
    GL(83,89) = k_Al_7075_T6 * 4.499723D-03; # from primitive BX
    GR(84,85) = 5.D-03; # from primitive BX
    GL(85,87) = k_Al_7075_T6 * 1.999945D-03; # from primitive BX
    GL(85,91) = k_Al_7075_T6 * 4.499723D-03; # from primitive BX
    GR(86,87) = 5.D-03; # from primitive BX
    GL(87,93) = k_Al_7075_T6 * 4.499723D-03; # from primitive BX
    GR(88,89) = 5.D-03; # from primitive BX
    GL(89,91) = k_Al_7075_T6 * 1.999945D-03; # from primitive BX
    GL(89,95) = k_Al_7075_T6 * 4.499723D-03; # from primitive BX
    GR(90,91) = 5.D-03; # from primitive BX
    GL(91,93) = k_Al_7075_T6 * 1.999945D-03; # from primitive BX
    GL(91,97) = k_Al_7075_T6 * 4.499723D-03; # from primitive BX
    GR(92,93) = 5.D-03; # from primitive BX
    GL(93,99) = k_Al_7075_T6 * 4.499723D-03; # from primitive BX
    GR(94,95) = 5.D-03; # from primitive BX
    GL(95,97) = k_Al_7075_T6 * 1.999945D-03; # from primitive BX
    GR(96,97) = 5.D-03; # from primitive BX
    GL(97,99) = k_Al_7075_T6 * 1.999945D-03; # from primitive BX
    GR(98,99) = 5.D-03; # from primitive BX
    GR(100,101) = 7.5D-03; # from primitive BX
    GL(101,103) = k_Al_7075_T6 * 2.999866D-03; # from primitive BX
    GL(101,107) = k_Al_7075_T6 * 2.999866D-03; # from primitive BX
    GR(102,103) = 7.5D-03; # from primitive BX
    GL(103,105) = k_Al_7075_T6 * 2.999866D-03; # from primitive BX
    GL(103,109) = k_Al_7075_T6 * 2.999866D-03; # from primitive BX
    GR(104,105) = 7.5D-03; # from primitive BX
    GL(105,111) = k_Al_7075_T6 * 2.999866D-03; # from primitive BX
    GR(106,107) = 7.5D-03; # from primitive BX
    GL(107,109) = k_Al_7075_T6 * 2.999866D-03; # from primitive BX
    GL(107,113) = k_Al_7075_T6 * 2.999866D-03; # from primitive BX
    GR(108,109) = 7.5D-03; # from primitive BX
    GL(109,111) = k_Al_7075_T6 * 2.999866D-03; # from primitive BX
    GL(109,115) = k_Al_7075_T6 * 2.999866D-03; # from primitive BX
    GR(110,111) = 7.5D-03; # from primitive BX
    GL(111,117) = k_Al_7075_T6 * 2.999866D-03; # from primitive BX
    GR(112,113) = 7.5D-03; # from primitive BX
    GL(113,115) = k_Al_7075_T6 * 2.999866D-03; # from primitive BX
    GR(114,115) = 7.5D-03; # from primitive BX
    GL(115,117) = k_Al_7075_T6 * 2.999866D-03; # from primitive BX
    GR(116,117) = 7.5D-03; # from primitive BX
    GL(118,119) = 2.5D-01 / ((8.D-03 / k_Radiator) + (1.D-03 / k_Al_7075_T6)); # from primitive RDTR
    GL(118,120) = k_Radiator * 7.999644D-03; # from primitive RDTR
    GL(118,122) = k_Radiator * 7.999644D-03; # from primitive RDTR
    GL(119,121) = k_Al_7075_T6 * 9.999555D-04; # from primitive RDTR
    GL(119,123) = k_Al_7075_T6 * 9.999555D-04; # from primitive RDTR
    GL(120,121) = 2.5D-01 / ((8.D-03 / k_Radiator) + (1.D-03 / k_Al_7075_T6)); # from primitive RDTR
    GL(120,124) = k_Radiator * 7.999644D-03; # from primitive RDTR
    GL(121,125) = k_Al_7075_T6 * 9.999555D-04; # from primitive RDTR
    GL(122,123) = 2.5D-01 / ((8.D-03 / k_Radiator) + (1.D-03 / k_Al_7075_T6)); # from primitive RDTR
    GL(122,124) = k_Radiator * 7.999644D-03; # from primitive RDTR
    GL(122,126) = k_Radiator * 7.999644D-03; # from primitive RDTR
    GL(123,125) = k_Al_7075_T6 * 9.999555D-04; # from primitive RDTR
    GL(123,127) = k_Al_7075_T6 * 9.999555D-04; # from primitive RDTR
    GL(124,125) = 2.5D-01 / ((8.D-03 / k_Radiator) + (1.D-03 / k_Al_7075_T6)); # from primitive RDTR
    GL(124,128) = k_Radiator * 7.999644D-03; # from primitive RDTR
    GL(125,129) = k_Al_7075_T6 * 9.999555D-04; # from primitive RDTR
    GL(126,127) = 2.5D-01 / ((8.D-03 / k_Radiator) + (1.D-03 / k_Al_7075_T6)); # from primitive RDTR
    GL(126,128) = k_Radiator * 7.999644D-03; # from primitive RDTR
    GL(126,130) = k_Radiator * 7.999644D-03; # from primitive RDTR
    GL(127,129) = k_Al_7075_T6 * 9.999555D-04; # from primitive RDTR
    GL(127,131) = k_Al_7075_T6 * 9.999555D-04; # from primitive RDTR
    GL(128,129) = 2.5D-01 / ((8.D-03 / k_Radiator) + (1.D-03 / k_Al_7075_T6)); # from primitive RDTR
    GL(128,132) = k_Radiator * 7.999644D-03; # from primitive RDTR
    GL(129,133) = k_Al_7075_T6 * 9.999555D-04; # from primitive RDTR
    GL(130,131) = 2.5D-01 / ((8.D-03 / k_Radiator) + (1.D-03 / k_Al_7075_T6)); # from primitive RDTR
    GL(130,132) = k_Radiator * 7.999644D-03; # from primitive RDTR
    GL(131,133) = k_Al_7075_T6 * 9.999555D-04; # from primitive RDTR
    GL(132,133) = 2.5D-01 / ((8.D-03 / k_Radiator) + (1.D-03 / k_Al_7075_T6)); # from primitive RDTR
    GL(134,135) = 1.0 / ((1.0 / (1.333246D-02 * k_ABS_plastic)) + (1.0 / (1.999847D-02 * k_ABS_plastic))); # from conductive interface ci_A1
    GL(134,136) = 1.0 / ((1.0 / (4.799887D-03 * k_ABS_plastic)) + (1.0 / (1.199926D-02 * k_ABS_plastic))); # from conductive interface ci_A10
    GL(134,137) = 1.0 / ((1.0 / (1.333246D-02 * k_ABS_plastic)) + (1.0 / (1.999847D-02 * k_ABS_plastic))); # from conductive interface ci_A3
    GL(134,138) = 1.0 / ((1.0 / (4.799887D-03 * k_ABS_plastic)) + (1.0 / (1.199926D-02 * k_ABS_plastic))); # from conductive interface ci_A4
    GL(135,136) = 1.0 / ((1.0 / (3.199961D-03 * k_ABS_plastic)) + (1.0 / (5.333187D-03 * k_ABS_plastic))); # from conductive interface ci_A9
    GL(135,138) = 1.0 / ((1.0 / (3.199961D-03 * k_ABS_plastic)) + (1.0 / (5.333187D-03 * k_ABS_plastic))); # from conductive interface ci_A6
    GL(135,139) = 1.0 / ((1.0 / (1.999847D-02 * k_ABS_plastic)) + (1.0 / (1.333246D-02 * k_ABS_plastic))); # from conductive interface ci_A2
    GL(136,137) = 1.0 / ((1.0 / (5.333187D-03 * k_ABS_plastic)) + (1.0 / (3.199961D-03 * k_ABS_plastic))); # from conductive interface ci_A11
    GL(136,139) = 1.0 / ((1.0 / (1.199926D-02 * k_ABS_plastic)) + (1.0 / (4.799887D-03 * k_ABS_plastic))); # from conductive interface ci_A12
    GL(137,138) = 1.0 / ((1.0 / (3.199961D-03 * k_ABS_plastic)) + (1.0 / (5.333187D-03 * k_ABS_plastic))); # from conductive interface ci_A7
    GL(137,139) = 1.0 / ((1.0 / (1.999847D-02 * k_ABS_plastic)) + (1.0 / (1.333246D-02 * k_ABS_plastic))); # from conductive interface ci_A5
    GL(138,139) = 1.0 / ((1.0 / (1.199926D-02 * k_ABS_plastic)) + (1.0 / (4.799887D-03 * k_ABS_plastic))); # from conductive interface ci_A8
    GL(140,141) = k_ABS_plastic * 2.999866D+00; # from primitive CAJA_ELECTRONICA
    GL(140,142) = k_ABS_plastic * 2.999866D+00; # from primitive CAJA_ELECTRONICA
    GL(140,144) = 1.0 / ((1.0 / (5.999733D+00 * k_ABS_plastic)) + (1.0 / (7.499593D+00 * k_ABS_plastic))); # from conductive interface ci_B1
    GL(140,151) = 1.0 / ((1.0 / (5.999733D+00 * k_ABS_plastic)) + (1.0 / (7.499593D+00 * k_ABS_plastic))); # from conductive interface ci_B4
    GL(141,143) = k_ABS_plastic * 2.999866D+00; # from primitive CAJA_ELECTRONICA
    GL(141,145) = 1.0 / ((1.0 / (5.999733D+00 * k_ABS_plastic)) + (1.0 / (7.499593D+00 * k_ABS_plastic))); # from conductive interface ci_B1
    GL(141,146) = 1.0 / ((1.0 / (5.999733D+00 * k_ABS_plastic)) + (1.0 / (7.499593D+00 * k_ABS_plastic))); # from conductive interface ci_B10
    GL(142,143) = k_ABS_plastic * 2.999866D+00; # from primitive CAJA_ELECTRONICA
    GL(142,149) = 1.0 / ((1.0 / (5.999733D+00 * k_ABS_plastic)) + (1.0 / (7.499593D+00 * k_ABS_plastic))); # from conductive interface ci_B3
    GL(142,150) = 1.0 / ((1.0 / (5.999733D+00 * k_ABS_plastic)) + (1.0 / (7.499593D+00 * k_ABS_plastic))); # from conductive interface ci_B4
    GL(143,147) = 1.0 / ((1.0 / (5.999733D+00 * k_ABS_plastic)) + (1.0 / (7.499593D+00 * k_ABS_plastic))); # from conductive interface ci_B10
    GL(143,148) = 1.0 / ((1.0 / (5.999733D+00 * k_ABS_plastic)) + (1.0 / (7.499593D+00 * k_ABS_plastic))); # from conductive interface ci_B3
    GL(144,145) = k_ABS_plastic * 2.399917D+00; # from primitive CAJA_ELECTRONICA
    GL(144,151) = 1.0 / ((1.0 / (4.799833D+00 * k_ABS_plastic)) + (1.0 / (4.799833D+00 * k_ABS_plastic))); # from conductive interface ci_B6
    GL(144,154) = 1.0 / ((1.0 / (7.499593D+00 * k_ABS_plastic)) + (1.0 / (5.999733D+00 * k_ABS_plastic))); # from conductive interface ci_B2
    GL(145,146) = 1.0 / ((1.0 / (4.799833D+00 * k_ABS_plastic)) + (1.0 / (4.799833D+00 * k_ABS_plastic))); # from conductive interface ci_B9
    GL(145,155) = 1.0 / ((1.0 / (7.499593D+00 * k_ABS_plastic)) + (1.0 / (5.999733D+00 * k_ABS_plastic))); # from conductive interface ci_B2
    GL(146,147) = k_ABS_plastic * 2.399917D+00; # from primitive CAJA_ELECTRONICA
    GL(146,155) = 1.0 / ((1.0 / (7.499593D+00 * k_ABS_plastic)) + (1.0 / (5.999733D+00 * k_ABS_plastic))); # from conductive interface ci_B12
    GL(147,148) = 1.0 / ((1.0 / (4.799833D+00 * k_ABS_plastic)) + (1.0 / (4.799833D+00 * k_ABS_plastic))); # from conductive interface ci_B11
    GL(147,153) = 1.0 / ((1.0 / (7.499593D+00 * k_ABS_plastic)) + (1.0 / (5.999733D+00 * k_ABS_plastic))); # from conductive interface ci_B12
    GL(148,149) = k_ABS_plastic * 2.399917D+00; # from primitive CAJA_ELECTRONICA
    GL(148,153) = 1.0 / ((1.0 / (7.499593D+00 * k_ABS_plastic)) + (1.0 / (5.999733D+00 * k_ABS_plastic))); # from conductive interface ci_B5
    GL(149,150) = 1.0 / ((1.0 / (4.799833D+00 * k_ABS_plastic)) + (1.0 / (4.799833D+00 * k_ABS_plastic))); # from conductive interface ci_B7
    GL(149,152) = 1.0 / ((1.0 / (7.499593D+00 * k_ABS_plastic)) + (1.0 / (5.999733D+00 * k_ABS_plastic))); # from conductive interface ci_B5
    GL(150,151) = k_ABS_plastic * 2.399917D+00; # from primitive CAJA_ELECTRONICA
    GL(150,152) = 1.0 / ((1.0 / (7.499593D+00 * k_ABS_plastic)) + (1.0 / (5.999733D+00 * k_ABS_plastic))); # from conductive interface ci_B8
    GL(151,154) = 1.0 / ((1.0 / (7.499593D+00 * k_ABS_plastic)) + (1.0 / (5.999733D+00 * k_ABS_plastic))); # from conductive interface ci_B8
    GL(152,153) = k_ABS_plastic * 2.999866D+00; # from primitive CAJA_ELECTRONICA
    GL(152,154) = k_ABS_plastic * 2.999866D+00; # from primitive CAJA_ELECTRONICA
    GL(153,155) = k_ABS_plastic * 2.999866D+00; # from primitive CAJA_ELECTRONICA
    GL(154,155) = k_ABS_plastic * 2.999866D+00; # from primitive CAJA_ELECTRONICA
    GL(156,157) = 2.827433D-01 / ((5.D-06 / k_Be_Cu) + (5.D-03 / k_Al_7075_T6)); # from primitive COM2
    GL(157,160) = 4.875D+00; # from conductor COM_support1
    GL(157,162) = 1.625D+00; # from conductor COM_support2
    GL(158,159) = 1.0 / ((1.0 / (1.199904D+01 * k_ABS_plastic)) + (1.0 / (1.199904D+01 * k_ABS_plastic))); # from conductive interface ci_C1
    GL(158,160) = 1.0 / ((1.0 / (1.333321D+00 * k_ABS_plastic)) + (1.0 / (3.999822D+00 * k_ABS_plastic))); # from conductive interface ci_C10
    GL(158,161) = 1.0 / ((1.0 / (1.199904D+01 * k_ABS_plastic)) + (1.0 / (1.199904D+01 * k_ABS_plastic))); # from conductive interface ci_C3
    GL(158,162) = 1.0 / ((1.0 / (1.333321D+00 * k_ABS_plastic)) + (1.0 / (3.999822D+00 * k_ABS_plastic))); # from conductive interface ci_C4
    GL(159,160) = 1.0 / ((1.0 / (1.333321D+00 * k_ABS_plastic)) + (1.0 / (3.999822D+00 * k_ABS_plastic))); # from conductive interface ci_C9
    GL(159,162) = 1.0 / ((1.0 / (1.333321D+00 * k_ABS_plastic)) + (1.0 / (3.999822D+00 * k_ABS_plastic))); # from conductive interface ci_C6
    GL(159,163) = 1.0 / ((1.0 / (1.199904D+01 * k_ABS_plastic)) + (1.0 / (1.199904D+01 * k_ABS_plastic))); # from conductive interface ci_C2
    GL(160,161) = 1.0 / ((1.0 / (3.999822D+00 * k_ABS_plastic)) + (1.0 / (1.333321D+00 * k_ABS_plastic))); # from conductive interface ci_C11
    GL(160,163) = 1.0 / ((1.0 / (3.999822D+00 * k_ABS_plastic)) + (1.0 / (1.333321D+00 * k_ABS_plastic))); # from conductive interface ci_C12
    GL(161,162) = 1.0 / ((1.0 / (1.333321D+00 * k_ABS_plastic)) + (1.0 / (3.999822D+00 * k_ABS_plastic))); # from conductive interface ci_C7
    GL(161,163) = 1.0 / ((1.0 / (1.199904D+01 * k_ABS_plastic)) + (1.0 / (1.199904D+01 * k_ABS_plastic))); # from conductive interface ci_C5
    GL(162,163) = 1.0 / ((1.0 / (3.999822D+00 * k_ABS_plastic)) + (1.0 / (1.333321D+00 * k_ABS_plastic))); # from conductive interface ci_C8
    GL(164,165) = k_ABS_plastic * 3.606533D-03; # from primitive TLD
    GL(164,166) = k_ABS_plastic * 3.606533D-03; # from primitive TLD
    GL(165,166) = k_ABS_plastic * 3.606533D-03; # from primitive TLD
    GL(167,168) = k_ULE_Glass * 7.213067D-02; # from primitive TL_mirror
    GL(167,169) = k_ULE_Glass * 7.213067D-02; # from primitive TL_mirror
    GL(168,169) = k_ULE_Glass * 7.213067D-02; # from primitive TL_mirror
    GL(170,171) = k_ABS_plastic * 1.744275D-02; # from primitive TL
    GL(170,172) = k_ABS_plastic * 1.744275D-02; # from primitive TL
    GL(170,173) = k_ABS_plastic * 5.159277D-02; # from primitive TL
    GL(171,172) = k_ABS_plastic * 1.744275D-02; # from primitive TL
    GL(171,174) = k_ABS_plastic * 5.159277D-02; # from primitive TL
    GL(172,175) = k_ABS_plastic * 5.159277D-02; # from primitive TL
    GL(173,174) = k_ABS_plastic * 1.744275D-02; # from primitive TL
    GL(173,175) = k_ABS_plastic * 1.744275D-02; # from primitive TL
    GL(174,175) = k_ABS_plastic * 1.744275D-02; # from primitive TL
    GL(185,187) = k_Al_7075_T6 * 4.58665D-03; # from primitive TLC2
    GL(185,191) = k_Al_7075_T6 * 4.58665D-03; # from primitive TLC2
    GL(187,189) = k_Al_7075_T6 * 4.58665D-03; # from primitive TLC2
    GL(189,191) = k_Al_7075_T6 * 4.58665D-03; # from primitive TLC2
    GL(192,193) = 3.D-01 / ((1.D-03 / k_GaAs) + (1.D-03 / k_Al_7075_T6)); # from primitive SP2
    GL(192,194) = k_GaAs * 1.199937D-03; # from primitive SP2
    GL(192,200) = k_GaAs * 8.333029D-04; # from primitive SP2
    GL(193,195) = k_Al_7075_T6 * 1.199937D-03; # from primitive SP2
    GL(193,201) = k_Al_7075_T6 * 8.333029D-04; # from primitive SP2
    GL(194,195) = 3.D-01 / ((1.D-03 / k_GaAs) + (1.D-03 / k_Al_7075_T6)); # from primitive SP2
    GL(194,196) = k_GaAs * 1.199937D-03; # from primitive SP2
    GL(194,202) = k_GaAs * 8.333029D-04; # from primitive SP2
    GL(195,197) = k_Al_7075_T6 * 1.199937D-03; # from primitive SP2
    GL(195,203) = k_Al_7075_T6 * 8.333029D-04; # from primitive SP2
    GL(196,197) = 3.D-01 / ((1.D-03 / k_GaAs) + (1.D-03 / k_Al_7075_T6)); # from primitive SP2
    GL(196,198) = k_GaAs * 1.199937D-03; # from primitive SP2
    GL(196,204) = k_GaAs * 8.333029D-04; # from primitive SP2
    GL(197,199) = k_Al_7075_T6 * 1.199937D-03; # from primitive SP2
    GL(197,205) = k_Al_7075_T6 * 8.333029D-04; # from primitive SP2
    GL(198,199) = 3.D-01 / ((1.D-03 / k_GaAs) + (1.D-03 / k_Al_7075_T6)); # from primitive SP2
    GL(198,206) = k_GaAs * 8.333029D-04; # from primitive SP2
    GL(199,207) = k_Al_7075_T6 * 8.333029D-04; # from primitive SP2
    GL(200,201) = 3.D-01 / ((1.D-03 / k_GaAs) + (1.D-03 / k_Al_7075_T6)); # from primitive SP2
    GL(200,202) = k_GaAs * 1.199937D-03; # from primitive SP2
    GL(201,203) = k_Al_7075_T6 * 1.199937D-03; # from primitive SP2
    GL(202,203) = 3.D-01 / ((1.D-03 / k_GaAs) + (1.D-03 / k_Al_7075_T6)); # from primitive SP2
    GL(202,204) = k_GaAs * 1.199937D-03; # from primitive SP2
    GL(203,205) = k_Al_7075_T6 * 1.199937D-03; # from primitive SP2
    GL(204,205) = 3.D-01 / ((1.D-03 / k_GaAs) + (1.D-03 / k_Al_7075_T6)); # from primitive SP2
    GL(204,206) = k_GaAs * 1.199937D-03; # from primitive SP2
    GL(205,207) = k_Al_7075_T6 * 1.199937D-03; # from primitive SP2
    GL(206,207) = 3.D-01 / ((1.D-03 / k_GaAs) + (1.D-03 / k_Al_7075_T6)); # from primitive SP2
    GL(208,209) = 3.D-01 / ((1.D-03 / k_GaAs) + (1.D-03 / k_Al_7075_T6)); # from primitive SP1
    GL(208,210) = k_GaAs * 1.199937D-03; # from primitive SP1
    GL(208,216) = k_GaAs * 8.333029D-04; # from primitive SP1
    GL(209,211) = k_Al_7075_T6 * 1.199937D-03; # from primitive SP1
    GL(209,217) = k_Al_7075_T6 * 8.333029D-04; # from primitive SP1
    GL(210,211) = 3.D-01 / ((1.D-03 / k_GaAs) + (1.D-03 / k_Al_7075_T6)); # from primitive SP1
    GL(210,212) = k_GaAs * 1.199937D-03; # from primitive SP1
    GL(210,218) = k_GaAs * 8.333029D-04; # from primitive SP1
    GL(211,213) = k_Al_7075_T6 * 1.199937D-03; # from primitive SP1
    GL(211,219) = k_Al_7075_T6 * 8.333029D-04; # from primitive SP1
    GL(212,213) = 3.D-01 / ((1.D-03 / k_GaAs) + (1.D-03 / k_Al_7075_T6)); # from primitive SP1
    GL(212,214) = k_GaAs * 1.199937D-03; # from primitive SP1
    GL(212,220) = k_GaAs * 8.333029D-04; # from primitive SP1
    GL(213,215) = k_Al_7075_T6 * 1.199937D-03; # from primitive SP1
    GL(213,221) = k_Al_7075_T6 * 8.333029D-04; # from primitive SP1
    GL(214,215) = 3.D-01 / ((1.D-03 / k_GaAs) + (1.D-03 / k_Al_7075_T6)); # from primitive SP1
    GL(214,222) = k_GaAs * 8.333029D-04; # from primitive SP1
    GL(215,223) = k_Al_7075_T6 * 8.333029D-04; # from primitive SP1
    GL(216,217) = 3.D-01 / ((1.D-03 / k_GaAs) + (1.D-03 / k_Al_7075_T6)); # from primitive SP1
    GL(216,218) = k_GaAs * 1.199937D-03; # from primitive SP1
    GL(217,219) = k_Al_7075_T6 * 1.199937D-03; # from primitive SP1
    GL(218,219) = 3.D-01 / ((1.D-03 / k_GaAs) + (1.D-03 / k_Al_7075_T6)); # from primitive SP1
    GL(218,220) = k_GaAs * 1.199937D-03; # from primitive SP1
    GL(219,221) = k_Al_7075_T6 * 1.199937D-03; # from primitive SP1
    GL(220,221) = 3.D-01 / ((1.D-03 / k_GaAs) + (1.D-03 / k_Al_7075_T6)); # from primitive SP1
    GL(220,222) = k_GaAs * 1.199937D-03; # from primitive SP1
    GL(221,223) = k_Al_7075_T6 * 1.199937D-03; # from primitive SP1
    GL(222,223) = 3.D-01 / ((1.D-03 / k_GaAs) + (1.D-03 / k_Al_7075_T6)); # from primitive SP1
#
  $CONSTANTS
    $REAL
#
  $ARRAYS
#
    $REAL
#
  $EVENTS
#
  $SUBROUTINES
C
  $INITIAL
      GENMOR
C
  $EXECUTION
C
C Steady State Solution
C
      RELXCA=0.01
      NLOOP=100
C
      CALL SOLVFM
C
C Transient Solution
C
      TIMEND=0.0
      DTIMEI=TIMEND/100.0
      OUTINT=TIMEND/10.0
C
      CALL SLCRNC

  $VARIABLES1
C
  $VARIABLES2
C
  $OUTPUTS
      CALL PRNDTB(' ', 'L, T, QI, C', CURRENT)
C
      CALL DMPTMD(' ', 'NODES, CONDUCTORS, CONSTANTS', CURRENT, ' ')

C
$ENDMODEL #TCCT_SAT_acase01
