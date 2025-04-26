# Vending Machine
Vending Machine Controller circuit that accepts coins and products selection as input, and supplies equested product and cash balance.

Display cash balanceand product cost on a 4 digit 7 segment displays on the Basys3 FPGA board.

Implemented this sequential digital systems using FSM model because it must remember how much money has been inserted (keep track of states)

The vending machine controller currently has a coin-in mechanism that can accept nickels, dimes, and quarters.
Assume that a pulse is generated when a coin is entered. Buttons were used to imulate coins being inserted
Switches were used as inputs for product selection.
