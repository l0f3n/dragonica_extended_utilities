#installkeybdhook
#UseHook
^x::            
GetKeyState, state, ScrollLock, T

if (state = "D") ;if scrollLock is toggled
{      
	Loop
	{
		Sleep, -0.1
		send, x

		GetKeyState, xState, x, P         
		if (xState = "U")
		{
			break
		}
	}
}
return