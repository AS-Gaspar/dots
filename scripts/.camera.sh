	camera-setup () {
        deviceName="C920"
        device=$(v4l2-ctl --list-devices | grep -A 1 $deviceName | tail  -n 1 | sed 's/\t//')
        bright=${1:-255}
        echo "Setting bright in $device to $bright..."
        sudo v4l2-ctl -d $device -c led1_mode=3 -c brightness=$bright
	}
