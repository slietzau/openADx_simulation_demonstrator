from setuptools import find_packages
from setuptools import setup

package_name = 'openadx_demo'

setup(
    name=package_name,
    version='0.0.1',
    packages=find_packages(exclude=['test']),
    data_files=[
        ('share/ament_index/resource_index/packages',
            ['resource/' + package_name]),
        ('share/' + package_name, ['package.xml']),
    ],
    install_requires=['setuptools'],
    zip_safe=True,
    author='Stefan Lietzau',
    author_email='lietzau@tesis.de',
    maintainer='Stefan Lietzau',
    maintainer_email='lietzau@tesis.de',
    keywords=['ROS2'],
    classifiers=[
        'Intended Audience :: Developers',
        'Programming Language :: Python',
        'Topic :: Software Development',
    ],
    description=(
        'Demo Node to showcase for OpenADX hackathon'
    ),
    license='fill in later',
    tests_require=['pytest'],
    entry_points={
        'console_scripts': [
            'demo = openadx_demo.topics.demo:main',
            'demo_sender = openadx_demo.topics.sender:main',
        ],
    },
)
