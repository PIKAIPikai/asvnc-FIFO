debImport "-f" "../script/filelist.f"
debLoadSimResult /home/user/Desktop/pk/4.async_fifo/work/async.fsdb
wvCreateWindow
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcSelect -signal "wclk" -line 11 -pos 1 -win $_nTrace1
srcSelect -signal "wrstn" -line 12 -pos 1 -win $_nTrace1
srcSelect -signal "rclk" -line 14 -pos 1 -win $_nTrace1
srcSelect -signal "rrstn" -line 15 -pos 1 -win $_nTrace1
srcSelect -signal "wren" -line 17 -pos 1 -win $_nTrace1
srcSelect -signal "wdata" -line 18 -pos 1 -win $_nTrace1
srcSelect -signal "rden" -line 20 -pos 1 -win $_nTrace1
srcSelect -signal "rdata" -line 21 -pos 1 -win $_nTrace1
srcSelect -signal "full" -line 23 -pos 1 -win $_nTrace1
srcSelect -signal "empty" -line 24 -pos 1 -win $_nTrace1
wvAddSignal -win $_nWave2 "/tb_async_fifo/wclk" "/tb_async_fifo/wrstn" \
           "/tb_async_fifo/rclk" "/tb_async_fifo/rrstn" "/tb_async_fifo/wren" \
           "/tb_async_fifo/wdata\[7:0\]" "/tb_async_fifo/rden" \
           "/tb_async_fifo/rdata\[7:0\]" "/tb_async_fifo/full" \
           "/tb_async_fifo/empty"
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G1" 10)}
wvSetPosition -win $_nWave2 {("G1" 10)}
wvSetPosition -win $_nWave2 {("G1" 10)}
wvSetPosition -win $_nWave2 {("G1/tb_async_fifo" 0)}
wvAddSubGroup -win $_nWave2 -holdpost {tb_async_fifo}
verdiSetActWin -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 1 2 3 4 5 6 7 8 9 10 )} 
wvSelectGroup -win $_nWave2 {G2}
wvSelectSignal -win $_nWave2 {( "G1" 1 )} 
wvSelectSignal -win $_nWave2 {( "G1" 1 2 3 4 5 6 7 8 9 10 )} 
wvSelectSignal -win $_nWave2 {( "G1" 1 2 3 4 5 6 7 8 9 10 )} 
wvSelectGroup -win $_nWave2 {G2}
wvSelectSignal -win $_nWave2 {( "G1" 6 )} 
wvSelectGroup -win $_nWave2 {G2}
wvSelectSignal -win $_nWave2 {( "G1" 6 )} 
wvSelectSignal -win $_nWave2 {( "G1" 5 6 )} 
wvSelectSignal -win $_nWave2 {( "G1" 2 5 6 )} 
wvSelectSignal -win $_nWave2 {( "G1" 1 2 5 6 )} 
wvSetPosition -win $_nWave2 {("G1" 5)}
wvSetPosition -win $_nWave2 {("G1" 10)}
wvSetPosition -win $_nWave2 {("G1/tb_async_fifo" 0)}
wvSetPosition -win $_nWave2 {("G2" 0)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G2" 4)}
wvSetPosition -win $_nWave2 {("G2" 4)}
wvSelectSignal -win $_nWave2 {( "G1" 6 )} 
wvSelectGroup -win $_nWave2 {G1/tb_async_fifo}
wvSelectSignal -win $_nWave2 {( "G1" 6 )} {( "G2" 1 2 3 4 )} 
wvSelectGroup -win $_nWave2 {G3}
wvSelectSignal -win $_nWave2 {( "G1" 5 )} 
wvSelectSignal -win $_nWave2 {( "G1" 5 6 )} 
wvSetPosition -win $_nWave2 {("G1" 5)}
wvSetPosition -win $_nWave2 {("G2" 2)}
wvSetPosition -win $_nWave2 {("G2" 3)}
wvSetPosition -win $_nWave2 {("G3" 0)}
wvMoveSelected -win $_nWave2
wvSetPosition -win $_nWave2 {("G3" 2)}
wvSetPosition -win $_nWave2 {("G3" 2)}
wvScrollUp -win $_nWave2 1
wvSelectSignal -win $_nWave2 {( "G3" 1 2 )} 
wvSelectSignal -win $_nWave2 {( "G3" 1 2 )} 
wvSelectSignal -win $_nWave2 {( "G2" 1 )} {( "G3" 1 2 )} 
wvSelectSignal -win $_nWave2 {( "G2" 1 2 )} {( "G3" 1 2 )} 
wvSelectSignal -win $_nWave2 {( "G2" 1 2 3 )} {( "G3" 1 2 )} 
wvSelectSignal -win $_nWave2 {( "G2" 1 2 3 4 )} {( "G3" 1 2 )} 
wvScrollDown -win $_nWave2 2
wvSelectSignal -win $_nWave2 {( "G3" 1 )} 
wvSelectSignal -win $_nWave2 {( "G3" 1 )} 
wvSelectSignal -win $_nWave2 {( "G2" 4 )} 
wvSelectSignal -win $_nWave2 {( "G2" 3 4 )} 
wvSelectSignal -win $_nWave2 {( "G2" 2 3 4 )} 
wvSelectSignal -win $_nWave2 {( "G2" 1 2 3 4 )} 
wvSelectSignal -win $_nWave2 {( "G1" 3 )} 
wvSelectSignal -win $_nWave2 {( "G2" 1 )} 
wvSelectSignal -win $_nWave2 {( "G2" 1 2 )} 
wvSelectSignal -win $_nWave2 {( "G2" 1 )} 
wvSelectSignal -win $_nWave2 {( "G2" 1 3 )} 
wvSelectSignal -win $_nWave2 {( "G2" 1 2 3 )} 
wvSelectSignal -win $_nWave2 {( "G2" 1 2 3 4 )} 
wvSelectSignal -win $_nWave2 {( "G1" 3 )} 
wvSelectSignal -win $_nWave2 {( "G2" 1 )} 
wvScrollUp -win $_nWave2 2
wvSelectSignal -win $_nWave2 {( "G1" 1 )} 
wvSelectSignal -win $_nWave2 {( "G1" 3 )} 
wvSelectSignal -win $_nWave2 {( "G1" 1 )} 
wvSelectSignal -win $_nWave2 {( "G1" 2 )} 
wvSelectSignal -win $_nWave2 {( "G2" 1 )} 
wvSelectSignal -win $_nWave2 {( "G2" 2 )} 
wvSelectSignal -win $_nWave2 {( "G2" 4 )} 
wvSelectSignal -win $_nWave2 {( "G2" 4 )} 
wvSetRadix -win $_nWave2 -format UDec
wvSelectSignal -win $_nWave2 {( "G2" 3 )} 
wvSelectSignal -win $_nWave2 {( "G2" 2 )} 
wvSelectSignal -win $_nWave2 {( "G2" 1 )} 
wvSelectSignal -win $_nWave2 {( "G3" 1 )} 
wvScrollDown -win $_nWave2 2
wvSelectSignal -win $_nWave2 {( "G3" 2 )} 
wvSelectSignal -win $_nWave2 {( "G1" 2 )} 
wvScrollUp -win $_nWave2 2
wvSelectSignal -win $_nWave2 {( "G1" 1 )} 
wvSelectSignal -win $_nWave2 {( "G1" 2 )} 
wvSelectSignal -win $_nWave2 {( "G1" 3 )} 
wvSelectGroup -win $_nWave2 {G1/tb_async_fifo}
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
wvSelectSignal -win $_nWave2 {( "G1" 4 )} 
wvSetRadix -win $_nWave2 -format UDec
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
verdiDockWidgetMaximize -dock windowDock_nWave_2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G3" 1 )} 
wvZoom -win $_nWave2 1363130.487805 5997774.146341
wvZoom -win $_nWave2 2818521.636674 4415212.897084
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 3290713.869173 -snap {("G2" 3)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 5598571.646341 -snap {("G4" 0)}
wvSetCursor -win $_nWave2 10505841.402439 -snap {("G4" 0)}
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G1" 2 )} 
wvSelectSignal -win $_nWave2 {( "G1" 1 )} 
wvZoomIn -win $_nWave2
wvZoom -win $_nWave2 2011195.884146 2185925.304878
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
verdiWindowBeWindow -win $_nWave2
wvResizeWindow -win $_nWave2 -8 20 1676 844
verdiShowWindow -win $_Verdi_1 -switchFS
verdiWindowResize -win $_Verdi_1 "209" "109" "1260" "704"
verdiWindowBeDocked -win $_nWave2
verdiWindowBeWindow -win $_nWave2
wvResizeWindow -win $_nWave2 -10 20 1676 844
verdiWindowBeDocked -win $_nWave2
srcHBSelect "tb_async_fifo" -win $_nTrace1
verdiSetActWin -dock widgetDock_<Inst._Tree>
srcHBSelect "tb_async_fifo.u_async_fifo" -win $_nTrace1
srcSetScope "tb_async_fifo.u_async_fifo" -delim "." -win $_nTrace1
srcHBSelect "tb_async_fifo.u_async_fifo" -win $_nTrace1
srcDeselectAll -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
verdiSetActWin -win $_nWave2
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 1
wvScrollDown -win $_nWave2 0
wvScrollDown -win $_nWave2 0
wvSelectSignal -win $_nWave2 {( "G3" 1 )} 
wvSelectSignal -win $_nWave2 {( "G3" 2 )} 
wvSelectGroup -win $_nWave2 {G3}
wvSelectSignal -win $_nWave2 {( "G3" 1 )} 
wvSelectSignal -win $_nWave2 {( "G3" 2 )} 
wvSelectGroup -win $_nWave2 {G3}
wvSelectGroup -win $_nWave2 {G3}
debExit
