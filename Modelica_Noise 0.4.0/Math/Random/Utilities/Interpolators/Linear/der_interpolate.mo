within Modelica_Noise.Math.Random.Utilities.Interpolators.Linear;
function der_interpolate
  extends Modelica.Icons.Function;
  input Real buffer[:] "Buffer of random numbers";
  input Real offset "Offset from buffer start (0..size(buffer)-1";
  input Real der_buffer[size(buffer,1)] "Derivatives of buffer values";
  input Real der_offset "Derivative of offset value";
  output Real der_y "Interpolated value at position offset";
protected
  Integer ind "Index of buffer element just before offset";
  Real der_y1 "Value of buffer element just before offset";
  Real der_y2 "Value of buffer element just after offset";
algorithm
  // For a general kernel based interpolation:
  // y   = sum( (K(-o)   * b[i])  )
  // y'  = sum( (K(-o)   * b[i])' )
  //     = sum(  K(-o)'  * b[i]        + K(o) * b[i]' )
  //     = sum( -dK/do*o'* b[i]        + K(o) * b[i]' )
  //     = sum( -dK/do   * b[i] ) * o'
  //     + sum(                          K(o) * b[i]' )

  // We need to interpolate only between two values
  ind    := integer(offset) + 1;
  der_y1 := der_buffer[ind];
  der_y2 := der_buffer[ind+1];
  der_y := (buffer[ind+1] - buffer[ind]) * der_offset
         +  der_y1 + (der_y2-der_y1)*(offset-ind+1);
end der_interpolate;