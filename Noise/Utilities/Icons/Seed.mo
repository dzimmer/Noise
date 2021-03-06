within Noise.Utilities.Icons;
partial function Seed "Icon for Seed"

annotation(Icon(graphics={
        Line(points={{0,-100},{0,100}},     color={0,0,0}),
        Polygon(
          points={{0,100},{-10,80},{10,80},{0,100}},
          lineColor={0,0,0},
          fillColor={0,0,0},
          fillPattern=FillPattern.Solid),
        Line(points={{-20,-80},{92,-80}},
                                        color={0,0,0}),
        Polygon(
          points={{92,-80},{72,-70},{72,-90},{92,-80}},
          lineColor={0,0,0},
          fillColor={0,0,0},
          fillPattern=FillPattern.Solid),
        Line(points={{0,70},{90,70}},   color={0,0,0}),
        Line(points={{-96,24},{-10,-20}},
                                        color={0,0,0}),
        Polygon(
          points={{0,-24},{-16,-8},{-22,-24},{0,-24}},
          lineColor={0,0,0},
          fillColor={0,0,0},
          fillPattern=FillPattern.Solid),
        Ellipse(
          extent={{-2,-22},{2,-26}},
          pattern=LinePattern.None,
          fillPattern=FillPattern.Solid,
          fillColor={255,0,0},
          lineColor={0,0,0}),
        Line(
          points={{0,-24},{80,-24}},
          color={255,0,0}),
        Rectangle(
          lineColor={255,128,0},
          extent={{-100,-100},{100,100}},
          radius=25)}),       Documentation(revisions="<html>
<p><img src=\"modelica://Noise/Resources/Images/dlr_logo.png\"/> <b>Developed 2014 at the DLR Institute of System Dynamics and Control</b> </p>
</html>"));
end Seed;
