clear; close all;

load Crosswork_results02.mat %change to your mat file
oo1=oo_; 

load Crosswork_results005.mat  %change to your mat file
oo2=oo_;




lag = (1:1:100);  %change to number of periods

%% V
F1=figure(1);
set(F1, 'numbertitle','off')

set(F1, 'name', 'Impulse response functions (TFP Shock)') %change to your title
  h1 = area(1:30); %number of periods
  set(h1,'FaceColor',[.9 .9 .9]);
subplot(3,2,1)% first two number are number of graphs on one page (2x2=4) last part is location
plot(lag,oo1.irfs.log_y_eps_a(:,[1: 100])','b','linewidth',2); % load oo1.yourname of responses (see mat file)
hold on 
plot(lag,oo2.irfs.log_y_eps_a(:,[1: 100]),'--r','linewidth',2);


hold off
title('Output','fontsize',12)


subplot(3,2,2)
plot(lag,oo1.irfs.log_c_eps_a(:,[1: 100])','b','linewidth',2);
hold on 
plot(lag,oo2.irfs.log_c_eps_a(:,[1: 100]),'--r','linewidth',2);


hold off
title('Consumption','fontsize',12)


subplot(3,2,3)
plot(lag,oo1.irfs.log_I_eps_a(:,[1: 100])','b','linewidth',2);
hold on 
plot(lag,oo2.irfs.log_I_eps_a(:,[1: 100]),'--r','linewidth',2);


hold off

title('Investment','fontsize',12)

subplot(3,2,4)
plot(lag,oo1.irfs.log_k_eps_a(:,[1: 100])','b','linewidth',2);
hold on 
plot(lag,oo2.irfs.log_k_eps_a(:,[1: 100]),'--r','linewidth',2);


hold off

title('Capital','fontsize',12)


subplot(3,2,5)
plot(lag,oo1.irfs.log_n_eps_a(:,[1: 100])','b','linewidth',2);
hold on 
plot(lag,oo2.irfs.log_n_eps_a(:,[1: 100]),'--r','linewidth',2);


hold off

title('Labour','fontsize',12)



subplot(3,2,6)
plot(lag,oo1.irfs.log_a_eps_a(:,[1: 100])','b','linewidth',2);
hold on 
plot(lag,oo2.irfs.log_a_eps_a(:,[1: 100]),'--r','linewidth',2);


hold off

title('TFP (A)','fontsize',12)