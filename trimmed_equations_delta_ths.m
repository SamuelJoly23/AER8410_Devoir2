function F = trimmed_equations_delta_ths(x,vector)
%-------------------------------------------------------------------------%
% On implante dans cette fonction les 3 équations à résoudre              
%-------------------------------------------------------------------------%
% Les composantes de x contiennent les 3 valeurs d'équilibre recherchées  
%-------------------------------------------------------------------------%
alpha_e  = x(1);
Vt_e   = x(2);
Tm_e     = x(3);
%vector =[dths_e rho_5]
%-------------------------------------------------------------------------%
% Paramètres - Mise en mémoire des paramètres
%-------------------------------------------------------------------------%
run('aircraft_data.m')

%-------------------------------------------------------------------------%
% Coefficients aérodynamiques à l'équilibre
% Écrire les expressions des trois coefficient CL, CD et Cm à l'équilibre
% Attention: les signaux "q" (vitesse de tangage), "alpha_dot" et "de" 
% (braquage de l'élevateur) sont nuls à l'équilibre !
%-------------------------------------------------------------------------%
CL_e = CL_0 + CL_alpha*alpha_e + CL_dths*vector(1);
CD_e = CD_0 + CD_2 * (CL_e)^2;
Cm_e = Cm_0 + Cm_alpha*alpha_e + Cm_dths*vector(1);


%-------------------------------------------------------------------------%
% Equations d'équilibre à résoudre
%-------------------------------------------------------------------------%
f1 = ((0.5*vector(2)*(Vt_e^2))*wingarea*CD_e) - (Tm_e*cos(alpha_e + em));
f2 = ((0.5*vector(2)*(Vt_e^2))*wingarea*CL_e) + (Tm_e*sin(alpha_e + em)) - mass*g0;
f3 = ((0.5*vector(2)*(Vt_e^2))*wingarea*chord*Cm_e) + (Tm_e*(cos(em)*zm + sin(em)*xm));

F = [f1 f2 f3]';

end


