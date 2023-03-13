traj = readtable('traj.csv');

Traj.duration = traj.time(end);

t0 = 7; % when motors stiffen
Kp = 200; % 30,200
Kd = 3; % 3,3

% right motor cmd
Traj.right_motor.q = timeseries(traj.qm_f, traj.time);
Traj.right_motor.w = timeseries(traj.wm_f, traj.time);
Traj.right_motor.Kp = append(timeseries(30, traj.time(traj.time<=t0)), timeseries(Kp, traj.time(traj.time>t0)));
Traj.right_motor.Kd = append(timeseries(3, traj.time(traj.time<=t0)), timeseries(Kd, traj.time(traj.time>t0)));
Traj.right_motor.tff = timeseries(traj.tm_f, traj.time);

% left motor cmd
Traj.left_motor.q = timeseries(traj.qm_b, traj.time);
Traj.left_motor.w = timeseries(traj.wm_b, traj.time);
Traj.left_motor.Kp = append(timeseries(30, traj.time(traj.time<=t0)), timeseries(Kp, traj.time(traj.time>t0)));
Traj.left_motor.Kd = append(timeseries(3, traj.time(traj.time<=t0)), timeseries(Kd, traj.time(traj.time>t0)));
Traj.left_motor.tff = timeseries(traj.tm_b, traj.time);

% % test safely
% Traj.right_motor.Kp = append(timeseries(0, traj.time(traj.time<=t0)), timeseries(0, traj.time(traj.time>t0)));
% Traj.right_motor.Kd = append(timeseries(0, traj.time(traj.time<=t0)), timeseries(0, traj.time(traj.time>t0)));
% Traj.right_motor.tff = timeseries(0, traj.time);
% Traj.left_motor.Kp = append(timeseries(0, traj.time(traj.time<=t0)), timeseries(0, traj.time(traj.time>t0)));
% Traj.left_motor.Kd = append(timeseries(0, traj.time(traj.time<=t0)), timeseries(0, traj.time(traj.time>t0)));
% Traj.left_motor.tff = timeseries(0, traj.time);

% right piston cmd
Traj.right_piston.ue = timeseries(traj.ue_f, traj.time);
Traj.right_piston.ur = timeseries(traj.ur_f, traj.time);

% left piston cmd
Traj.left_piston.ue = timeseries(traj.ue_b, traj.time);
Traj.left_piston.ur = timeseries(traj.ur_b, traj.time);
