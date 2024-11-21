%% Low Shelf

K = 0.013091;   % 100Hz Bandwidth
V = 0.33352;    % +5dB
V = -0.43768;    % -10dB
V = -0.82218;    % -30dB
Cm = 0.707;

a0 = 1 + 2*K*Cm + K^2
a1 = 2*K^2 - 2
a2 = 1 - 2*K*Cm + K^2

b0 = K^2*(V^2 + 2*V +1) + 2*K*Cm*(V+1) + 1
b1 = 2*K^2*(V^2 + 2*V +1) -2
b2 = K^2*(V^2 + 2*V +1) - 2*K*Cm*(V+1) + 1

ts = 1/48000;
z = tf('z',ts);

ls = (b0 + b1*z^(-1) + b2*z^(-2))/(a0 + a1*z^(-1) + a2*z^(-2))
bp = bodeplot(ls);
bp.FrequencyUnit = "Hz";
bp.PhaseVisible = "off";

%%  High Shelf

K = 2.4142;     % 18kHz Bandwidth
V = 0.77828;    % +10dB
V = 0.33352;    % +5dB
%%V = 0.18848;     % +3dB
V = -0.25011;   % -5dB
V = -0.43768;    % -10dB
%%V = -0.77617;    % -26dB
%%V = 0;   % 0dB
Cm = 0.707;

a0 = 1 + 2*K*Cm + K^2
a1 = 2*K^2 - 2
a2 = 1 - 2*K*Cm + K^2

b0 = 1 + K^2*(V^2 + 2*V +1) + (V+1)*2*K*Cm
b1 = 2*K^2*(V^2 + 2*V +1) -2
b2 = K^2*(V^2 + 2*V +1) -2*K*Cm*(V+1) +1

hs = (b0 + b1*(-z)^(-1) + b2*(-z)^(-2))/(a0 + a1*(-z)^(-1) + a2*(-z)^(-2))
bp = bodeplot(hs);
bp.FrequencyUnit = "Hz";
bp.PhaseVisible = "off";

%% Band Shelf

K = 0.013091;   % 100Hz Bandwidth
V = -0.25011;   % -5dB
V = 0.33352;    % +5dB
%%V = -0.15863;   % -3dB
%%V = 3.46683;    % +26dB
Cm = 0.707;

a0 = 1 + 2*K*Cm + K^2
a1 = 2*K^2 - 2
a2 = 1 - 2*K*Cm + K^2

b0 = 1 + K^2*(V^2 + 2*V +1) + (V+1)*2*K*Cm
b1 = 2*K^2*(V^2 + 2*V +1) -2
b2 = K^2*(V^2 + 2*V +1) -2*K*Cm*(V+1) +1

ts = 1/48000;
z = tf('z',ts);

ls2 = (b0 + b1*z^(-1) + b2*z^(-2))/(a0 + a1*z^(-1) + a2*z^(-2))
bp = bodeplot(ls2);
bp.FrequencyUnit = "Hz";
bp.PhaseVisible = "off";


K = 2.4142;     % 18kHz Bandwidth
Cm = 0.707;

a0 = 1 + 2*K*Cm + K^2
a1 = 2*K^2 - 2
a2 = 1 - 2*K*Cm + K^2

b0 = 1 + K^2*(V^2 + 2*V +1) + (V+1)*2*K*Cm
b1 = 2*K^2*(V^2 + 2*V +1) -2
b2 = K^2*(V^2 + 2*V +1) -2*K*Cm*(V+1) +1

hs2 = (b0 + b1*(-z)^(-1) + b2*(-z)^(-2))/(a0 + a1*(-z)^(-1) + a2*(-z)^(-2))
bp = bodeplot(hs2);
bp.FrequencyUnit = "Hz";
bp.PhaseVisible = "off";

ts = 1/48000;
z = tf('z',ts);

ap = 1.7783*z^(0); %5
ap = 1.4125*z^(0); %3
ap = 0.5623*z^(0); %-5
%%ap = 0.0501*z^(0); %-26
bp = bodeplot(ap);
bp.FrequencyUnit = "Hz";
bp.PhaseVisible = "off";

bs = ls2 * hs2 *ap;
bp = bodeplot(bs);
bp.FrequencyUnit = "Hz";
bp.PhaseVisible = "off";

%% Cascade Low & High

