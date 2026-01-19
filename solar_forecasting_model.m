T = readtable('solar_predictions.xlsx','VariableNamingRule','preserve');
time = (0:height(T)-1)' * 300;

temp_ts  = timeseries(T.("TEMP(°C)"), time);
hum_ts   = timeseries(T.("H(%)"), time);
volt_ts  = timeseries(T.("Ua(V)"), time);
curr_ts  = timeseries(T.("Ia(A)"), time);
power_ts = timeseries(T.("Actual_Power"), time);
pred_power_ts = timeseries(T.("Predicted_Power"), time);