#RECV_OBJS specifies which files to compile for the reciever program
RECV_OBJS = recv.cpp

#SEND_OBJS specifies which files to compile for the sending program
SEND_OBJS = sender.cpp

#CC specifies which compiler we're using
CC = g++

#COMPILER_FLAGS specifies the additional compilation options we're using
# -Wall enables all warnings
# -g enables debugging
COMPILER_FLAGS = -Wall

#RECV_OBJ_NAME specifies the name of our receiving program executable
RECV_OBJ_NAME = recv

#SEND_OBJ_NAME specifies the name of our receiving program executable
SEND_OBJ_NAME = sender

#This is the target that compiles our two executables for sender and reciever
all : recv sender 

#This is the target that compiles the receiving program
recv : $(RECV_OBJS)
	$(CC) $(RECV_OBJS) $(COMPILER_FLAGS) -o $(RECV_OBJ_NAME)

#This is the target that compiles the sender program
sender : $(SEND_OBJS)
	$(CC) $(SEND_OBJS) $(COMPILER_FLAGS) -o $(SEND_OBJ_NAME)