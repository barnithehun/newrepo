

results = table({'consumption share'; 'investment share'; capital share'; 'housing investment share';
                 'housing stock ratio'; 'labour share'; 'mortgage rate (for HHs)'; 'corporate loan rate (for HHs)'; 'wedge - corp, mortgage';
                 'deposit interest rate'; 'wedge - credit spread'; 'prob. of undercapitalization z(b)'; 'corporate default rate';  'mortgage default rate'; 
                  'mortgages to GPD'; 'capital adequacy (equtiy to loans)';
                 'mean DSTI'; 'DSTI violations'; 'mean LTV'; 'LTV violations'; 'inflation';});


results.target = [0.7; 0.262; 2.16; 0.0475; 1.99; 0.67; 0.0442; 0.0387; 0.01; 0.0189; 0.02; 0.015; 0.01; 0.01; 0.133; 0.15; 0.272; 0.01; 0.523; 0.042; 0.02];

# these are only to check wether the steady states are close to their target values 

GDP =  (DEL_H*(oo_.steady_state(42)) + (oo_.steady_state(39)))*4;
quarterly_GDP = GDP / 4;

 consumption share                   	(oo_.steady_state(23)+ PSI*oo_.steady_state(12)) / quarterly_GDP;
 investment share                    	oo_.steady_state(36) / quarterly_GDP ;
 capital share                   	oo_.steady_state(26) / GDP;
 housing investment share               DEL_H*(oo_.steady_state(42)) / quarterly_GDP;
 housing stock ratio                    oo_.steady_state(42)*(oo_.steady_state(25)+PSI*oo_.steady_state(14)) / GDP;
 labour share                   	(1+PSI*XI)*oo_.steady_state(40) / quarterly_GDP;
 mortgage rate (for HHs)                oo_.steady_state(16)^4-1;
 corporate loan rate (for HHs)          oo_.steady_state(28)^4-1;
 wedge - corp, mortgage                 (oo_.steady_state(16)^4-1) - (oo_.steady_state(28)^4-1);
 deposit interest rate                  oo_.steady_state(7)^4-1;
 wedge - credit spread                  (oo_.steady_state(28)^4-1) - (oo_.steady_state(7)^4-1);
 prob. of undercapitalization z(b)      normcdf(oo_.steady_state(4));
 corporate default rate                 normcdf(oo_.steady_state(31));
 mortgage default rate                  normcdf(oo_.steady_state(18));
 mortgages to GPD                   	PSI*oo_.steady_state(15) / GDP;
 capital adequacy (equtiy to loans)     oo_.steady_state(1) / (oo_.steady_state(27) + PSI*oo_.steady_state(15));
 mean DSTI                   		oo_.steady_state(10)*0.5;     %these are going to be slightly lower than eynos since it does not exponential stuff
 DSTI violations                   	normcdf(oo_.steady_state(11));
 mean LTV                   		oo_.steady_state(8)*0.8;      %these are going to be slightly lower than eynos since it does not exponential stuff
 LTV violations                   	normcdf(oo_.steady_state(9));
 inflation                   		(oo_.steady_state(43)-1)*4];
    

