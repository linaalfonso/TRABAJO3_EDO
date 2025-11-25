model circuito_s2
  Modelica.Electrical.Analog.Sources.StepVoltage stepVoltage(V = 7, startTime = 10) annotation(
    Placement(transformation(origin = {-67, -26}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Basic.Resistor R1(R = 4) annotation(
    Placement(transformation(origin = {-25, 30}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Basic.Resistor R2(R = 7) annotation(
    Placement(transformation(origin = {39, 30}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Basic.Capacitor capacitor(C = 1) annotation(
    Placement(transformation(origin = {3, -14}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Basic.Inductor inductor(L = 0.1) annotation(
    Placement(transformation(origin = {79, 30}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Basic.Ground ground annotation(
    Placement(transformation(origin = {-15, -50}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Sensors.VoltageSensor voltageSensor annotation(
    Placement(transformation(origin = {9, 8}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Sources.StepVoltage stepVoltage1(V = 7, startTime = 20)  annotation(
    Placement(transformation(origin = {-68, 0}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Sources.StepVoltage stepVoltage2(V = 14, startTime = 30)  annotation(
    Placement(transformation(origin = {-68, 20}, extent = {{-10, -10}, {10, 10}})));
equation
  connect(R1.n, R2.p) annotation(
    Line(points = {{-15, 30}, {29, 30}}, color = {0, 0, 255}));
  connect(R2.n, inductor.p) annotation(
    Line(points = {{49, 30}, {69, 30}}, color = {0, 0, 255}));
  connect(inductor.n, ground.p) annotation(
    Line(points = {{89, 30}, {89, -40}, {-15, -40}}, color = {0, 0, 255}));
  connect(stepVoltage.n, ground.p) annotation(
    Line(points = {{-57, -26}, {-57, -40}, {-14, -40}}, color = {0, 0, 255}));
  connect(stepVoltage.p, stepVoltage1.n) annotation(
    Line(points = {{-76, -26}, {-78, -26}, {-78, -12}, {-58, -12}, {-58, 0}}, color = {0, 0, 255}));
  connect(stepVoltage1.p, stepVoltage2.n) annotation(
    Line(points = {{-78, 0}, {-78, 10}, {-58, 10}, {-58, 20}}, color = {0, 0, 255}));
  connect(stepVoltage2.p, R1.p) annotation(
    Line(points = {{-78, 20}, {-80, 20}, {-80, 30}, {-34, 30}}, color = {0, 0, 255}));
  connect(voltageSensor.p, R1.n) annotation(
    Line(points = {{0, 8}, {-2, 8}, {-2, 30}, {-14, 30}}, color = {0, 0, 255}));
  connect(capacitor.p, R1.n) annotation(
    Line(points = {{-6, -14}, {-8, -14}, {-8, 30}, {-14, 30}}, color = {0, 0, 255}));
  connect(capacitor.n, ground.p) annotation(
    Line(points = {{14, -14}, {14, -40}, {-14, -40}}, color = {0, 0, 255}));
  connect(voltageSensor.n, ground.p) annotation(
    Line(points = {{20, 8}, {20, -40}, {-14, -40}}, color = {0, 0, 255}));
  annotation(
    uses(Modelica(version = "4.0.0")));
end circuito_s2;