cas = ls * hs;
bp = bodeplot(cas);
bp.FrequencyUnit = "Hz";
bp.PhaseVisible = "off";

%% Cascade Low & Band & High

cas = ls * bs * hs;
bp = bodeplot(cas)
bp.FrequencyUnit = "Hz";
bp.PhaseVisible = "off";

%% Low Shelf 6de orde

K = 0.013091;   % 100Hz Bandwidth
V = 0.100696;    % +5dB
%%V = -0.17461;    % -10dB
%%V = -0.43768;    % -30dB

% Filter 1
Cm = 0.258819;

a0 = 1 + 2*K*Cm + K^2
a1 = 2*K^2 - 2
a2 = 1 - 2*K*Cm + K^2
b0 = K^2*(V^2 + 2*V +1) + 2*K*Cm*(V+1) + 1
b1 = 2*K^2*(V^2 + 2*V +1) -2
b2 = K^2*(V^2 + 2*V +1) - 2*K*Cm*(V+1) + 1

ts = 1/48000;
z = tf('z',ts);
ls1 = (b0 + b1*z^(-1) + b2*z^(-2))/(a0 + a1*z^(-1) + a2*z^(-2))

% Filter 2
Cm = 0.707;

a0 = 1 + 2*K*Cm + K^2
a1 = 2*K^2 - 2
a2 = 1 - 2*K*Cm + K^2
b0 = K^2*(V^2 + 2*V +1) + 2*K*Cm*(V+1) + 1
b1 = 2*K^2*(V^2 + 2*V +1) -2
b2 = K^2*(V^2 + 2*V +1) - 2*K*Cm*(V+1) + 1

ts = 1/48000;
z = tf('z',ts);
ls2 = (b0 + b1*z^(-1) + b2*z^(-2))/(a0 + a1*z^(-1) + a2*z^(-2))

% Filter 3
Cm = 0.965926;

a0 = 1 + 2*K*Cm + K^2
a1 = 2*K^2 - 2
a2 = 1 - 2*K*Cm + K^2
b0 = K^2*(V^2 + 2*V +1) + 2*K*Cm*(V+1) + 1
b1 = 2*K^2*(V^2 + 2*V +1) -2
b2 = K^2*(V^2 + 2*V +1) - 2*K*Cm*(V+1) + 1

ts = 1/48000;
z = tf('z',ts);
ls3 = (b0 + b1*z^(-1) + b2*z^(-2))/(a0 + a1*z^(-1) + a2*z^(-2))

ls6 = ls1 * ls2 * ls3
bp = bodeplot(ls6);
bp.FrequencyUnit = "Hz";
bp.PhaseVisible = "off";

%% High Shelf 6de orde

K = 2.4142;     % 18kHz Bandwidth
V = 0.100696;    % +5dB
%%V = -0.17461;    % -10dB
%%V = -0.43768;    % -30dB

% Filter 1
Cm = 0.258819;

a0 = 1 + 2*K*Cm + K^2
a1 = 2*K^2 - 2
a2 = 1 - 2*K*Cm + K^2
b0 = K^2*(V^2 + 2*V +1) + 2*K*Cm*(V+1) + 1
b1 = 2*K^2*(V^2 + 2*V +1) -2
b2 = K^2*(V^2 + 2*V +1) - 2*K*Cm*(V+1) + 1

ts = 1/48000;
z = tf('z',ts);
hs1 = (b0 + b1*(-z)^(-1) + b2*(-z)^(-2))/(a0 + a1*(-z)^(-1) + a2*(-z)^(-2))

% Filter 2
Cm = 0.707;

a0 = 1 + 2*K*Cm + K^2
a1 = 2*K^2 - 2
a2 = 1 - 2*K*Cm + K^2
b0 = K^2*(V^2 + 2*V +1) + 2*K*Cm*(V+1) + 1
b1 = 2*K^2*(V^2 + 2*V +1) -2
b2 = K^2*(V^2 + 2*V +1) - 2*K*Cm*(V+1) + 1

ts = 1/48000;
z = tf('z',ts);
hs2 = (b0 + b1*(-z)^(-1) + b2*(-z)^(-2))/(a0 + a1*(-z)^(-1) + a2*(-z)^(-2))

% Filter 3
Cm = 0.965926;

