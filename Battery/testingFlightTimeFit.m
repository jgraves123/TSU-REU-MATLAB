function [fitresult, gof] = testingFlightTimeFit(pwr, time)
%CREATEFIT(PREDALLAVGPWR1,ALLSEC1)
%  Create a fit.
%
%  Data for 'untitled fit 1' fit:
%      X Input : pwr
%      Y Output: time
%  Output:
%      fitresult : a fit object representing the fit.
%      gof : structure with goodness-of fit info.
%
%  See also FIT, CFIT, SFIT.

%  Auto-generated by MATLAB on 07-Aug-2019 13:47:30


%% Fit: 'untitled fit 1'.
[xData, yData] = prepareCurveData( pwr, time );

% Set up fittype and options.
ft = fittype( 'rat11' );
opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
opts.Display = 'Off';
opts.Lower = [321.9 98770 29.3];
opts.StartPoint = [321.9 98770 29.3];
opts.Upper = [321.9 98770 29.3];

% Fit model to data.
[fitresult, gof] = fit( xData, yData, ft, opts );

% Plot fit with data.
figure( 'Name', 'untitled fit 1' );
h = plot( fitresult, xData, yData );
legend( h, 'Flight Time vs. Predicted Average Power', ['Testing Regression Fit',newline,'f(x) = (p1*x + p2) / (x + q1)',newline,'       p1 =       321.9',newline,'       p2 =        98770',newline,'       q1 =       29.3',newline,'R-Square; 0.908'], 'Location', 'NorthEast', 'Interpreter', 'none' );
% Label axes
xlabel( 'Predicted Average Power (W)', 'Interpreter', 'none' );
ylabel( 'Flight Time (s)', 'Interpreter', 'none' );
grid on


