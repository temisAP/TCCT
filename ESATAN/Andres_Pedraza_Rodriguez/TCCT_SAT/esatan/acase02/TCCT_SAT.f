      PROGRAM TCCT_SAT_ACASE02                                                  
C   
      INCLUDE 'TCCT_SAT.h'                                                      
C   
      CHARACTER MNAME * 24                                                      
C   
      MNAME = 'TCCT_SAT_ACASE02        '                                        
C   
      FLG(1) = 400                                                              
      FLG(2) = 869                                                              
      FLG(3) = 0                                                                
      FLG(4) = 3877                                                             
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
      FLG(18) = 22                                                              
      FLG(19) = 2                                                               
      FLG(20) = 0                                                               
      FLG(21) = 0                                                               
      FLG(22) = 0                                                               
      FLG(23) = 0                                                               
      FLG(24) = 21406                                                           
      FLG(25) = 2                                                               
      FLG(26) = 1                                                               
      FLG(27) = 133                                                             
      FLG(28) = 1010346                                                         
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
      FLG(39) = 7754                                                            
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
      INCLUDE 'TCCT_SAT.h'
      LOGICAL HTFLAG                                                    
      HTFLAG = .TRUE.                                                   
      OPBLOK = 'INITIAL   '                                             
      IG(2) = 1                                                         
      CALL GM0001(HTFLAG)                                               
      CALL FINITS(' ' , -    1)                                         
      QI(MD(3,1)+203)=4.716981D+00                                      
      QI(MD(3,1)+204)=3.537736D+00                                      
      QI(MD(3,1)+205)=4.245283D+00                                      
      QI(MD(3,1)+206)=3.537736D+00                                      
      QI(MD(3,1)+207)=4.245283D+00                                      
      QI(MD(3,1)+208)=4.716981D+00                                      
      QI(MD(3,1)+209)=4.716981D+00                                      
      QI(MD(3,1)+210)=3.537736D+00                                      
      QI(MD(3,1)+211)=4.245283D+00                                      
      QI(MD(3,1)+212)=3.537736D+00                                      
      QI(MD(3,1)+213)=4.245283D+00                                      
      QI(MD(3,1)+214)=4.716981D+00                                      
      OPBLOK = ' '                                                      
      RETURN                                                            
      END                                                               
      SUBROUTINE V10001                                                 
      INCLUDE 'TCCT_SAT.h'
      LOGICAL HTFLAG                                                    
      HTFLAG = (SOLTYP .EQ. 'THERMAL' .OR. SOLTYP .EQ. 'HUMID')         
      OPBLOK = 'VARIABLES1'                                             
      IG(2) = 1                                                         
      CALL PRMUPD                                                       
      CALL CHKTRM                                                       
      CALL ACDDYU                                                       
      CALL HEATER_UPDATE                                                
      IG(2) = 1                                                         
      QI(MD(3,1)+203)=4.716981D+00                                      
      QI(MD(3,1)+204)=3.537736D+00                                      
      QI(MD(3,1)+205)=4.245283D+00                                      
      QI(MD(3,1)+206)=3.537736D+00                                      
      QI(MD(3,1)+207)=4.245283D+00                                      
      QI(MD(3,1)+208)=4.716981D+00                                      
      QI(MD(3,1)+209)=4.716981D+00                                      
      QI(MD(3,1)+210)=3.537736D+00                                      
      QI(MD(3,1)+211)=4.245283D+00                                      
      QI(MD(3,1)+212)=3.537736D+00                                      
      QI(MD(3,1)+213)=4.245283D+00                                      
      QI(MD(3,1)+214)=4.716981D+00                                      
      CALL GM0001(HTFLAG)                                               
      OPBLOK = ' '                                                      
      RETURN                                                            
      END                                                               
      SUBROUTINE GM0001_00001(HTFLAG)                                   
      INCLUDE 'TCCT_SAT.h'                                              
      LOGICAL HTFLAG                                                    
      GL(MD(4,1)+226)=CNDFN1(T(MD(3,1)+89),T(MD(3,1)+90),MD(14,1)+1,1)*2
     $.499889D-04                                                       
      GL(MD(4,1)+227)=CNDFN1(T(MD(3,1)+89),T(MD(3,1)+92),MD(14,1)+1,1)*2
     $.499889D-04                                                       
      GL(MD(4,1)+228)=2.57049D-01*CNDFN1(T(MD(3,1)+89),T(MD(3,1)+131),MD
     $(14,1)+2,1)                                                       
      GL(MD(4,1)+229)=CNDFN1(T(MD(3,1)+90),T(MD(3,1)+91),MD(14,1)+1,1)*2
     $.499889D-04                                                       
      GL(MD(4,1)+230)=CNDFN1(T(MD(3,1)+90),T(MD(3,1)+93),MD(14,1)+1,1)*2
     $.499889D-04                                                       
      GL(MD(4,1)+231)=2.57049D-01*CNDFN1(T(MD(3,1)+90),T(MD(3,1)+132),MD
     $(14,1)+2,1)                                                       
      GL(MD(4,1)+232)=CNDFN1(T(MD(3,1)+91),T(MD(3,1)+94),MD(14,1)+1,1)*2
     $.499889D-04                                                       
      GL(MD(4,1)+233)=2.57049D-01*CNDFN1(T(MD(3,1)+91),T(MD(3,1)+133),MD
     $(14,1)+2,1)                                                       
      GL(MD(4,1)+234)=CNDFN1(T(MD(3,1)+92),T(MD(3,1)+93),MD(14,1)+1,1)*2
     $.499889D-04                                                       
      GL(MD(4,1)+235)=CNDFN1(T(MD(3,1)+92),T(MD(3,1)+95),MD(14,1)+1,1)*2
     $.499889D-04                                                       
      GL(MD(4,1)+236)=2.57049D-01*CNDFN1(T(MD(3,1)+92),T(MD(3,1)+134),MD
     $(14,1)+2,1)                                                       
      GL(MD(4,1)+237)=CNDFN1(T(MD(3,1)+93),T(MD(3,1)+94),MD(14,1)+1,1)*2
     $.499889D-04                                                       
      GL(MD(4,1)+238)=CNDFN1(T(MD(3,1)+93),T(MD(3,1)+96),MD(14,1)+1,1)*2
     $.499889D-04                                                       
      GL(MD(4,1)+239)=2.57049D-01*CNDFN1(T(MD(3,1)+93),T(MD(3,1)+135),MD
     $(14,1)+2,1)                                                       
      GL(MD(4,1)+240)=CNDFN1(T(MD(3,1)+94),T(MD(3,1)+97),MD(14,1)+1,1)*2
     $.499889D-04                                                       
      GL(MD(4,1)+241)=2.57049D-01*CNDFN1(T(MD(3,1)+94),T(MD(3,1)+136),MD
     $(14,1)+2,1)                                                       
      GL(MD(4,1)+242)=CNDFN1(T(MD(3,1)+95),T(MD(3,1)+96),MD(14,1)+1,1)*2
     $.499889D-04                                                       
      GL(MD(4,1)+243)=2.57049D-01*CNDFN1(T(MD(3,1)+95),T(MD(3,1)+137),MD
     $(14,1)+2,1)                                                       
      GL(MD(4,1)+244)=CNDFN1(T(MD(3,1)+96),T(MD(3,1)+97),MD(14,1)+1,1)*2
     $.499889D-04                                                       
      GL(MD(4,1)+245)=2.57049D-01*CNDFN1(T(MD(3,1)+96),T(MD(3,1)+138),MD
     $(14,1)+2,1)                                                       
      GL(MD(4,1)+246)=2.57049D-01*CNDFN1(T(MD(3,1)+97),T(MD(3,1)+139),MD
     $(14,1)+2,1)                                                       
      GL(MD(4,1)+247)=CNDFN1(T(MD(3,1)+98),T(MD(3,1)+99),MD(14,1)+1,1)*2
     $.515913D-04                                                       
      GL(MD(4,1)+248)=CNDFN1(T(MD(3,1)+98),T(MD(3,1)+101),MD(14,1)+1,1)*
     $2.483967D-04                                                      
      GL(MD(4,1)+249)=2.586967D-01*CNDFN1(T(MD(3,1)+98),T(MD(3,1)+140),M
     $D(14,1)+2,1)                                                      
      GL(MD(4,1)+250)=CNDFN1(T(MD(3,1)+99),T(MD(3,1)+100),MD(14,1)+1,1)*
     $2.515913D-04                                                      
      GL(MD(4,1)+251)=CNDFN1(T(MD(3,1)+99),T(MD(3,1)+102),MD(14,1)+1,1)*
     $2.483967D-04                                                      
      GL(MD(4,1)+252)=2.586967D-01*CNDFN1(T(MD(3,1)+99),T(MD(3,1)+141),M
     $D(14,1)+2,1)                                                      
      GL(MD(4,1)+253)=CNDFN1(T(MD(3,1)+100),T(MD(3,1)+103),MD(14,1)+1,1)
     $*2.483967D-04                                                     
      GL(MD(4,1)+254)=2.586967D-01*CNDFN1(T(MD(3,1)+100),T(MD(3,1)+142),
     $MD(14,1)+2,1)                                                     
      GL(MD(4,1)+255)=CNDFN1(T(MD(3,1)+101),T(MD(3,1)+102),MD(14,1)+1,1)
     $*2.515913D-04                                                     
      GL(MD(4,1)+256)=2.586967D-01*CNDFN1(T(MD(3,1)+101),T(MD(3,1)+143),
     $MD(14,1)+2,1)                                                     
      GL(MD(4,1)+257)=CNDFN1(T(MD(3,1)+102),T(MD(3,1)+103),MD(14,1)+1,1)
     $*2.515913D-04                                                     
      GL(MD(4,1)+258)=2.586967D-01*CNDFN1(T(MD(3,1)+102),T(MD(3,1)+144),
     $MD(14,1)+2,1)                                                     
      GL(MD(4,1)+259)=2.586968D-01*CNDFN1(T(MD(3,1)+103),T(MD(3,1)+145),
     $MD(14,1)+2,1)                                                     
      GL(MD(4,1)+260)=CNDFN1(T(MD(3,1)+104),T(MD(3,1)+105),MD(14,1)+1,1)
     $*2.515913D-04                                                     
      GL(MD(4,1)+261)=CNDFN1(T(MD(3,1)+104),T(MD(3,1)+107),MD(14,1)+1,1)
     $*2.483967D-04                                                     
      GL(MD(4,1)+262)=2.586967D-01*CNDFN1(T(MD(3,1)+104),T(MD(3,1)+146),
     $MD(14,1)+2,1)                                                     
      GL(MD(4,1)+263)=CNDFN1(T(MD(3,1)+105),T(MD(3,1)+106),MD(14,1)+1,1)
     $*2.515913D-04                                                     
      GL(MD(4,1)+264)=CNDFN1(T(MD(3,1)+105),T(MD(3,1)+108),MD(14,1)+1,1)
     $*2.483967D-04                                                     
      GL(MD(4,1)+265)=2.586967D-01*CNDFN1(T(MD(3,1)+105),T(MD(3,1)+147),
     $MD(14,1)+2,1)                                                     
      GL(MD(4,1)+266)=CNDFN1(T(MD(3,1)+106),T(MD(3,1)+109),MD(14,1)+1,1)
     $*2.483967D-04                                                     
      GL(MD(4,1)+267)=2.586967D-01*CNDFN1(T(MD(3,1)+106),T(MD(3,1)+148),
     $MD(14,1)+2,1)                                                     
      GL(MD(4,1)+268)=CNDFN1(T(MD(3,1)+107),T(MD(3,1)+108),MD(14,1)+1,1)
     $*2.515913D-04                                                     
      GL(MD(4,1)+269)=2.586967D-01*CNDFN1(T(MD(3,1)+107),T(MD(3,1)+149),
     $MD(14,1)+2,1)                                                     
      GL(MD(4,1)+270)=CNDFN1(T(MD(3,1)+108),T(MD(3,1)+109),MD(14,1)+1,1)
     $*2.515913D-04                                                     
      GL(MD(4,1)+271)=2.586967D-01*CNDFN1(T(MD(3,1)+108),T(MD(3,1)+150),
     $MD(14,1)+2,1)                                                     
      GL(MD(4,1)+272)=2.586968D-01*CNDFN1(T(MD(3,1)+109),T(MD(3,1)+151),
     $MD(14,1)+2,1)                                                     
      GL(MD(4,1)+273)=CNDFN1(T(MD(3,1)+110),T(MD(3,1)+111),MD(14,1)+1,1)
     $*2.515913D-04                                                     
      GL(MD(4,1)+274)=CNDFN1(T(MD(3,1)+110),T(MD(3,1)+113),MD(14,1)+1,1)
     $*2.483967D-04                                                     
      GL(MD(4,1)+275)=2.586967D-01*CNDFN1(T(MD(3,1)+110),T(MD(3,1)+152),
     $MD(14,1)+2,1)                                                     
      GL(MD(4,1)+276)=CNDFN1(T(MD(3,1)+111),T(MD(3,1)+112),MD(14,1)+1,1)
     $*2.515913D-04                                                     
      GL(MD(4,1)+277)=CNDFN1(T(MD(3,1)+111),T(MD(3,1)+114),MD(14,1)+1,1)
     $*2.483967D-04                                                     
      GL(MD(4,1)+278)=2.586967D-01*CNDFN1(T(MD(3,1)+111),T(MD(3,1)+153),
     $MD(14,1)+2,1)                                                     
      GL(MD(4,1)+279)=CNDFN1(T(MD(3,1)+112),T(MD(3,1)+115),MD(14,1)+1,1)
     $*2.483967D-04                                                     
      GL(MD(4,1)+280)=2.586967D-01*CNDFN1(T(MD(3,1)+112),T(MD(3,1)+154),
     $MD(14,1)+2,1)                                                     
      GL(MD(4,1)+281)=CNDFN1(T(MD(3,1)+113),T(MD(3,1)+114),MD(14,1)+1,1)
     $*2.515913D-04                                                     
      GL(MD(4,1)+282)=2.586967D-01*CNDFN1(T(MD(3,1)+113),T(MD(3,1)+155),
     $MD(14,1)+2,1)                                                     
      GL(MD(4,1)+283)=CNDFN1(T(MD(3,1)+114),T(MD(3,1)+115),MD(14,1)+1,1)
     $*2.515913D-04                                                     
      GL(MD(4,1)+284)=2.586967D-01*CNDFN1(T(MD(3,1)+114),T(MD(3,1)+156),
     $MD(14,1)+2,1)                                                     
      GL(MD(4,1)+285)=2.586968D-01*CNDFN1(T(MD(3,1)+115),T(MD(3,1)+157),
     $MD(14,1)+2,1)                                                     
      GL(MD(4,1)+286)=CNDFN1(T(MD(3,1)+116),T(MD(3,1)+117),MD(14,1)+1,1)
     $*2.515913D-04                                                     
      GL(MD(4,1)+287)=CNDFN1(T(MD(3,1)+116),T(MD(3,1)+119),MD(14,1)+1,1)
     $*2.483967D-04                                                     
      GL(MD(4,1)+288)=2.586967D-01*CNDFN1(T(MD(3,1)+116),T(MD(3,1)+158),
     $MD(14,1)+2,1)                                                     
      GL(MD(4,1)+289)=CNDFN1(T(MD(3,1)+117),T(MD(3,1)+118),MD(14,1)+1,1)
     $*2.515913D-04                                                     
      GL(MD(4,1)+290)=CNDFN1(T(MD(3,1)+117),T(MD(3,1)+120),MD(14,1)+1,1)
     $*2.483967D-04                                                     
      GL(MD(4,1)+291)=2.586967D-01*CNDFN1(T(MD(3,1)+117),T(MD(3,1)+159),
     $MD(14,1)+2,1)                                                     
      GL(MD(4,1)+292)=CNDFN1(T(MD(3,1)+118),T(MD(3,1)+121),MD(14,1)+1,1)
     $*2.483967D-04                                                     
      GL(MD(4,1)+293)=2.586967D-01*CNDFN1(T(MD(3,1)+118),T(MD(3,1)+160),
     $MD(14,1)+2,1)                                                     
      GL(MD(4,1)+294)=CNDFN1(T(MD(3,1)+119),T(MD(3,1)+120),MD(14,1)+1,1)
     $*2.515913D-04                                                     
      GL(MD(4,1)+295)=2.586967D-01*CNDFN1(T(MD(3,1)+119),T(MD(3,1)+161),
     $MD(14,1)+2,1)                                                     
      GL(MD(4,1)+296)=CNDFN1(T(MD(3,1)+120),T(MD(3,1)+121),MD(14,1)+1,1)
     $*2.515913D-04                                                     
      GL(MD(4,1)+297)=2.586967D-01*CNDFN1(T(MD(3,1)+120),T(MD(3,1)+162),
     $MD(14,1)+2,1)                                                     
      GL(MD(4,1)+298)=2.586968D-01*CNDFN1(T(MD(3,1)+121),T(MD(3,1)+163),
     $MD(14,1)+2,1)                                                     
      GL(MD(4,1)+299)=CNDFN1(T(MD(3,1)+122),T(MD(3,1)+123),MD(14,1)+1,1)
     $*2.499889D-04                                                     
      GL(MD(4,1)+300)=CNDFN1(T(MD(3,1)+122),T(MD(3,1)+125),MD(14,1)+1,1)
     $*2.499889D-04                                                     
      GL(MD(4,1)+301)=2.57049D-01*CNDFN1(T(MD(3,1)+122),T(MD(3,1)+164),M
     $D(14,1)+2,1)                                                      
      GL(MD(4,1)+302)=CNDFN1(T(MD(3,1)+123),T(MD(3,1)+124),MD(14,1)+1,1)
     $*2.499889D-04                                                     
      GL(MD(4,1)+303)=CNDFN1(T(MD(3,1)+123),T(MD(3,1)+126),MD(14,1)+1,1)
     $*2.499889D-04                                                     
      GL(MD(4,1)+304)=2.57049D-01*CNDFN1(T(MD(3,1)+123),T(MD(3,1)+165),M
     $D(14,1)+2,1)                                                      
      GL(MD(4,1)+305)=CNDFN1(T(MD(3,1)+124),T(MD(3,1)+127),MD(14,1)+1,1)
     $*2.499889D-04                                                     
      GL(MD(4,1)+306)=2.57049D-01*CNDFN1(T(MD(3,1)+124),T(MD(3,1)+166),M
     $D(14,1)+2,1)                                                      
      GL(MD(4,1)+307)=CNDFN1(T(MD(3,1)+125),T(MD(3,1)+126),MD(14,1)+1,1)
     $*2.499889D-04                                                     
      GL(MD(4,1)+308)=CNDFN1(T(MD(3,1)+125),T(MD(3,1)+128),MD(14,1)+1,1)
     $*2.499889D-04                                                     
      GL(MD(4,1)+309)=2.57049D-01*CNDFN1(T(MD(3,1)+125),T(MD(3,1)+167),M
     $D(14,1)+2,1)                                                      
      GL(MD(4,1)+310)=CNDFN1(T(MD(3,1)+126),T(MD(3,1)+127),MD(14,1)+1,1)
     $*2.499889D-04                                                     
      GL(MD(4,1)+311)=CNDFN1(T(MD(3,1)+126),T(MD(3,1)+129),MD(14,1)+1,1)
     $*2.499889D-04                                                     
      GL(MD(4,1)+312)=2.57049D-01*CNDFN1(T(MD(3,1)+126),T(MD(3,1)+168),M
     $D(14,1)+2,1)                                                      
      GL(MD(4,1)+313)=CNDFN1(T(MD(3,1)+127),T(MD(3,1)+130),MD(14,1)+1,1)
     $*2.499889D-04                                                     
      GL(MD(4,1)+314)=2.57049D-01*CNDFN1(T(MD(3,1)+127),T(MD(3,1)+169),M
     $D(14,1)+2,1)                                                      
      GL(MD(4,1)+315)=CNDFN1(T(MD(3,1)+128),T(MD(3,1)+129),MD(14,1)+1,1)
     $*2.499889D-04                                                     
      GL(MD(4,1)+316)=2.57049D-01*CNDFN1(T(MD(3,1)+128),T(MD(3,1)+170),M
     $D(14,1)+2,1)                                                      
      GL(MD(4,1)+317)=CNDFN1(T(MD(3,1)+129),T(MD(3,1)+130),MD(14,1)+1,1)
     $*2.499889D-04                                                     
      GL(MD(4,1)+318)=2.57049D-01*CNDFN1(T(MD(3,1)+129),T(MD(3,1)+171),M
     $D(14,1)+2,1)                                                      
      GL(MD(4,1)+319)=2.57049D-01*CNDFN1(T(MD(3,1)+130),T(MD(3,1)+172),M
     $D(14,1)+2,1)                                                      
      GL(MD(4,1)+320)=CNDFN1(T(MD(3,1)+131),T(MD(3,1)+132),MD(14,1)+1,1)
     $*2.499889D-04                                                     
      GL(MD(4,1)+321)=CNDFN1(T(MD(3,1)+131),T(MD(3,1)+134),MD(14,1)+1,1)
     $*2.499889D-04                                                     
      GL(MD(4,1)+322)=CNDFN1(T(MD(3,1)+132),T(MD(3,1)+133),MD(14,1)+1,1)
     $*2.499889D-04                                                     
      GL(MD(4,1)+323)=CNDFN1(T(MD(3,1)+132),T(MD(3,1)+135),MD(14,1)+1,1)
     $*2.499889D-04                                                     
      GL(MD(4,1)+324)=CNDFN1(T(MD(3,1)+133),T(MD(3,1)+136),MD(14,1)+1,1)
     $*2.499889D-04                                                     
      GL(MD(4,1)+325)=CNDFN1(T(MD(3,1)+134),T(MD(3,1)+135),MD(14,1)+1,1)
     $*2.499889D-04                                                     
      GL(MD(4,1)+326)=CNDFN1(T(MD(3,1)+134),T(MD(3,1)+137),MD(14,1)+1,1)
     $*2.499889D-04                                                     
      GL(MD(4,1)+327)=CNDFN1(T(MD(3,1)+135),T(MD(3,1)+136),MD(14,1)+1,1)
     $*2.499889D-04                                                     
      GL(MD(4,1)+328)=CNDFN1(T(MD(3,1)+135),T(MD(3,1)+138),MD(14,1)+1,1)
     $*2.499889D-04                                                     
      GL(MD(4,1)+329)=CNDFN1(T(MD(3,1)+136),T(MD(3,1)+139),MD(14,1)+1,1)
     $*2.499889D-04                                                     
      GL(MD(4,1)+330)=CNDFN1(T(MD(3,1)+137),T(MD(3,1)+138),MD(14,1)+1,1)
     $*2.499889D-04                                                     
      GL(MD(4,1)+331)=CNDFN1(T(MD(3,1)+138),T(MD(3,1)+139),MD(14,1)+1,1)
     $*2.499889D-04                                                     
      GL(MD(4,1)+332)=CNDFN1(T(MD(3,1)+140),T(MD(3,1)+141),MD(14,1)+1,1)
     $*2.515913D-04                                                     
      GL(MD(4,1)+333)=CNDFN1(T(MD(3,1)+140),T(MD(3,1)+143),MD(14,1)+1,1)
     $*2.483967D-04                                                     
      GL(MD(4,1)+334)=CNDFN1(T(MD(3,1)+141),T(MD(3,1)+142),MD(14,1)+1,1)
     $*2.515913D-04                                                     
      GL(MD(4,1)+335)=CNDFN1(T(MD(3,1)+141),T(MD(3,1)+144),MD(14,1)+1,1)
     $*2.483967D-04                                                     
      GL(MD(4,1)+336)=CNDFN1(T(MD(3,1)+142),T(MD(3,1)+145),MD(14,1)+1,1)
     $*2.483967D-04                                                     
      GL(MD(4,1)+337)=CNDFN1(T(MD(3,1)+143),T(MD(3,1)+144),MD(14,1)+1,1)
     $*2.515913D-04                                                     
      GL(MD(4,1)+338)=CNDFN1(T(MD(3,1)+144),T(MD(3,1)+145),MD(14,1)+1,1)
     $*2.515913D-04                                                     
      GL(MD(4,1)+339)=CNDFN1(T(MD(3,1)+146),T(MD(3,1)+147),MD(14,1)+1,1)
     $*2.515913D-04                                                     
      GL(MD(4,1)+340)=CNDFN1(T(MD(3,1)+146),T(MD(3,1)+149),MD(14,1)+1,1)
     $*2.483967D-04                                                     
      GL(MD(4,1)+341)=CNDFN1(T(MD(3,1)+147),T(MD(3,1)+148),MD(14,1)+1,1)
     $*2.515913D-04                                                     
      GL(MD(4,1)+342)=CNDFN1(T(MD(3,1)+147),T(MD(3,1)+150),MD(14,1)+1,1)
     $*2.483967D-04                                                     
      GL(MD(4,1)+343)=CNDFN1(T(MD(3,1)+148),T(MD(3,1)+151),MD(14,1)+1,1)
     $*2.483967D-04                                                     
      GL(MD(4,1)+344)=CNDFN1(T(MD(3,1)+149),T(MD(3,1)+150),MD(14,1)+1,1)
     $*2.515913D-04                                                     
      GL(MD(4,1)+345)=CNDFN1(T(MD(3,1)+150),T(MD(3,1)+151),MD(14,1)+1,1)
     $*2.515913D-04                                                     
      GL(MD(4,1)+346)=CNDFN1(T(MD(3,1)+152),T(MD(3,1)+153),MD(14,1)+1,1)
     $*2.515913D-04                                                     
      GL(MD(4,1)+347)=CNDFN1(T(MD(3,1)+152),T(MD(3,1)+155),MD(14,1)+1,1)
     $*2.483967D-04                                                     
      GL(MD(4,1)+348)=CNDFN1(T(MD(3,1)+153),T(MD(3,1)+154),MD(14,1)+1,1)
     $*2.515913D-04                                                     
      GL(MD(4,1)+349)=CNDFN1(T(MD(3,1)+153),T(MD(3,1)+156),MD(14,1)+1,1)
     $*2.483967D-04                                                     
      GL(MD(4,1)+350)=CNDFN1(T(MD(3,1)+154),T(MD(3,1)+157),MD(14,1)+1,1)
     $*2.483967D-04                                                     
      GL(MD(4,1)+351)=CNDFN1(T(MD(3,1)+155),T(MD(3,1)+156),MD(14,1)+1,1)
     $*2.515913D-04                                                     
      GL(MD(4,1)+352)=CNDFN1(T(MD(3,1)+156),T(MD(3,1)+157),MD(14,1)+1,1)
     $*2.515913D-04                                                     
      GL(MD(4,1)+353)=CNDFN1(T(MD(3,1)+158),T(MD(3,1)+159),MD(14,1)+1,1)
     $*2.515913D-04                                                     
      GL(MD(4,1)+354)=CNDFN1(T(MD(3,1)+158),T(MD(3,1)+161),MD(14,1)+1,1)
     $*2.483967D-04                                                     
      GL(MD(4,1)+355)=CNDFN1(T(MD(3,1)+159),T(MD(3,1)+160),MD(14,1)+1,1)
     $*2.515913D-04                                                     
      GL(MD(4,1)+356)=CNDFN1(T(MD(3,1)+159),T(MD(3,1)+162),MD(14,1)+1,1)
     $*2.483967D-04                                                     
      GL(MD(4,1)+357)=CNDFN1(T(MD(3,1)+160),T(MD(3,1)+163),MD(14,1)+1,1)
     $*2.483967D-04                                                     
      GL(MD(4,1)+358)=CNDFN1(T(MD(3,1)+161),T(MD(3,1)+162),MD(14,1)+1,1)
     $*2.515913D-04                                                     
      GL(MD(4,1)+359)=CNDFN1(T(MD(3,1)+162),T(MD(3,1)+163),MD(14,1)+1,1)
     $*2.515913D-04                                                     
      GL(MD(4,1)+360)=CNDFN1(T(MD(3,1)+164),T(MD(3,1)+165),MD(14,1)+1,1)
     $*2.499889D-04                                                     
      GL(MD(4,1)+361)=CNDFN1(T(MD(3,1)+164),T(MD(3,1)+167),MD(14,1)+1,1)
     $*2.499889D-04                                                     
      GL(MD(4,1)+362)=CNDFN1(T(MD(3,1)+165),T(MD(3,1)+166),MD(14,1)+1,1)
     $*2.499889D-04                                                     
      GL(MD(4,1)+363)=CNDFN1(T(MD(3,1)+165),T(MD(3,1)+168),MD(14,1)+1,1)
     $*2.499889D-04                                                     
      GL(MD(4,1)+364)=CNDFN1(T(MD(3,1)+166),T(MD(3,1)+169),MD(14,1)+1,1)
     $*2.499889D-04                                                     
      GL(MD(4,1)+365)=CNDFN1(T(MD(3,1)+167),T(MD(3,1)+168),MD(14,1)+1,1)
     $*2.499889D-04                                                     
      GL(MD(4,1)+366)=CNDFN1(T(MD(3,1)+167),T(MD(3,1)+170),MD(14,1)+1,1)
     $*2.499889D-04                                                     
      GL(MD(4,1)+367)=CNDFN1(T(MD(3,1)+168),T(MD(3,1)+169),MD(14,1)+1,1)
     $*2.499889D-04                                                     
      GL(MD(4,1)+368)=CNDFN1(T(MD(3,1)+168),T(MD(3,1)+171),MD(14,1)+1,1)
     $*2.499889D-04                                                     
      GL(MD(4,1)+369)=CNDFN1(T(MD(3,1)+169),T(MD(3,1)+172),MD(14,1)+1,1)
     $*2.499889D-04                                                     
      GL(MD(4,1)+370)=CNDFN1(T(MD(3,1)+170),T(MD(3,1)+171),MD(14,1)+1,1)
     $*2.499889D-04                                                     
      GL(MD(4,1)+371)=CNDFN1(T(MD(3,1)+171),T(MD(3,1)+172),MD(14,1)+1,1)
     $*2.499889D-04                                                     
      GL(MD(4,1)+657)=CNDFN1(T(MD(3,1)+281),T(MD(3,1)+282),MD(14,1)+1,1)
     $*1.880212D-04                                                     
      GL(MD(4,1)+658)=CNDFN1(T(MD(3,1)+281),T(MD(3,1)+284),MD(14,1)+1,1)
     $*1.880212D-04                                                     
      GL(MD(4,1)+659)=CNDFN1(T(MD(3,1)+281),T(MD(3,1)+285),MD(14,1)+1,1)
     $*3.323798D-04                                                     
      GL(MD(4,1)+660)=7.489304D-01*CNDFN1(T(MD(3,1)+281),T(MD(3,1)+289),
     $MD(14,1)+2,1)                                                     
      GL(MD(4,1)+661)=CNDFN1(T(MD(3,1)+282),T(MD(3,1)+283),MD(14,1)+1,1)
     $*1.880212D-04                                                     
      GL(MD(4,1)+662)=CNDFN1(T(MD(3,1)+282),T(MD(3,1)+286),MD(14,1)+1,1)
     $*3.323798D-04                                                     
      GL(MD(4,1)+663)=7.489304D-01*CNDFN1(T(MD(3,1)+282),T(MD(3,1)+290),
     $MD(14,1)+2,1)                                                     
      GL(MD(4,1)+664)=CNDFN1(T(MD(3,1)+283),T(MD(3,1)+284),MD(14,1)+1,1)
     $*1.880212D-04                                                     
      GL(MD(4,1)+665)=CNDFN1(T(MD(3,1)+283),T(MD(3,1)+287),MD(14,1)+1,1)
     $*3.323798D-04                                                     
      GL(MD(4,1)+666)=7.489304D-01*CNDFN1(T(MD(3,1)+283),T(MD(3,1)+291),
     $MD(14,1)+2,1)                                                     
      GL(MD(4,1)+667)=CNDFN1(T(MD(3,1)+284),T(MD(3,1)+288),MD(14,1)+1,1)
     $*3.323798D-04                                                     
      GL(MD(4,1)+668)=7.489304D-01*CNDFN1(T(MD(3,1)+284),T(MD(3,1)+292),
     $MD(14,1)+2,1)                                                     
      GL(MD(4,1)+669)=CNDFN1(T(MD(3,1)+285),T(MD(3,1)+286),MD(14,1)+1,1)
     $*1.880212D-04                                                     
      GL(MD(4,1)+670)=CNDFN1(T(MD(3,1)+285),T(MD(3,1)+288),MD(14,1)+1,1)
     $*1.880212D-04                                                     
      GL(MD(4,1)+671)=7.489304D-01*CNDFN1(T(MD(3,1)+285),T(MD(3,1)+293),
     $MD(14,1)+2,1)                                                     
      GL(MD(4,1)+672)=CNDFN1(T(MD(3,1)+286),T(MD(3,1)+287),MD(14,1)+1,1)
     $*1.880212D-04                                                     
      GL(MD(4,1)+673)=7.489304D-01*CNDFN1(T(MD(3,1)+286),T(MD(3,1)+294),
     $MD(14,1)+2,1)                                                     
      GL(MD(4,1)+674)=CNDFN1(T(MD(3,1)+287),T(MD(3,1)+288),MD(14,1)+1,1)
     $*1.880212D-04                                                     
      GL(MD(4,1)+675)=7.489304D-01*CNDFN1(T(MD(3,1)+287),T(MD(3,1)+295),
     $MD(14,1)+2,1)                                                     
      GL(MD(4,1)+676)=7.489304D-01*CNDFN1(T(MD(3,1)+288),T(MD(3,1)+296),
     $MD(14,1)+2,1)                                                     
      GL(MD(4,1)+677)=CNDFN1(T(MD(3,1)+289),T(MD(3,1)+290),MD(14,1)+1,1)
     $*1.880212D-04                                                     
      GL(MD(4,1)+678)=CNDFN1(T(MD(3,1)+289),T(MD(3,1)+292),MD(14,1)+1,1)
     $*1.880212D-04                                                     
      GL(MD(4,1)+679)=CNDFN1(T(MD(3,1)+289),T(MD(3,1)+293),MD(14,1)+1,1)
     $*3.323798D-04                                                     
      GL(MD(4,1)+680)=CNDFN1(T(MD(3,1)+290),T(MD(3,1)+291),MD(14,1)+1,1)
     $*1.880212D-04                                                     
      GL(MD(4,1)+681)=CNDFN1(T(MD(3,1)+290),T(MD(3,1)+294),MD(14,1)+1,1)
     $*3.323798D-04                                                     
      GL(MD(4,1)+682)=CNDFN1(T(MD(3,1)+291),T(MD(3,1)+292),MD(14,1)+1,1)
     $*1.880212D-04                                                     
      GL(MD(4,1)+683)=CNDFN1(T(MD(3,1)+291),T(MD(3,1)+295),MD(14,1)+1,1)
     $*3.323798D-04                                                     
      GL(MD(4,1)+684)=CNDFN1(T(MD(3,1)+292),T(MD(3,1)+296),MD(14,1)+1,1)
     $*3.323798D-04                                                     
      GL(MD(4,1)+685)=CNDFN1(T(MD(3,1)+293),T(MD(3,1)+294),MD(14,1)+1,1)
     $*1.880212D-04                                                     
      GL(MD(4,1)+686)=CNDFN1(T(MD(3,1)+293),T(MD(3,1)+296),MD(14,1)+1,1)
     $*1.880212D-04                                                     
      GL(MD(4,1)+687)=CNDFN1(T(MD(3,1)+294),T(MD(3,1)+295),MD(14,1)+1,1)
     $*1.880212D-04                                                     
      GL(MD(4,1)+688)=CNDFN1(T(MD(3,1)+295),T(MD(3,1)+296),MD(14,1)+1,1)
     $*1.880212D-04                                                     
      GL(MD(4,1)+701)=CNDFN1(T(MD(3,1)+305),T(MD(3,1)+306),MD(14,1)+1,1)
     $*9.174663D-06                                                     
      GL(MD(4,1)+702)=CNDFN1(T(MD(3,1)+305),T(MD(3,1)+308),MD(14,1)+1,1)
     $*9.174663D-06                                                     
      GL(MD(4,1)+703)=3.444776D-02*CNDFN1(T(MD(3,1)+305),T(MD(3,1)+309),
     $MD(14,1)+2,1)                                                     
      GL(MD(4,1)+704)=CNDFN1(T(MD(3,1)+306),T(MD(3,1)+307),MD(14,1)+1,1)
     $*9.174663D-06                                                     
      GL(MD(4,1)+705)=3.444776D-02*CNDFN1(T(MD(3,1)+306),T(MD(3,1)+310),
     $MD(14,1)+2,1)                                                     
      GL(MD(4,1)+706)=CNDFN1(T(MD(3,1)+307),T(MD(3,1)+308),MD(14,1)+1,1)
     $*9.174663D-06                                                     
      GL(MD(4,1)+707)=3.444776D-02*CNDFN1(T(MD(3,1)+307),T(MD(3,1)+311),
     $MD(14,1)+2,1)                                                     
      GL(MD(4,1)+708)=3.444776D-02*CNDFN1(T(MD(3,1)+308),T(MD(3,1)+312),
     $MD(14,1)+2,1)                                                     
      GL(MD(4,1)+709)=CNDFN1(T(MD(3,1)+309),T(MD(3,1)+310),MD(14,1)+1,1)
     $*9.174663D-06                                                     
      GL(MD(4,1)+710)=CNDFN1(T(MD(3,1)+309),T(MD(3,1)+312),MD(14,1)+1,1)
     $*9.174663D-06                                                     
      GL(MD(4,1)+711)=CNDFN1(T(MD(3,1)+310),T(MD(3,1)+311),MD(14,1)+1,1)
     $*9.174663D-06                                                     
      GL(MD(4,1)+712)=CNDFN1(T(MD(3,1)+311),T(MD(3,1)+312),MD(14,1)+1,1)
     $*9.174663D-06                                                     
      RETURN                                                            
      END                                                               
      SUBROUTINE GM0001(HTFLAG)                                         
      LOGICAL HTFLAG                                                    
      CALL GM0001_00001(HTFLAG)                                         
      RETURN                                                            
      END                                                               
      SUBROUTINE V20001                                                 
      INCLUDE 'TCCT_SAT.h'
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
      INCLUDE 'TCCT_SAT.h'
      RG(18)=5453.0577                                                  
      RG(12)=545.30577                                                  
      IG(4)=200                                                         
      RG(13)=0.011                                                      
      RG(3)=8.0                                                         
      CALL SOLCYC('SLCRNC',0.011D0,0.01D0,5453.0577D0,200,' ','NONE')   
      CALL SLCRNC                                                       
      RETURN                                                            
      END                                                               
      SUBROUTINE OUTPUT                                                 
      INCLUDE 'TCCT_SAT.h'
      IF (OUTIME .NE. 'ALL') RETURN                                     
      OPBLOK = 'OUTPUTS'                                                
      CALL PRNDTB(' ','L, T, QI, C',1)                                  
      CALL DMPTMD(' ','NODES, CONDUCTORS, CONSTANTS',1,' ')             
      OPBLOK = ' '                                                      
      CALL PARWRT('OUTPUTS')                                            
      RETURN                                                            
      END                                                               
