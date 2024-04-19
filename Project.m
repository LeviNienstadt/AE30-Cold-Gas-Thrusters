data = readtable(input("Please enter file name: ", 's'), ReadVariableNames=false);

time = seconds(data.Var1) - floor(minutes(data.Var1)) * 60;
time = time - time(1);

pressure = data.Var4;
thrust = data.Var6;
temperature = data.Var8;

figure(1);
hold("on");
plot(time, pressure, 'b-');
title("Pressure");
xlabel("Time (s)");
ylabel("Pressure (psi)");
legend({ "Pressure (psi)" }, "Location", "northeast");
hold("off");

figure(2);
hold("on");
plot(time, thrust, 'r-');
title("Thrust");
xlabel("Time (s)");
ylabel("Thrust (N)");
legend({ "Thrust (N)" }, "Location", "northeast");
hold("off");

figure(3);
hold("on");
plot(time, temperature, 'g-');
title("Temperature");
xlabel("Time (s)");
ylabel("Temperature (C)");
legend({ "Temperature (C)" }, "Location", "northeast");
hold("off");

figure(4);
hold("on");
plot(time, pressure, 'b-');
plot(time, thrust, 'r-');
plot(time, temperature, 'g-');
title("Pressure/Thrust/Temperature");
xlabel("Time (s)");
legend({ "Pressure (psi)", "Thrust (N)", "Temperature (C)" }, "Location", "east");
hold("off");