a0 = 1 + 2*K*Cm + K^2
a1 = 2*K^2 - 2
a2 = 1 - 2*K*Cm + K^2
b0 = K^2*(V^2 + 2*V +1) + 2*K*Cm*(V+1) + 1
b1 = 2*K^2*(V^2 + 2*V +1) -2
b2 = K^2*(V^2 + 2*V +1) - 2*K*Cm*(V+1) + 1

ts = 1/48000;
z = tf('z',ts);
hs3 = (b0 + b1*(-z)^(-1) + b2*(-z)^(-2))/(a0 + a1*(-z)^(-1) + a2*(-z)^(-2))

hs6 = hs1 * hs2 * hs3
bp = bodeplot(hs6);
bp.FrequencyUnit = "Hz";
bp.PhaseVisible = "off";

%% Cascade Low & High

cas = ls6 * hs6;
bp = bodeplot(cas);
bp.FrequencyUnit = "Hz";
bp.PhaseVisible = "off";

%% Band Shelf 12de orde

K = 0.013091;   % 100Hz Bandwidth
V = 0.100696;    % +5dB
%%V = -0.17461;    % -10dB
%%V = -0.43768;    % -30dB
V = 0.6469; %+26dB
V = 0.2115; %+10dB

% Filter 1
Cm = 0.258819;

a0 = 1 + 2*K*Cm + K^2
a1 = 2*K^2 - 2
a2 = 1 - 2*K*Cm + K^2
b0 = K^2*(V^2 + 2*V +1) + 2*K*Cm*(V+1) + 1
b1 = 2*K^2*(V^2 + 2*V +1) -2
b2 = K^2*(V^2 + 2*V +1) - 2*K*Cm*(V+1) + 1

ts = 1/48000;
z = tf('z',ts);
bs1 = (b0 + b1*z^(-1) + b2*z^(-2))/(a0 + a1*z^(-1) + a2*z^(-2))

% Filter 2
Cm = 0.707;

a0 = 1 + 2*K*Cm + K^2
a1 = 2*K^2 - 2
a2 = 1 - 2*K*Cm + K^2
b0 = K^2*(V^2 + 2*V +1) + 2*K*Cm*(V+1) + 1
b1 = 2*K^2*(V^2 + 2*V +1) -2
b2 = K^2*(V^2 + 2*V +1) - 2*K*Cm*(V+1) + 1

ts = 1/48000;
z = tf('z',ts);
bs2 = (b0 + b1*z^(-1) + b2*z^(-2))/(a0 + a1*z^(-1) + a2*z^(-2))

% Filter 3
Cm = 0.965926;

a0 = 1 + 2*K*Cm + K^2
a1 = 2*K^2 - 2
a2 = 1 - 2*K*Cm + K^2
b0 = K^2*(V^2 + 2*V +1) + 2*K*Cm*(V+1) + 1
b1 = 2*K^2*(V^2 + 2*V +1) -2
b2 = K^2*(V^2 + 2*V +1) - 2*K*Cm*(V+1) + 1

ts = 1/48000;
z = tf('z',ts);
bs3 = (b0 + b1*z^(-1) + b2*z^(-2))/(a0 + a1*z^(-1) + a2*z^(-2))


K = 2.4142;     % 18kHz Bandwidth

% Filter 4
Cm = 0.258819;

a0 = 1 + 2*K*Cm + K^2
a1 = 2*K^2 - 2
a2 = 1 - 2*K*Cm + K^2
b0 = K^2*(V^2 + 2*V +1) + 2*K*Cm*(V+1) + 1
b1 = 2*K^2*(V^2 + 2*V +1) -2
b2 = K^2*(V^2 + 2*V +1) - 2*K*Cm*(V+1) + 1

ts = 1/48000;
z = tf('z',ts);
bs4 = (b0 + b1*(-z)^(-1) + b2*(-z)^(-2))/(a0 + a1*(-z)^(-1) + a2*(-z)^(-2))

% Filter 5
Cm = 0.707;

a0 = 1 + 2*K*Cm + K^2
a1 = 2*K^2 - 2
a2 = 1 - 2*K*Cm + K^2
b0 = K^2*(V^2 + 2*V +1) + 2*K*Cm*(V+1) + 1
b1 = 2*K^2*(V^2 + 2*V +1) -2
b2 = K^2*(V^2 + 2*V +1) - 2*K*Cm*(V+1) + 1

