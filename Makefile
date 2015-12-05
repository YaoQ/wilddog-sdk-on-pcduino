
MAKE=make --no-print-directory

export APP_PROTO_TYPE:=coap

.PHONY: all test example clean cover

all:
	@echo "Building wilddog lib"
	@$(MAKE) -C ./project/pcduino wdlib||exit 1;
	@echo "Building wilddog lib end!"

test:
	@echo "Building test"
	@$(MAKE) -C ./project/pcduino test||exit 1;
	@echo "Building test end!"

example:
	@echo "Building example"
	@$(MAKE) -C ./project/pcduino example||exit 1;
	@echo "Build example end!"
	
cover:clean
	@echo "Building cover check"
	@$(MAKE) COVER=1 -C ./project/pcduino test||exit 1;
	@echo "Build cover end!"
clean:
	@echo "Cleaning"
	@$(MAKE) -C ./project/pcduino clean||exit 1;
	@echo "Clean end!"

%::
	@echo "\nUsage: make [option] [VERBOSE=0|1] [PORT_TYPE=linux|espressif] [APP_SEC_TYPE=nosec|tinydtls|dtls]\n"
	@echo "target:\n"
	@echo "\tall\t build wilddog lib by default, in espressif, we can only make this target\n"
	@echo "\ttest\t build executables for test\n"
	@echo "\texample\t build executables examples\n"
	@echo "\tcover\t build cover test executable files(must support lib lcov)\n"
	@echo "\tclean\t clean temporary files\n"
	@echo "option:\n"
	@echo "\tVERBOSE\t\t can be set to 0 or 1, when set to 1, output all logs\n"
	@echo "\tPORT_TYPE\t SDK's platform, can be set to linux or espressif\n"
	@echo "\tAPP_SEC_TYPE\t SDK's secure mode, can be set to nosec/tinydtls/dtls\n"
	
