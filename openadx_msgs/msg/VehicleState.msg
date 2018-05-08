################################################################################
# Copyright (c) 2018 TESIS GmbH
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v2.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v20.html
#
# Contributors:
#  Frederic Chucholowski (TESIS GmbH) - initial implementation
###############################################################################

# the current x-,y- and z-position of the vehicle reference point in the world system
# the vehicle reference point is located at the center of the front axle
Vector3 position

# the current velocity with respect to the world system in vehicle coordinates
Vector3 velocity

# the current acceleration with respect to the world system in vehicle coordinates
Vector3 acceleration

# the current yaw angle [rad]
float64 yawAngle
# the current pitch angle [rad]
float64 pitchAngle
# the current roll angle [rad]
float64 rollAngle

# the current yaw rate [rad/s]
float64 yawRate
# the current pitch rate [rad/s]
float64 pitchRate
# the current roll rate [rad/s]
float64 rollRate