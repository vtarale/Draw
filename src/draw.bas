Rem "Draw program"
Screen 12

Cls

oldx = 0
oldy = 0

Do
    Do While _MouseInput
        in = _MouseButton(1)
        If in = -1 Then
            If oldx = 0 Then
                oldx = _MouseX
                oldy = _MouseY
            Else
                xpos = _MouseX
                ypos = _MouseY
                Line (xpos, ypos)-(oldx, oldy)
                oldx = xpos
                oldy = ypos
            End If
        Else
            in = _MouseButton(2)
            If in = -1 Then
                Cls
                oldx = 0
                oldy = 0
            End If
        End If
    Loop

Loop Until InKey$ = Chr$(27)
