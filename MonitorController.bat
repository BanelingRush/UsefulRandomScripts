IF EXIST C:\Users\Public\monitor_controller (
	REM Switch back to 60 hz on 144HZ monitor known as monitor 0 here
	REM Enable DSR on Nvidia Control Panel and Set to 4k.
	nircmd.exe setdisplay monitor:1 3840 2160 32 60
	REM LG Monitor is Display2	
    nircmd.exe setprimarydisplay 2
    del C:\Users\Public\monitor_controller
) ELSE (
	REM 144HZ is display 1/monitor 0 reactivate Native Resolution, set 144hz and set as primary.
	nircmd.exe setdisplay monitor:1 2560 1440 32 144
    nircmd.exe setprimarydisplay 1
    echo.> C:\Users\Public\monitor_controller
)