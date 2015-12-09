CC = g++
PRJ = server
CFLAGS = -g
LIBS = 
SRC = 	wheeltimer.cpp \
		main.cpp

all:$(PRJ)
OBJ=$(SRC:.cpp=.o)
$(PRJ):$(OBJ)
	$(CC) $(CFLAGS) $(INCLUDE) $(OBJ) $(LIBS) -o $(PRJ)

#这样不行
#$(OBJ):$(SRC)
#$(CC) -c $(INCLUDE) $(SRC) -o $(SRC:.cpp=.o)

#取后缀函数
#$@代表.o文件
#$<代表依赖目标集
.SUFFIXES: .cpp
.cpp.o:
	$(CC) $(INCLUDE) -c -o $@ $<

clean:
	rm -rf $(PRJ) $(OBJ) $(PRJ)
install:
	install $(PRJ) .
