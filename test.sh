gcc own_micro_paint.c -o own
gcc real_micro_paint.c -o real
touch error
./real examples/file > real_output
if [ $? != 0 ]; then
		echo "\033[0;31mError returned real\033[0;0m"
		echo $DIFF > error
		exit 1
fi
./own examples/file > own_output
if [ $? != 0 ]; then
		echo "\033[0;31mError retuned own\033[0;0m"
		exit 1
fi
DIFF=$(diff real_output own_output)
if [ "$DIFF" != "" ]; then
	printf "======= \033[0;31mThis is not the same\033[0;0m =======\n"
	echo $DIFF > error
	exit 1
else
	printf "======= \033[0;32mNo diff between files \".\"\033[0;0m =======\n"
fi

./real examples/0 > real_output
if [ $? != 0 ]; then
		echo "\033[0;31mError returned real\033[0;0m"
		exit 1
fi
./own examples/0 > own_output
if [ $? != 0 ]; then
		echo "\033[0;31mError retuned own\033[0;0m"
		exit 1
fi
DIFF=$(diff real_output own_output)
if [ "$DIFF" != "" ]; then
	printf "======= \033[0;31mThis is not the same\033[0;0m =======\n"
	echo $DIFF > error
	exit 1
else
	printf "======= \033[0;32mNo diff between files \"0\"\033[0;0m =======\n"
fi

./real examples/1 > real_output
if [ $? != 0 ]; then
		echo "\033[0;31mError returned real\033[0;0m"
		exit 1
fi
./own examples/1 > own_output
if [ $? != 0 ]; then
		echo "\033[0;31mError retuned own\033[0;0m"
		exit 1
fi
DIFF=$(diff real_output own_output)
if [ "$DIFF" != "" ]; then
	printf "======= \033[0;31mThis is not the same\033[0;0m =======\n"
	echo $DIFF > error
	exit 1
else
	printf "======= \033[0;32mNo diff between files \"1\"\033[0;0m =======\n"
fi

./real examples/2 > real_output
if [ $? != 0 ]; then
		echo "\033[0;31mError returned real\033[0;0m"
		exit 1
fi
./own examples/2 > own_output
if [ $? != 0 ]; then
		echo "\033[0;31mError retuned own\033[0;0m"
		exit 1
fi
DIFF=$(diff real_output own_output)
if [ "$DIFF" != "" ]; then
	printf "======= \033[0;31mThis is not the same\033[0;0m =======\n"
	echo $DIFF > error
	exit 1
else
	printf "======= \033[0;32mNo diff between files \"2\"\033[0;0m =======\n"
fi

./real examples/3 > real_output
if [ $? != 0 ]; then
		echo "\033[0;31mError returned real\033[0;0m"
		exit 1
fi
./own examples/3 > own_output
if [ $? != 0 ]; then
		echo "\033[0;31mError retuned own\033[0;0m"
		exit 1
fi
DIFF=$(diff real_output own_output)
if [ "$DIFF" != "" ]; then
	printf "======= \033[0;31mThis is not the same\033[0;0m =======\n"
	echo $DIFF > error
	exit 1
else
	printf "======= \033[0;32mNo diff between files \"3\"\033[0;0m =======\n"
fi

./real examples/4 > real_output
if [ $? != 0 ]; then
		echo "\033[0;31mError returned real\033[0;0m"
		exit 1
fi
./own examples/4 > own_output
if [ $? != 0 ]; then
		echo "\033[0;31mError retuned own\033[0;0m"
		exit 1
fi
DIFF=$(diff real_output own_output)
if [ "$DIFF" != "" ]; then
	printf "======= \033[0;31mThis is not the same\033[0;0m =======\n"
	echo $DIFF > error
	exit 1
else
	printf "======= \033[0;32mNo diff between files \"4\"\033[0;0m =======\n"
fi

./real examples/5 > real_output
if [ $? != 0 ]; then
		echo "\033[0;31mError returned real\033[0;0m"
		exit 1
fi
./own examples/5 > own_output
if [ $? != 0 ]; then
		echo "\033[0;31mError retuned own\033[0;0m"
		exit 1
fi
DIFF=$(diff real_output own_output)
if [ "$DIFF" != "" ]; then
	printf "======= \033[0;31mThis is not the same\033[0;0m =======\n"
	echo $DIFF > error
	exit 1
else
	printf "======= \033[0;32mNo diff between files \"5\"\033[0;0m =======\n"
fi

./real examples/6 > real_output
if [ $? != 0 ]; then
		echo "\033[0;31mError returned real\033[0;0m"
		exit 1
fi
./own examples/6 > own_output
if [ $? != 0 ]; then
		echo "\033[0;31mError retuned own\033[0;0m"
		exit 1
fi
DIFF=$(diff real_output own_output)
if [ "$DIFF" != "" ]; then
	printf "======= \033[0;31mThis is not the same\033[0;0m =======\n"
	echo $DIFF > error
	exit 1
else
	printf "======= \033[0;32mNo diff between files \"6\"\033[0;0m =======\n"
fi

./real examples/7 > real_output
if [ $? != 0 ]; then
		echo "\033[0;31mError returned real\033[0;0m"
		exit 1
fi
./own examples/7 > own_output
if [ $? != 0 ]; then
		echo "\033[0;31mError retuned own\033[0;0m"
		exit 1
fi
DIFF=$(diff real_output own_output)
if [ "$DIFF" != "" ]; then
	printf "======= \033[0;31mThis is not the same\033[0;0m =======\n"
	echo $DIFF > error
	exit 1
else
	printf "======= \033[0;32mNo diff between files \"7\"\033[0;0m =======\n"
fi
./real examples/8 > real_output
if [ $? != 0 ]; then
		echo "\033[0;31mError returned real\033[0;0m"
		exit 1
fi
./own examples/8 > own_output
if [ $? != 0 ]; then
		echo "\033[0;31mError retuned own\033[0;0m"
		exit 1
fi
DIFF=$(diff real_output own_output)
if [ "$DIFF" != "" ]; then
	printf "======= \033[0;31mThis is not the same\033[0;0m =======\n"
	echo $DIFF > error
	exit 1
else
	printf "======= \033[0;32mNo diff between files \"8\"\033[0;0m =======\n"
fi

rm own real own_output real_output error