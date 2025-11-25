model circuito_eu
  Modelica.Electrical.Analog.Sources.StepVoltage stepVoltage(V = 1, startTime = 0)  annotation(
    Placement(transformation(origin = {-82, 20}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Basic.Resistor R1(R = 4)  annotation(
    Placement(transformation(origin = {-38, 20}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Basic.Resistor R2(R = 7)  annotation(
    Placement(transformation(origin = {26, 20}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Basic.Capacitor capacitor(C = 1)  annotation(
    Placement(transformation(origin = {-10, -30}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Basic.Inductor inductor(L = 0.1)  annotation(
    Placement(transformation(origin = {66, 20}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Basic.Ground ground annotation(
    Placement(transformation(origin = {-28, -60}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Electrical.Analog.Sensors.VoltageSensor voltageSensor annotation(
    Placement(transformation(origin = {-16, -4}, extent = {{-10, -10}, {10, 10}})));
equation
  connect(stepVoltage.n, R1.p) annotation(
    Line(points = {{-72, 20}, {-48, 20}}, color = {0, 0, 255}));
  connect(R1.n, R2.p) annotation(
    Line(points = {{-28, 20}, {16, 20}}, color = {0, 0, 255}));
  connect(R2.n, inductor.p) annotation(
    Line(points = {{36, 20}, {56, 20}}, color = {0, 0, 255}));
  connect(voltageSensor.n, R1.n) annotation(
    Line(points = {{-6, -4}, {-6, 20}, {-28, 20}}, color = {0, 0, 255}));
  connect(capacitor.n, R1.n) annotation(
    Line(points = {{0, -30}, {0, 20}, {-28, 20}}, color = {0, 0, 255}));
  connect(voltageSensor.p, ground.p) annotation(
    Line(points = {{-26, -4}, {-28, -4}, {-28, -50}}, color = {0, 0, 255}));
  connect(capacitor.p, ground.p) annotation(
    Line(points = {{-20, -30}, {-28, -30}, {-28, -50}}, color = {0, 0, 255}));
  connect(stepVoltage.p, ground.p) annotation(
    Line(points = {{-92, 20}, {-92, -50}, {-28, -50}}, color = {0, 0, 255}));
  connect(inductor.n, ground.p) annotation(
    Line(points = {{76, 20}, {76, -50}, {-28, -50}}, color = {0, 0, 255}));
  annotation(
    uses(Modelica(version = "4.0.0")));
end circuito_eu;
