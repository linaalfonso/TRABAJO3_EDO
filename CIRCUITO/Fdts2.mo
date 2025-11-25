model Fdts2
  Modelica.Blocks.Continuous.TransferFunction fdt(b = {0.1, 7}, a = {0.4, 28.1, 11})  annotation(
    Placement(transformation(origin = {54, 0}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.Step step(height = 7, offset = 0, startTime = 10)  annotation(
    Placement(transformation(origin = {-58, 40}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.Step step1(height = 7, offset = 0, startTime = 20)  annotation(
    Placement(transformation(origin = {-58, 0}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.Step step2(height = 14, offset = 0, startTime = 30)  annotation(
    Placement(transformation(origin = {-58, -40}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Math.Add3 add3 annotation(
    Placement(transformation(origin = {2, 0}, extent = {{-10, -10}, {10, 10}})));
equation
  connect(step.y, add3.u1) annotation(
    Line(points = {{-46, 40}, {-28, 40}, {-28, 8}, {-10, 8}}, color = {0, 0, 127}));
  connect(step1.y, add3.u2) annotation(
    Line(points = {{-46, 0}, {-10, 0}}, color = {0, 0, 127}));
  connect(step2.y, add3.u3) annotation(
    Line(points = {{-46, -40}, {-28, -40}, {-28, -8}, {-10, -8}}, color = {0, 0, 127}));
  connect(add3.y, fdt.u) annotation(
    Line(points = {{14, 0}, {42, 0}}, color = {0, 0, 127}));

annotation(
    uses(Modelica(version = "4.0.0")));
end Fdts2;
