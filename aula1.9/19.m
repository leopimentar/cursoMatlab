%% Apresentações gráficas
f = 2; % freq. do sinal
fs = 12*f; % freq. de amostragem
t = 0:(1/fs):2; % tempo
xa = sin(2*pi*f*t); % Seno
xb = cos(2*pi*f*t); % Cosseno
figure;
plot(t,xa,'b','linewidth',2);
hold on;
plot(t,xb,'r','linewidth',2);
xlabel('Tempo [s]');
ylabel('x(t)');
set(gca,'fontsize',18);grid on;

%% Chirp
f0 = 0.5; % freq. inicial
tn = 10; % tempo n
fn = 10; % freq. em tn
fs = 12*fn; % amostragem
t = 0:(1/fs):tn; % tempo
x = chirp(t,f0,tn,fn); % sinal
figure;
plot(t,x,'linewidth',2);
xlabel('Tempo [s]');
ylabel('x(t)');
set(gca,'fontsize',18);grid on;
sound(x)

%% noise
fs = 100; % amostragem
t = 0:(1/fs):10; % tempo
x1 = randn(size(t)); % aleatório
x2 = rand(size(t)); % aleatório
figure;
plot(t,x1,'linewidth',1);
hold on;
plot(t,x2,'r','linewidth',1);
xlabel('Tempo [s]');
ylabel('x(t)');
set(gca,'fontsize',18);grid on;

%% Seno com ruído
f1 = 2;fs = 20*f1;
t = 0:(1/fs):5;
x = 1*sin(2*pi*f1*t);
ruido = randn(size(t));
xr = x+ruido;
np = length(t);
freq = 0:(fs/np):(fs/2);
Xr = fft(xr)/round(np/2);
X = fft(x)/round(np/2);
figure;
plot(t,xr,'b','linewidth',2);hold on;
plot(t,x,'r','linewidth',2);xlabel('Tempo [s]');grid on;
ylabel('Sinal');legend('Com ruido','Sem ruido');
figure;
plot(freq(1:round(np/2)),abs(Xr(1:round(np/2))),'b','linewidth',2);hold
on;
plot(freq(1:round(np/2)),abs(X(1:round(np/2))),'r','linewidth',2);
xlabel('Frequência [Hz]');ylabel('Amlitude');xlim([0 20]);grid on;
legend('Com ruido','Sem ruido');

%% TCF
f0 = 0.5; % freq. inicial
tn = 10; % tempo n
fn = 20; % freq. em tn
fs = 120; % amostragem
t = 0:(1/fs):tn; % tempo
x = chirp(t,f0,tn,fn); % sinal
janela = 100;
overlap = 50;
spectrogram(x,janela,overlap,janela,fs,'yaxis');

%% Assovio
assovio = importdata('Whistle.wav')
x = assovio.data;
freq = assovio.fs;
janela = 1000;
overlap = 50;
spectrogram(x,janela,overlap,janela,freq,'yaxis');

%% Filtros
% Criação de sinal
fs = 48000;
t = 0:(1/fs):3;
x = sin(2*pi*500*t)+0.2*sin(2*pi*2000*t);

xf = filter(Hd_alta,x);

figure;
plot(t,x,'linewidth',2);hold on;
plot(t,xf,'r--','linewidth',2);xlim([0 0.01]);
xlabel('Tempo [s]');ylabel('x(t)');
legend('Original','Filtrado');

%% espectro gemidão

vet = load('autoVet.mat');
auxVet = vet.zap;

janela = 100;
overlap = 15;
spectrogram(auxVet.data(:,1),janela,overlap,janela,auxVet.fs,'yaxis');
