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

# Position and Orientation in space
geometry_msgs/Pose position

# the current velocity (linear and angular) with respect to the world system in vehicle coordinates
geometry_msgs/Twist twist

# the current acceleration (linear and angular) with respect to the world system in vehicle coordinates
geometry_msgs/Accel acceleration
