from os.path import dirname

from diagrams import Node

class _Other(Node):
    _provider = 'other'
    _icon_dir = dirname(__file__) + '/resources/other'

    fontcolor = '#ffffff'

class Infinispan(_Other):
    _icon = 'infinispan.png'

class Ibmmq(_Other):
    _icon = 'ibmmq.png'
