/###############################################################################
# Copyright (c) 2018 TESIS GmbH
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v2.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v20.html
#
# Contributors:
#  Frederic Chucholowski (TESIS GmbH) - initial implementation
###############################################################################/

# gear constants
int32 GEAR_P=0
int32 GEAR_N=1
int32 GEAR_D=2
int32 GEAR_R=3


# intended accelerator pedal position [0-1]
float64 acceleratorPedal
# intended brake pedal position [0-1]
float64 brakePedal
# intended steering wheel position [(-1)-1]
float64 steeringWheel
# intended gear
int32 gear
