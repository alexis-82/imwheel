#!/bin/bash

echo "Inserire un valore da 1 a 10: "
read value
rm ~/.imwheelrc 2> /dev/null

if [ ! -f ~/.imwheelrc ]
then

cat >~/.imwheelrc<<EOF
".*"
None,      Up,   Button4, $value 
None,      Down, Button5, $value
Control_L, Up,   Control_L|Button4
Control_L, Down, Control_L|Button5
Shift_L,   Up,   Shift_L|Button4
Shift_L,   Down, Shift_L|Button5
EOF

fi
