clc
clear all


%% EMITANCIAS 


% Geometria
A = [0.2, 0.39, 0.39];                                  % [m^2]
Af = [0, 0, 0.2];

% Factores
F(1,1) = 0; F(1,2) = 0.5; F(1,3) = 0.; F(1,4) = 0.5; 
F(2,1) = 0.25; F(2,2) = 0.41; F(2,3) = 0.; F(2,4) = 0.34;
F(3,1) = 0; F(3,2) = 0.0; F(3,3) = 0.; F(3,4) = 1.;

disp(['sum(F1j) = ', num2str(sum(F(1,:)))])
disp(['sum(F2j) = ', num2str(sum(F(2,:)))])
disp(['sum(F3j) = ', num2str(sum(F(3,:)))])

% Props opitcas
a = [0.9, 0.4, 0.4];
e = [0.8, 0.4, 0.8];

% Entorno
sigma = 5.67e-8;                            % [W/(m^2 K^4)]
Tinf = 20+273.15;                                 % [K]   
M4 = Tinf^4*sigma;
E = 800;                                    % [W/m^2]

Wdis = 30;


% Incognitas
syms M1 M1bb M2 M2bb M3 M3bb Q23

% Sistema de ecuaciones
eq1 = ( M1 - M1bb )/( (1-e(1))/(A(1)*e(1)) ) == -Wdis;

eq2 = ( M1 - M1bb )/( (1-e(1))/(A(1)*e(1)) ) == ...
      ( M2 - M1 )/( 1/(A(1)*F(1,2)) ) + ( M4 - M1 )/( 1/(A(1)*F(1,4)) );

eq3 = M2bb == M3bb; % -> Q23 = 0

eq4 = ( M2 - M2bb )/( (1-e(2))/(A(2)*e(2)) ) == ...
      ( M1 - M2 )/( 1/(A(2)*F(2,1)) ) + ( M4 - M2 )/( 1/(A(2)*F(2,4)) );
  
eq5 = ( M3 - M3bb )/( (1-e(3))/(A(3)*e(3)) ) == ...
      ( M4 - M3 )/( 1/(A(3)*F(3,4)) );

eq6 = ( M3 - M3bb )/( (1-e(3))/(A(3)*e(3)) )...
      + ( M2 - M2bb )/( (1-e(2))/(A(2)*e(2)) ) == -a(3)*Af(3)*E;
  

% Resolver el sistema de ecuaciones
[Ax,Bx] = equationsToMatrix([eq1, eq2, eq3, eq4, eq5, eq6], ...
                          [M1, M1bb, M2, M2bb, M3, M3bb]);
X = double(linsolve(Ax,Bx))';



%% RESULTADOS BONITOS

% Campos
qc = arrayfun(@char, [M1, M1bb, M2, M2bb, M3, M3bb], 'uniform', 0);
qc = ["Variable", qc];

% Temperaturas
T =  (X/sigma).^(1/4);
T = ["T [K]", T];
T = array2table(T);
T.Properties.VariableNames = qc;

% Tabla
X = ["M [W/m^2]", X];

X = array2table(X);
X.Properties.VariableNames = qc;

X = cat(1, X, T)



%%



