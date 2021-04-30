      PROGRAM MUSE_SAT_ACASE01                                                  
C   
      INCLUDE 'MUSE_SAT.h'                                                      
C   
      CHARACTER MNAME * 24                                                      
C   
      MNAME = 'MUSE_SAT_ACASE01        '                                        
C   
      FLG(1) = 130                                                              
      FLG(2) = 156                                                              
      FLG(3) = 0                                                                
      FLG(4) = 1401                                                             
      FLG(5) = 0                                                                
      FLG(6) = 1                                                                
      FLG(7) = 0                                                                
      FLG(8) = 0                                                                
      FLG(9) = 0                                                                
      FLG(10) = 0                                                               
      FLG(11) = 2                                                               
      FLG(12) = 0                                                               
      FLG(13) = 49                                                              
      FLG(14) = 25                                                              
      FLG(15) = 16                                                              
      FLG(16) = 1                                                               
      FLG(17) = 92                                                              
      FLG(18) = 0                                                               
      FLG(19) = 0                                                               
      FLG(20) = 0                                                               
      FLG(21) = 0                                                               
      FLG(22) = 0                                                               
      FLG(23) = 0                                                               
      FLG(24) = 7030                                                            
      FLG(25) = 2                                                               
      FLG(26) = 1                                                               
      FLG(27) = 133                                                             
      FLG(28) = 1003377                                                         
      FLG(29) = 1                                                               
      FLG(30) = 0                                                               
      FLG(31) = 0                                                               
      FLG(32) = 0                                                               
      FLG(33) = 0                                                               
      FLG(34) = 0                                                               
      FLG(35) = 22                                                              
      FLG(36) = 1                                                               
      FLG(37) = 0                                                               
      FLG(38) = 0                                                               
      FLG(39) = 2802                                                            
      FLG(40) = 0                                                               
      FLG(41) = 0                                                               
      CALL SVMNAM(MNAME)                                                        
C   
      SPRNDM = 1                                                                
      SPRNDN = 3                                                                
      USRNDC = 0                                                                
      USRNDI = 0                                                                
      USRNDR = 0                                                                
C   
      CALL MAINA(MNAME)                                                         
C   
      CALL SUCCES                                                               
C   
      STOP                                                                      
