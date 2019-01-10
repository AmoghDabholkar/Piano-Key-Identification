plot(t,y);
title('DTMF Input');xlabel('Time');
ylabel('Amplitude');grid;

Fs = 8000;  % Sampling Frequency

Fstop1 = 370;         % First Stopband Frequency
Fpass1 = 420;         % First Passband Frequency
Fpass2 = 470;         % Second Passband Frequency
Fstop2 = 520;         % Second Stopband Frequency
Astop1 = 30;          % First Stopband Attenuation (dB)
Apass  = 1;           % Passband Ripple (dB)
Astop2 = 30;          % Second Stopband Attenuation (dB)
match  = 'passband';  % Band to match exactly

% Construct an FDESIGN object and call its CHEBY1 method.
h  = fdesign.bandpass(Fstop1, Fpass1, Fpass2, Fstop2, Astop1, Apass, ...
                      Astop2, Fs);
Hd = design(h, 'cheby1', 'MatchExactly', match);

out1 = filter(Hd,y);
h1=fft(out1);
len=length(h1);
hmag1=abs(h1(1:(len-1)/2));

Fstop1 = 800;         % First Stopband Frequency
Fpass1 = 850;         % First Passband Frequency
Fpass2 = 920;         % Second Passband Frequency
Fstop2 = 970;         % Second Stopband Frequency
Astop1 = 30;          % First Stopband Attenuation (dB)
Apass  = 1;           % Passband Ripple (dB)
Astop2 = 30;          % Second Stopband Attenuation (dB)
match  = 'passband';  % Band to match exactly

% Construct an FDESIGN object and call its CHEBY1 method.
h  = fdesign.bandpass(Fstop1, Fpass1, Fpass2, Fstop2, Astop1, Apass, ...
                      Astop2, Fs);
Hd = design(h, 'cheby1', 'MatchExactly', match);

out2 = filter(Hd,y);
h2=fft(out2);
len=length(h2);
hmag2=abs(h2(1:(len-1)/2));

Fstop1 = 1680;        % First Stopband Frequency
Fpass1 = 1730;        % First Passband Frequency
Fpass2 = 1800;        % Second Passband Frequency
Fstop2 = 1850;        % Second Stopband Frequency
Astop1 = 30;          % First Stopband Attenuation (dB)
Apass  = 1;           % Passband Ripple (dB)
Astop2 = 30;          % Second Stopband Attenuation (dB)
match  = 'passband';  % Band to match exactly

% Construct an FDESIGN object and call its CHEBY1 method.
h  = fdesign.bandpass(Fstop1, Fpass1, Fpass2, Fstop2, Astop1, Apass, ...
                      Astop2, Fs);
Hd = design(h, 'cheby1', 'MatchExactly', match);

out3 = filter(Hd,y);
h3=fft(out3);
len=length(h3);
hmag3=abs(h3(1:(len-1)/2));

Fstop1 = 3450;        % First Stopband Frequency
Fpass1 = 3500;        % First Passband Frequency
Fpass2 = 3550;        % Second Passband Frequency
Fstop2 = 3600;        % Second Stopband Frequency
Astop1 = 30;          % First Stopband Attenuation (dB)
Apass  = 1;           % Passband Ripple (dB)
Astop2 = 30;          % Second Stopband Attenuation (dB)
match  = 'passband';  % Band to match exactly

% Construct an FDESIGN object and call its CHEBY1 method.
h  = fdesign.bandpass(Fstop1, Fpass1, Fpass2, Fstop2, Astop1, Apass, ...
                      Astop2, Fs);
Hd = design(h, 'cheby1', 'MatchExactly', match);

out4 = filter(Hd,y);
h4=fft(out4);
len=length(h4);
hmag4=abs(h4(1:(len-1)/2));

m1=max(abs(hmag1));
m2=max(abs(hmag2));
m3=max(abs(hmag3));
m4=max(abs(hmag4));
m_arr=[m1 m2 m3 m4];
m=max(m_arr);

freq=(1:(len-1)/2);
if m==m1
prompt = 'The signal is the fourth harmonic(440Hz)';
fprintf('%s', prompt);
plot((freq)*fs/length(t),hmag1);

elseif m==m2
prompt = 'The signal is the fifth harmonic(880Hz)';
fprintf('%s', prompt);
plot((freq)*fs/length(t),hmag2);

elseif m==m3
prompt = 'The signal is the sixth harmonic(1760Hz)';
fprintf('%s', prompt);
plot((freq)*fs/length(t),hmag3);

elseif m==m4
prompt = 'The signal is the seventh harmonic(3520Hz)';
fprintf('%s', prompt);
plot((freq)*fs/length(t),hmag4);
end