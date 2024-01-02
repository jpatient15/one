import RPi.GPIO as gpio
import time

def(init():
    gpio.setmode(gpio.BCM) 
    gpio.setup(7,gpio.OUT) #LB
    gpio.setup(8,gpio.OUT) #LF
    gpio.setup(9,gpio.OUT) #RB
    gpio.setup(10,gpio.OUT) #RF

def forward(sec):
 init()
 gpio.output(17, True)
 gpio.output(22, False)
 gpio.output(23, True) 
 gpio.output(24, False)
 time.sleep(sec)
 gpio.cleanup()
 
def reverse(sec):
 init()
 gpio.output(17, False)
 gpio.output(22, True)
 gpio.output(23, False) 
 gpio.output(24, True)
 time.sleep(sec)
 gpio.cleanup()

 
print "forward"
forward(4)
print "reverse"
reverse(2)
