import sys

import rclpy
from rclpy.node import Node

import time
import random

#from std_msgs.msg import String
from openadx_msgs.msg import (DetectedObject, DetectedObjectList)


class DemoSender(Node):
    def __init__(self):
        super().__init__('demo')
        self.pub = self.create_publisher(DetectedObjectList, 'vehicle/objects')
        self.counter = 1
        self.tmr = self.create_timer(1.0, self.sender_callback)

    def sender_callback(self):
        t = time.time()
        sec = int(t)
        nanosec = int((t - sec) * 1e9)
        msg = DetectedObjectList()
        msg.id = self.counter
        msg.header.stamp.sec = sec
        msg.header.stamp.nanosec = nanosec
        msg.header.frame_id = 'world'
        msg.objects = [self.get_object() for _ in range(5)]

        self.get_logger().info("Publishing message {}".format(msg.id))
        self.counter += 1
        self.pub.publish(msg)

    def get_object(self):
        x = 5 + 50 * random.random()
        y = 10 - 20 * random.random()
        obj = DetectedObject(id=42, x=x, y=y, v_rad=0.0, a_rad=0.0)
        # obj.id = 42
        # obj.x = 1.
        # obj.y = 2.
        # obj.v_rad = 0.0
        # obj.a_rad = 0.0
        return obj


def main(args=None):
    if args is None:
        args = sys.argv

    rclpy.init(args=args)

    node = DemoSender()
    rclpy.spin(node)

    node.destroy_node()
    rclpy.shutdown()


if __name__ == '__main__':
    main()