C   
      END                                                                       
      SUBROUTINE IN0001                                                 
      INCLUDE 'MUSE_SAT.h'
      LOGICAL HTFLAG                                                    
      HTFLAG = .TRUE.                                                   
      OPBLOK = 'INITIAL   '                                             
      IG(2) = 1                                                         
      CALL GM0001(HTFLAG)                                               
      CALL FINITS(' ' , -    1)                                         
      QI(MD(3,1)+25)=3.90625D+00                                        
      QI(MD(3,1)+26)=3.90625D+00                                        
      QI(MD(3,1)+27)=3.90625D+00                                        
      QI(MD(3,1)+28)=3.90625D+00                                        
      QI(MD(3,1)+29)=2.34375D+00                                        
      QI(MD(3,1)+30)=2.34375D+00                                        
      QI(MD(3,1)+31)=2.34375D+00                                        
      QI(MD(3,1)+32)=2.34375D+00                                        
      QI(MD(3,1)+33)=3.125D+00                                          
      QI(MD(3,1)+34)=3.125D+00                                          
      QI(MD(3,1)+35)=3.125D+00                                          
      QI(MD(3,1)+36)=3.125D+00                                          
      QI(MD(3,1)+37)=2.34375D+00                                        
      QI(MD(3,1)+38)=2.34375D+00                                        
      QI(MD(3,1)+39)=2.34375D+00                                        
      QI(MD(3,1)+40)=2.34375D+00                                        
      QI(MD(3,1)+41)=3.125D+00                                          
      QI(MD(3,1)+42)=3.125D+00                                          
      QI(MD(3,1)+43)=3.125D+00                                          
      QI(MD(3,1)+44)=3.125D+00                                          
      QI(MD(3,1)+45)=3.90625D+00                                        
      QI(MD(3,1)+46)=3.90625D+00                                        
      QI(MD(3,1)+47)=3.90625D+00                                        
      QI(MD(3,1)+48)=3.90625D+00                                        
      QI(MD(3,1)+73)=1.838235D+00                                       
      QI(MD(3,1)+74)=1.838235D+00                                       
      QI(MD(3,1)+75)=1.838235D+00                                       
      QI(MD(3,1)+76)=1.838235D+00                                       
      QI(MD(3,1)+77)=2.205882D+00                                       
      QI(MD(3,1)+78)=2.205882D+00                                       
      QI(MD(3,1)+79)=2.205882D+00                                       
      QI(MD(3,1)+80)=2.205882D+00                                       
      QI(MD(3,1)+81)=2.205882D+00                                       
      QI(MD(3,1)+82)=2.205882D+00                                       
      QI(MD(3,1)+83)=2.205882D+00                                       
      QI(MD(3,1)+84)=2.205882D+00                                       
      QI(MD(3,1)+85)=2.205882D+00                                       
      QI(MD(3,1)+86)=2.205882D+00                                       
      QI(MD(3,1)+87)=2.205882D+00                                       
      QI(MD(3,1)+88)=2.205882D+00                                       
      QI(MD(3,1)+89)=2.205882D+00                                       
      QI(MD(3,1)+90)=2.205882D+00                                       
      QI(MD(3,1)+91)=2.205882D+00                                       
      QI(MD(3,1)+92)=2.205882D+00                                       
      QI(MD(3,1)+93)=1.838235D+00                                       
      QI(MD(3,1)+94)=1.838235D+00                                       
      QI(MD(3,1)+95)=1.838235D+00                                       
      QI(MD(3,1)+96)=1.838235D+00                                       
      OPBLOK = ' '                                                      
      RETURN                                                            
      END                                                               
      SUBROUTINE V10001                                                 
      INCLUDE 'MUSE_SAT.h'
      LOGICAL HTFLAG                                                    
      HTFLAG = (SOLTYP .EQ. 'THERMAL' .OR. SOLTYP .EQ. 'HUMID')         
      OPBLOK = 'VARIABLES1'                                             
      IG(2) = 1                                                         
      CALL PRMUPD                                                       
      CALL CHKTRM                                                       
      CALL ACDDYU                                                       
      CALL HEATER_UPDATE                                                
      IG(2) = 1                                                         
      QI(MD(3,1)+25)=3.90625D+00                                        
      QI(MD(3,1)+26)=3.90625D+00                                        
      QI(MD(3,1)+27)=3.90625D+00                                        
      QI(MD(3,1)+28)=3.90625D+00                                        
      QI(MD(3,1)+29)=2.34375D+00                                        
      QI(MD(3,1)+30)=2.34375D+00                                        
      QI(MD(3,1)+31)=2.34375D+00                                        
      QI(MD(3,1)+32)=2.34375D+00                                        
      QI(MD(3,1)+33)=3.125D+00                                          
      QI(MD(3,1)+34)=3.125D+00                                          
      QI(MD(3,1)+35)=3.125D+00                                          
      QI(MD(3,1)+36)=3.125D+00                                          
      QI(MD(3,1)+37)=2.34375D+00                                        
      QI(MD(3,1)+38)=2.34375D+00                                        
      QI(MD(3,1)+39)=2.34375D+00                                        
      QI(MD(3,1)+40)=2.34375D+00                                        
      QI(MD(3,1)+41)=3.125D+00                                          
      QI(MD(3,1)+42)=3.125D+00                                          
      QI(MD(3,1)+43)=3.125D+00                                          
      QI(MD(3,1)+44)=3.125D+00                                          
      QI(MD(3,1)+45)=3.90625D+00                                        
      QI(MD(3,1)+46)=3.90625D+00                                        
      QI(MD(3,1)+47)=3.90625D+00                                        
      QI(MD(3,1)+48)=3.90625D+00                                        
      QI(MD(3,1)+73)=1.838235D+00                                       
      QI(MD(3,1)+74)=1.838235D+00                                       
      QI(MD(3,1)+75)=1.838235D+00                                       
      QI(MD(3,1)+76)=1.838235D+00                                       
      QI(MD(3,1)+77)=2.205882D+00                                       
      QI(MD(3,1)+78)=2.205882D+00                                       
      QI(MD(3,1)+79)=2.205882D+00                                       
      QI(MD(3,1)+80)=2.205882D+00                                       
      QI(MD(3,1)+81)=2.205882D+00                                       
      QI(MD(3,1)+82)=2.205882D+00                                       
      QI(MD(3,1)+83)=2.205882D+00                                       
      QI(MD(3,1)+84)=2.205882D+00                                       
      QI(MD(3,1)+85)=2.205882D+00                                       
      QI(MD(3,1)+86)=2.205882D+00                                       
      QI(MD(3,1)+87)=2.205882D+00                                       
      QI(MD(3,1)+88)=2.205882D+00                                       
      QI(MD(3,1)+89)=2.205882D+00                                       
      QI(MD(3,1)+90)=2.205882D+00                                       
      QI(MD(3,1)+91)=2.205882D+00                                       
      QI(MD(3,1)+92)=2.205882D+00                                       
      QI(MD(3,1)+93)=1.838235D+00                                       
      QI(MD(3,1)+94)=1.838235D+00                                       
      QI(MD(3,1)+95)=1.838235D+00                                       
      QI(MD(3,1)+96)=1.838235D+00                                       
      CALL GM0001(HTFLAG)                                               
      OPBLOK = ' '                                                      
      RETURN                                                            
      END                                                               
      SUBROUTINE GM0001(HTFLAG)                                         
      LOGICAL HTFLAG                                                    
      RETURN                                                            
      END                                                               
      SUBROUTINE V20001                                                 
      INCLUDE 'MUSE_SAT.h'
      OPBLOK = 'VARIABLES2'                                             
      IG(2) = 1                                                         
      CALL SSNCNT(FLG(24),FLG(25),MAX0(FLG(1),1),PCS,T)                 
      IG(25) = IG(25) + 1                                               
      CALL PRMUPD                                                       
      CALL HEATER_UPDATE                                                
      IG(2) = 1                                                         
      OPBLOK = ' '                                                      
      CALL PARWRT('VARIABLES2')                                         
      RETURN                                                            
      END                                                               
      SUBROUTINE EXECTN                                                 
      INCLUDE 'MUSE_SAT.h'
      RG(18)=6050.2473                                                  
      RG(12)=605.02473                                                  
      IG(4)=500                                                         
      RG(13)=0.01                                                       
      RG(3)=10.0                                                        
      CALL SOLCYC('SLCRNC',0.01D0,0.01D0,6050.2473D0,10,' ','NONE')     
      CALL SLCRNC                                                       
      RETURN                                                            
      END                                                               
      SUBROUTINE OUTPUT                                                 
      INCLUDE 'MUSE_SAT.h'
      IF (OUTIME .NE. 'ALL') RETURN                                     
      OPBLOK = 'OUTPUTS'                                                
      CALL PRNDTB(' ','L, T, QS, QE, QA, QI, C',1)                      
      CALL DMPTMD(' ','NODES, CONDUCTORS, CONSTANTS',1,' ')             
      OPBLOK = ' '                                                      
      CALL PARWRT('OUTPUTS')                                            
      RETURN                                                            
      END                                                               
