model Fdt
  Modelica.Blocks.Continuous.TransferFunction funciontransferencia(b = {0.1, 7}, a = {0.4, 28.1, 11})  annotation(
    Placement(transformation(origin = {0, 34}, extent = {{-10, -10}, {10, 10}})));
  Modelica.Blocks.Sources.Step step(height = 1, offset = 0, startTime = 0)  annotation(
    Placement(transformation(origin = {-48, 34}, extent = {{-10, -10}, {10, 10}})));
equation
  connect(step.y, funciontransferencia.u) annotation(
    Line(points = {{-36, 34}, {-12, 34}}, color = {0, 0, 127}));

annotation(
    uses(Modelica(version = "4.0.0")));
end Fdt;
