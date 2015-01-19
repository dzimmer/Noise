within Modelica_Noise.Blocks.Examples.NoiseExamples;
model Distributions "Demonstrates noise with different types of distributions"
  extends Modelica.Icons.Example;
  inner Modelica_Noise.Blocks.Noise.GlobalSeed globalSeed(useAutomaticSeed=
        false) annotation (Placement(transformation(extent={{40,60},{60,80}})));
  Noise.EventBasedNoise uniformNoise(
samplePeriod=0.01,
y_min=-1,
y_max=3)
annotation (Placement(transformation(extent={{-60,20},{-40,40}})));
  Noise.EventBasedNoise normalNoise(
samplePeriod=0.01,
y_min=-1,
y_max=3,
redeclare function distribution =
    Modelica_Noise.Math.Random.TruncatedQuantiles.normal)
annotation (Placement(transformation(extent={{-60,-20},{-40,0}})));
  Noise.EventBasedNoise weibullNoise(
samplePeriod=0.01,
y_min=-1,
y_max=3,
redeclare function distribution =
    Modelica_Noise.Math.Random.TruncatedQuantiles.weibull)
annotation (Placement(transformation(extent={{-60,-60},{-40,-40}})));
  Statistics.ContinuousMean normalMean
annotation (Placement(transformation(extent={{-20,-20},{0,0}})));
equation
  connect(normalNoise.y, normalMean.u) annotation (Line(
  points={{-39,-10},{-22,-10}},
  color={0,0,127},
  smooth=Smooth.None));
 annotation (experiment(StopTime=2), Diagram(coordinateSystem(
          preserveAspectRatio=false, extent={{-100,-100},{100,100}}), graphics),
    __Dymola_experimentSetupOutput);
end Distributions;