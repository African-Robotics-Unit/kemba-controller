filename = sprintf('logs/%s.mat', datestr(now,'yyyymmddTHHMMSS'));
save(filename,'logsOut')
