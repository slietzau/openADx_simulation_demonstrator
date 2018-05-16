###############################################################################
# Copyright (c) 2018 TESIS GmbH
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v2.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v20.html
#
# Contributors:
#  Frederic Chucholowski (TESIS GmbH) - initial implementation
#  Stefan Lietzau (TESIS GmbH) - Create ROS2 compatible package
###############################################################################

# ###############################################################################
# constants

# don't change the gear
int32 GEAR_KEEP=-1
# parking gear
int32 GEAR_PARK=0
# neutral gear
int32 GEAR_NEUTRAL=1
# drive gear
int32 GEAR_DRIVE=2
# reversing gear
int32 GEAR_REVERSE=3


# intended accelerator pedal position [0, 1]
float64 accelerator_pedal
# intended brake pedal position [0, 1]
float64 brake_pedal
# intended steering wheel position [-1, 1]
float64 steering_wheel
# intended gear
int32 gear