ts = 1/48000;
z = tf('z',ts);
bs5 = (b0 + b1*(-z)^(-1) + b2*(-z)^(-2))/(a0 + a1*(-z)^(-1) + a2*(-z)^(-2))

% Filter 6
Cm = 0.965926;

a0 = 1 + 2*K*Cm + K^2
a1 = 2*K^2 - 2
a2 = 1 - 2*K*Cm + K^2
b0 = K^2*(V^2 + 2*V +1) + 2*K*Cm*(V+1) + 1
b1 = 2*K^2*(V^2 + 2*V +1) -2
b2 = K^2*(V^2 + 2*V +1) - 2*K*Cm*(V+1) + 1

ts = 1/48000;
z = tf('z',ts);
bs6 = (b0 + b1*(-z)^(-1) + b2*(-z)^(-2))/(a0 + a1*(-z)^(-1) + a2*(-z)^(-2))

bs12 = bs1 * bs2 * bs3 * bs4* bs5 * bs6
bp = bodeplot(hs6);
bp.FrequencyUnit = "Hz";
bp.PhaseVisible = "off";

ap = 1.7783*z^(0); %5
ap = 1.4125*z^(0); %3
ap = 0.5623*z^(0); %-5
ap = 0.0501*z^(0); %-26
ap = 0.3162*z^(0); %-10

bs12 = bs12 * ap;
bp = bodeplot(bs12);
bp.FrequencyUnit = "Hz";
bp.PhaseVisible = "off";

% 0.549/0.5012 = 1.09537







%% Low Shelf 4de orde

K = 0.013091;   % 100Hz Bandwidth
V = 0.154782;    % +5dB
%%V = -0.250106;    % -10dB
%%V = -0.578303;    % -30dB

% Filter 1
Cm = 0.382683;

a0 = 1 + 2*K*Cm + K^2
a1 = 2*K^2 - 2
a2 = 1 - 2*K*Cm + K^2
b0 = K^2*(V^2 + 2*V +1) + 2*K*Cm*(V+1) + 1
b1 = 2*K^2*(V^2 + 2*V +1) -2
b2 = K^2*(V^2 + 2*V +1) - 2*K*Cm*(V+1) + 1

ts = 1/48000;
z = tf('z',ts);
ls1 = (b0 + b1*z^(-1) + b2*z^(-2))/(a0 + a1*z^(-1) + a2*z^(-2))

% Filter 2
Cm = 0.92388;

a0 = 1 + 2*K*Cm + K^2
a1 = 2*K^2 - 2
a2 = 1 - 2*K*Cm + K^2
b0 = K^2*(V^2 + 2*V +1) + 2*K*Cm*(V+1) + 1
b1 = 2*K^2*(V^2 + 2*V +1) -2
b2 = K^2*(V^2 + 2*V +1) - 2*K*Cm*(V+1) + 1

ts = 1/48000;
z = tf('z',ts);
ls2 = (b0 + b1*z^(-1) + b2*z^(-2))/(a0 + a1*z^(-1) + a2*z^(-2))

ls4 = ls1 * ls2
bp = bodeplot(ls2);
bp.FrequencyUnit = "Hz";
bp.PhaseVisible = "off";

%% High Shelf 4de orde

K = 2.4142;     % 18kHz Bandwidth
V = 0.154782;    % +5dB
%%V = -0.250106;    % -10dB
%%V = -0.578303;    % -30dB

% Filter 1
Cm = 0.382683;

a0 = 1 + 2*K*Cm + K^2
a1 = 2*K^2 - 2
a2 = 1 - 2*K*Cm + K^2
b0 = K^2*(V^2 + 2*V +1) + 2*K*Cm*(V+1) + 1
b1 = 2*K^2*(V^2 + 2*V +1) -2
b2 = K^2*(V^2 + 2*V +1) - 2*K*Cm*(V+1) + 1

ts = 1/48000;
z = tf('z',ts);
hs1 = (b0 + b1*(-z)^(-1) + b2*(-z)^(-2))/(a0 + a1*(-z)^(-1) + a2*(-z)^(-2))

% Filter 2
Cm = 0.92388;

a0 = 1 + 2*K*Cm + K^2
a1 = 2*K^2 - 2
a2 = 1 - 2*K*Cm + K^2
b0 = K^2*(V^2 + 2*V +1) + 2*K*Cm*(V+1) + 1
b1 = 2*K^2*(V^2 + 2*V +1) -2
b2 = K^2*(V^2 + 2*V +1) - 2*K*Cm*(V+1) + 1