%{
eq1 = ( M1 - M1bb )/( (1-e(1))/(A(1)*e(1)) ) == - 30;
eq2 = ( M1 - M1bb )/( (1-e(1))/(A(1)*e(1)) ) == ...
      ( M2 - M1 )/( 1/(A(1)*F(1,2)) ) + ( M4 - M1 )/( 1/(A(1)*F(1,4)) );

eq3 = ( M2 - M2bb )/( (1-e(2))/(A(2)*e(2)) ) == - Q23;
eq4 = ( M2 - M2bb )/( (1-e(2))/(A(2)*e(2)) ) == ...
      ( M1 - M2 )/( 1/(A(2)*F(2,1)) ) + ( M4 - M2 )/( 1/(A(2)*F(2,4)) );
  
eq5 = ( M3 - M3bb )/( (1-e(3))/(A(3)*e(3)) ) == -a(3)*Af(3)*E + Q23;
eq6 = ( M3 - M3bb )/( (1-e(3))/(A(3)*e(3)) ) == ...
      ( M4 - M3 )/( 1/(A(3)*F(3,4)) );

eq7 = Q23 == 0;



[A,B] = equationsToMatrix([eq1, eq2, eq3, eq4, eq5, eq6, eq7], ...
                          [M1, M1bb, M2, M2bb, M3, M3bb, Q23]);
                      
X = double(linsolve(A,B));
T = ( X(1:end-1)/sigma ).^(1/4) 
qc = arrayfun(@char, [M1, M1bb, M2, M2bb, M3, M3bb, Q23], 'uniform', 0);
X = array2table(X');
X.Properties.VariableNames = qc




function F = emitancias(M)


    A = 0.1^2;                                  % [m^2]
    
    sigma = 5.67e-8;                            % [W/(m^2 K^4)]
    Tinf = 2.7;                                 % [K]    
             
    E = 1361;                                    % [W/m^2]
    
    F(1,1) = 0; F(1,2) = 0.83; F(1,3) = 0.; F(1,4) = 0.17; 
    F(2,1) = 0.83; F(2,2) = 0.0; F(2,3) = 0.; F(2,4) = 0.17; 
    F(3,1) = 0; F(3,2) = 0.0; F(3,3) = 0.; F(3,4) = 1.; 

    
    a = [0.2, 0.2, 0.2];
    e = [0.85, 0.85, 0.85];
    
    M4 = Tinf^4*sigma;
    
    
    % 1
    F(1) = ( M(2,1) - M(1,1) )/( 1/(A*F(1,2)) )...
            + ( M4 - M(1,1) )/( 1/(A*F(1,4)) );
        
    F(2) = ( M(1,1) - M(1,2) )/( (1-e(1))/(A*e(1)) )...
            - ( M(2,1) - M(1,1) )/( 1/(A*F(1,2)) )...
            + ( M4 - M(1,1) )/( 1/(A*F(1,4)) );
        
    % 2
    F(3) = ( M(1,1) - M(2,1) )/( 1/(A*F(2,1)) )...
            + ( M4 - M(2,1) )/( 1/(A*F(2,4)) );
        
    F(4) = ( M(2,1) - M(2,2) )/( (1-e(2))/(A*e(2)) )...
            - ( M(1,1) - M(2,1) )/( 1/(A*F(2,1)) )...
            - ( M4 - M(2,1) )/( 1/(A*F(2,4)) );

    % 3
    F(5) = ( M4 - M(3,1) )/( 1/(A*F(3,4)) )...
            - ( -a(3)*A*E );
        
    F(6) = ( M(3,1) - M(3,2) )/( (1-e(3))/(A*e(3)) )...
            - ( M4 - M(3,1) )/( 1/(A*F(3,4)) );    
    
end


%{
function F = emitancias(M)

    % M1 = M(1)
    % M1bb = M(2)
    % M2 = M(3)
    % M2bb = M(4)
    % M3 = M(5)
    % M3bb = M(6)
    % M4 = M(7)

    R1 = 0.25/2;                                % [m]
    W = 30;                                     % [W]
    R2 = 2*R1;                                  % [m]
    
    A = [4*pi*R1^2, 2*pi*R2^2, 2*pi*R2^2];      % [m^2]
    Af = [0, 0, pi*R2^2];                       % [m^2]
    
    sigma = 5.67e-8;                            % [W/(m^2 K^4)]
    Tinf = 20 + 273.15;                         % [K]    
    
    Q(2,3) = 0;                                 % [W/m^2]            
    
    E = 800;                                    % [W/m^2]
    
    F(3,4) = 1;
    F(2,4) = 0.34; F(2,2) = 0.41; F(2,1) = 0.25; 
    F(1,2) = 0.5; F(1,4) = 0.5;
    
    alfa = [0.9, 0.4, 0.4];
    e = [0.8, 0.4, 0.8];
    
    
    % Escudo concavo - Escudo esfera
    F(1,1) = ( M(1) - M(2) )/( (1 - e(1))/(A(1)*e(1)) ) - ...
             ( M(3) - M(1) )/( 1/(A(1)*F(1,2)) ) - ...
             ( M(7) - M(1) )/( 1/(A(1)*F(1,4)) );  
    
    F(2,1) = ( M(1) - M(2) )/( (1 - e(1))/(A(1)*e(1)) ) - ...
             ( -W ) ;    

    % Escudo convexo - Escudo concavo
    F(3,1) = ( M(3) - M(4) )/( (1 - e(2))/(A(2)*e(2)) ) - ...
             ( M(7) - M(3) )/( 1/(A(2)*F(2,4)) ) - ...
             ( M(1) - M(3) )/( 1/(A(2)*F(2,1)) );  
    
    F(4,1) = ( M(3) - M(4) )/( (1 - e(2))/(A(2)*e(2)) ) - ...
             ( -Q(2,3) );
         
    % Escudo convexo - ambiente
    F(5,1) = ( M(5) - M(6) )/( (1 - e(3))/(A(3)*e(3)) ) - ...
             ( M(7) - M(5) )/( 1/(A(3)*F(3,4)) );  
    
    F(6,1) = ( M(5) - M(6) )/( (1 - e(3))/(A(3)*e(3)) ) - ...
             ( - alfa(3)*Af(3)*E + Q(2,3) );
       
    % Condiciones de contorno         
    F(7,1) = M(7) - Tinf * sigma;
    
    
end
%}

%}

