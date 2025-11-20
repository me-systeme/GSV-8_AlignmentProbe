@echo off
REM Build script for Alignment Viewer EXE using PyInstaller

echo Installing dependencies (if needed)...
pip install pyinstaller pyqt6 pyqtgraph numpy pyyaml

echo Building AlignmentViewer.exe...
pyinstaller ^
  --onefile ^
  --noconsole ^
  --name AlignmentViewer ^
  --add-data "alignment_config.yaml;." ^
  --add-binary "MEGSV86x64.dll;." ^
  alignment_viewer.py

echo.
echo Build finished.
echo You can find AlignmentViewer.exe in the "dist" folder.
pause
