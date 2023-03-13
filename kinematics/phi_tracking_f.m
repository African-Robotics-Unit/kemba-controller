function [theta_m,dtheta_m] = phi_tracking_f(dl_ps,dphi_d,dtheta_b,l_ps,phi_d,theta_b)
%PHI_TRACKING_F
%    [THETA_M,DTHETA_M] = PHI_TRACKING_F(DL_PS,DPHI_D,DTHETA_B,L_PS,PHI_D,THETA_B)

%    This function was generated by the Symbolic Math Toolbox version 9.1.
%    28-Oct-2022 09:37:52

t2 = l_ps+2.07e+2./1.0e+3;
t4 = l_ps.*8.53904024832413e+1;
t3 = t2.^2;
t7 = t4+1.767581331403095e+1;
t5 = t3.*4.269520124162065e+1;
t6 = -t5;
t9 = t5-2.639801597568163;
t8 = t6+2.639801597568163;
t11 = t9.^2;
t10 = acos(t8);
t12 = -t11;
t13 = t12+1.0;
t15 = t10+1.274053155386639e-1;
t14 = 1.0./sqrt(t13);
t16 = cos(t15);
t17 = sin(t15);
t18 = t17.^2;
t19 = t16.*1.14224e-1;
t20 = -t19;
t21 = t20+1.1426e-1;
t22 = 1.0./sqrt(t21);
theta_m = phi_d-theta_b-asin(t17.*t22.*(5.9e+1./2.5e+2));
if nargout > 1
    dtheta_m = dphi_d-dtheta_b-dl_ps.*(t7.*t14.*t16.*t22.*(5.9e+1./2.5e+2)-t7.*t14.*t18.*t22.^3.*1.3478432e-2).*1.0./sqrt((t18.*5.5696e-2)./(t19-1.1426e-1)+1.0);
end
