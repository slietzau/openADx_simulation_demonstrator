import sys

import rclpy
from rclpy.node import Node

#from std_msgs.msg import String
from openadx_msgs.msg import (DetectedObjectList, VehicleControl)

LANE_WIDTH = 2
BRAKE_DISTANCE = 30


class DemoNode(Node):
    def __init__(self):
        super().__init__('demo')
        self.sub = self.create_subscription(
            DetectedObjectList, 'vehicle/objects', self.object_callback)
        self.control = self.create_publisher(VehicleControl, 'vehicle/control')

    def object_callback(self, msg):
        log = self.get_logger().info
        log('Received a message')
        log('ID: {}'.format(msg.id))
        log('length: {}'.format(len(msg.objects)))
        for obj in msg.objects:
            log('{}'.format(obj))
            if self.object_in_path(obj):
                self.send_brake_message()
                break

    def send_brake_message(self):
        self.control.publish(
            VehicleControl(
                accelerator_pedal=0.0,
                brake_pedal=1.0,
                steering_wheel=0.0,
                gear=VehicleControl.GEAR_KEEP))

    def object_in_path(self, obj):
        if (abs(obj.y) < LANE_WIDTH) and (obj.x < BRAKE_DISTANCE):
            return True
        return False


def main(args=None):
    if args is None:
        args = sys.argv

    rclpy.init(args=args)

    node = DemoNode()
    rclpy.spin(node)

    node.destroy_node()
    rclpy.shutdown()


if __name__ == '__main__':
    main()
