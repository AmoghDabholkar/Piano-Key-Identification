t=(0:0.000125:.05);
fs=8000;
prompt = 'Enter 4 for fourth harmonic(440 Hz), Enter 5 for fifth harmonic(880 Hz), Enter 6 for sixth harmonic(1760 Hz), Enter 7 for seventh harmonic(3520 Hz)\nEnter a value and press enter';
x_in = input(prompt);
if x_in==4      %Generating 440Hz tone
    f1=440;
    y=sin(2*pi*f1*t);
    sound(y,fs)
    test;
elseif x_in==5      %Generating 880Hz tone
    f2=880;
    y=sin(2*pi*f2*t);
    sound(y,fs)
    test;
elseif x_in==6      %Generating 1760Hz tone
    f3=1760;
    y=sin(2*pi*f3*t);
    sound(y,fs)
    test;
elseif x_in==7      %Generating 3520Hz tone
    f4=3520;
    y=sin(2*pi*f4*t);
    sound(y,fs)
    test;
else
    prompt = 'Enter a value between 4 and 7';
end




    