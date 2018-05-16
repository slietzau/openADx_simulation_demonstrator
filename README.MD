# OpenADx Testbed 1: Simulation Demonstrator

This project contains the code needed to build a simulation demonstrator by the OpenADx eco-system. The main content is glue that is used to combine the different tools by participating companies. The work is done in the context of the Simulation Testbed of the OpenADx initiative

More information on this testbed, see: https://wiki.eclipse.org/OpenADx


## OpenADX Demo example:
Start the demo sender with
```
ros2 run openadx_demo demo_sender
```

Start the demo brake assistant with
```
ros2 run openadx_demo demo
```

To view control messages sent by the demo brake assistant run the following command:
```
ros2 topic echo /vehicle/control
```