ts = 1/48000;
z = tf('z',ts);
hs2 = (b0 + b1*(-z)^(-1) + b2*(-z)^(-2))/(a0 + a1*(-z)^(-1) + a2*(-z)^(-2))

hs4 = hs1 * hs2
bp = bodeplot(hs4);
bp.FrequencyUnit = "Hz";
bp.PhaseVisible = "off";

%% Cascade Low & High

cas = ls4 * hs4;
bp = bodeplot(cas);
bp.FrequencyUnit = "Hz";
bp.PhaseVisible = "off";

%% Band Shelf 8de orde

K = 0.013091;   % 100Hz Bandwidth
V = 0.154782;    % +5dB
%%V = -0.250106;    % -10dB
%%V = -0.578303;    % -30dB
V = 1.11349; %+26dB
V = 0.333521; %+10dB

% Filter 1
Cm = 0.382683;

a0 = 1 + 2*K*Cm + K^2
a1 = 2*K^2 - 2
a2 = 1 - 2*K*Cm + K^2
b0 = K^2*(V^2 + 2*V +1) + 2*K*Cm*(V+1) + 1
b1 = 2*K^2*(V^2 + 2*V +1) -2
b2 = K^2*(V^2 + 2*V +1) - 2*K*Cm*(V+1) + 1

ts = 1/48000;
z = tf('z',ts);
bs1 = (b0 + b1*z^(-1) + b2*z^(-2))/(a0 + a1*z^(-1) + a2*z^(-2))

% Filter 2
Cm = 0.92388;

a0 = 1 + 2*K*Cm + K^2
a1 = 2*K^2 - 2
a2 = 1 - 2*K*Cm + K^2
b0 = K^2*(V^2 + 2*V +1) + 2*K*Cm*(V+1) + 1
b1 = 2*K^2*(V^2 + 2*V +1) -2
b2 = K^2*(V^2 + 2*V +1) - 2*K*Cm*(V+1) + 1

ts = 1/48000;
z = tf('z',ts);
bs2 = (b0 + b1*z^(-1) + b2*z^(-2))/(a0 + a1*z^(-1) + a2*z^(-2))


K = 2.4142;     % 18kHz Bandwidth

% Filter 3
Cm = 0.382683;

a0 = 1 + 2*K*Cm + K^2
a1 = 2*K^2 - 2
a2 = 1 - 2*K*Cm + K^2
b0 = K^2*(V^2 + 2*V +1) + 2*K*Cm*(V+1) + 1
b1 = 2*K^2*(V^2 + 2*V +1) -2
b2 = K^2*(V^2 + 2*V +1) - 2*K*Cm*(V+1) + 1

ts = 1/48000;
z = tf('z',ts);
bs3 = (b0 + b1*(-z)^(-1) + b2*(-z)^(-2))/(a0 + a1*(-z)^(-1) + a2*(-z)^(-2))

% Filter 4
Cm = 0.92388;

a0 = 1 + 2*K*Cm + K^2
a1 = 2*K^2 - 2
a2 = 1 - 2*K*Cm + K^2
b0 = K^2*(V^2 + 2*V +1) + 2*K*Cm*(V+1) + 1
b1 = 2*K^2*(V^2 + 2*V +1) -2
b2 = K^2*(V^2 + 2*V +1) - 2*K*Cm*(V+1) + 1

ts = 1/48000;
z = tf('z',ts);
bs4 = (b0 + b1*(-z)^(-1) + b2*(-z)^(-2))/(a0 + a1*(-z)^(-1) + a2*(-z)^(-2))


bs8 = bs1 * bs2 * bs3 * bs4
bp = bodeplot(bs8);
bp.FrequencyUnit = "Hz";
bp.PhaseVisible = "off";

ap = 1.7783*z^(0); %5
ap = 1.4125*z^(0); %3
ap = 0.5623*z^(0); %-5
ap = 0.0501*z^(0); %-26
ap = 0.3162*z^(0); %-10

bs8 = bs8 * ap;
bp = bodeplot(bs8);
bp.FrequencyUnit = "Hz";
bp.PhaseVisible = "off";

% 0.549/0.5012 = 1.09537