%La función step recibe como parámetros el numerados y demoninador
%ejemplo step(numerador, denominador)
%Anásis de la función de primer orden
%esta función H, es obtenida a partir del desarrollo algebraico 
%correspondiente

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                        %   
%       SISTEMA 1, LAZO ABIERTO                                          %  
%                                                                        %   
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
num = 3;
dem = [2,1]
sys1 = tf(num,dem);
[y,t] = step(sys1);
createfigure1(t,y,'Sistema 1, lazo abierto');
pause;
clf();

%Se grafica el diagrama de bode para la función de primer grado de lazo
%abierto

h = bodeplot(sys1);  %%Se opta por utilizar bodeplot, para poder obtener un handler
opt = getoptions(h); %%Se obtienen las opciones de la figura   
%%A contianuación se varían las opciones de la figura
% tales como el tamaño de las fuente y el título
opt.Title.String = 'Sistema 1, lazo abierto: diagrama de Bode';
opt.Title.FontSize = 20;
opt.XLabel.FontSize= 16;
opt.YLabel.FontSize= 16;
opt.Grid = 'on';
setoptions(h,opt);
pause;
clf();
close();

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                        %   
%       SISTEMA 1, LAZO CERRADO                                          %  
%                                                                        %   
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%%Se crea la función de transferencia para el lazo cerrado
[numC, demC] = cloop(num,dem);  %%Se Obtienen los numeradoes y denominadores de la función de transferencia de lazo cerrado
sys1C = tf(numC,demC);          %% Se obtiene el nuevo sistema con los parámetros obtenidos anteriormente
[y,t] = step(sys1C);            %% Se obtiene la respuesta al escalón
createfigure1(t,y,'Sistema 1, lazo cerrado');
pause;
clf();

%Se grafica el diagrama de bode para la función de primer grado con la
%transformación de lazo ceerado a abierto
h = bodeplot(sys1C);            
opt = getoptions(h);            
opt.Title.String = 'Sistema 1, lazo cerrado: diagrama de Bode';
opt.Title.FontSize = 20;
opt.XLabel.FontSize= 16;
opt.YLabel.FontSize= 16;
opt.Grid = 'on';
setoptions(h,opt);
pause;
clf();
close();


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                        %   
%       SISTEMA 2, LAZO ABIERTO                                          %  
%                                                                        %   
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Análisis para la función de segundo orden
%Se utilizan la funcion tf, para generar un objeto sistema en matlab

num2 = [2 8 1];
dem2 = [1 4 7];
sis2 = tf(num2,dem2);

[y,t] = step(sis2);
createfigure1(t,y,'Sistema 2, lazo abierto');
pause;
clf();

%Se grafica el diagrama de bode para la función de primer grado de lazo abierto

h = bodeplot(sis2);     %%Se opta por utilizar bodeplot, para poder obtener un handler
opt = getoptions(h);    %%Se obtienen las opciones de la figura   
%%A contianuación se varían las opciones de la figura
% tales como el tamaño de las fuente y el título
opt.Title.String = 'Sistema 2, lazo abierto: diagrama de Bode';
opt.Title.FontSize = 20;
opt.XLabel.FontSize= 16;
opt.YLabel.FontSize= 16;
opt.Grid = 'on';
setoptions(h,opt);
pause;
clf();
close();

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                        %   
%       SISTEMA 2, LAZO CERRADO                                          %  
%                                                                        %   
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%Se crea la función de transferencia para el lazo cerrado

[num2C, dem2C] = cloop(num2,dem2);  %%Se Obtienen los numeradoes y denominadores de la función de transferencia de lazo cerrado
sis2C = tf(num2C,dem2C);            %% Se obtiene el nuevo sistema con los parámetros obtenidos anteriormente
[y,t] = step(sis2C);                %% Se obtiene la respuesta al escalón
createfigure1(t,y,'Sistema 2, lazo cerrado');
pause;
clf();

%Se grafica el diagrama de bode para la función de primer grado con la
%transformación de lazo ceerado a abierto
h = bodeplot(sis2C);            
opt = getoptions(h);            
opt.Title.String = 'Sistema 2, lazo cerrado: diagrama de Bode';
opt.Title.FontSize = 20;
opt.XLabel.FontSize= 16;
opt.YLabel.FontSize= 16;
opt.Grid = 'on';
setoptions(h,opt);
pause;
clf();
close();

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                       %    
%       Sistema 3, LAZO ABIERTO                                         % 
%                                                                       %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

num3 = 1;
dem3 = [1,-1];
sis3 = tf(num3,dem3);
[y,t] = step(sis3);
createfigure1(t,y,'Sistema 3, lazo abierto');
pause;
clf();

%Se grafica el diagrama de bode para la función de primer grado de lazo
%abierto

h = bodeplot(sis3);             %%Se opta por utilizar bodeplot, para poder obtener un handler
opt = getoptions(h);            %%Se obtienen las opciones de la figura   
%%A contianuación se varían las opciones de la figura
% tales como el tamaño de las fuente y el título
opt.Title.String = 'Sistema 3, lazo abierto: diagrama de Bode';
opt.Title.FontSize = 20;
opt.XLabel.FontSize= 16;
opt.YLabel.FontSize= 16;
opt.Grid = 'on';
setoptions(h,opt);
pause;
clf();
close();

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                       %    
%       Sistema 3, LAZO CERRADO                                         % 
%                                                                       %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Se crea la función de transferencia para el lazo cerrado

[num3C, dem3C] = cloop(num3,dem3);  %%Se Obtienen los numeradoes y denominadores de la función de transferencia de lazo cerrado
sis3C = tf(num3C,dem3C);            %% Se obtiene el nuevo sistema con los parámetros obtenidos anteriormente
[y,t] = step(sis3C);                %% Se obtiene la respuesta al escalón
createfigure1(t,y,'Sistema 3, lazo cerrado');
pause;
clf();

%Se grafica el diagrama de bode para la función de primer grado con la
%transformación de lazo ceerado a abierto
h = bodeplot(sis3C);            
opt = getoptions(h);            
opt.Title.String = 'Sistema 3, lazo cerrado: diagrama de Bode';
opt.Title.FontSize = 20;
opt.XLabel.FontSize= 16;
opt.YLabel.FontSize= 16;
opt.Grid = 'on';
setoptions(h,opt);
pause;
clf();
close();

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                         %
%           Modelación de sistema                                         %
%                                                                         %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%Se procede a expresar cada numerador y cada denominador
%de los sub-sistemas que participan.
%Numerador y denominador de función de 1
num1 =[0 0 4 0];
dem1 =[0 10 0 4];

%Numerador y denominador de función de 2
num2 =[0 0 0 3];
dem2 =[0 0 6 16];

%Numerador y denominador de función de 3
num3 =[0 0 4 10];
dem3 =[4 9 5 0];

%Numerador y denominador de función de 4
num4 =[0 0 0 1];
dem4 =[0 0 7 10];

%Numerador y denominador de función de 5
num5 =[0 0 8 8];
dem5 =[1 2 3 0];

%Numerador y denominador de función de 6
num6 = [0 0 3 2];
dem6 = [0 5 7 10];
