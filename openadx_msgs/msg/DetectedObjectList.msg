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

std_msgs/Header header
# ID of the sensor
int16 id
# list of detected objects
DetectedObject[] objects
