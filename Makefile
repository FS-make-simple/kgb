TARGET = kgb
MAGIC = KGB_arch
CXX ?= g++
CXXFLAGS ?= -Wall -std=c++0x -O3 -DPROGNAME='"$(MAGIC)"'
LDFLAGS ?= -s
SRCS = src/kgb_arch_posix.cc
OBJS = $(SRCS:%.cc=%.o)
RM ?= rm -f

all: $(TARGET)

$(TARGET): $(OBJS)
	$(CXX) $(CXXFLAGS) $^ $(LDFLAGS) -o $@

%.o: %.cc
	$(CXX) $(CXXFLAGS) -c $< -o $@

clean:
	$(RM) $(TARGET) $(OBJS)
