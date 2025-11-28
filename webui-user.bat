@echo off

set PYTHON=
set GIT=
set VENV_DIR=
set COMMANDLINE_ARGS=

rem If COMMANDLINE_ARGS isn't set, add flags to skip python version and torch CUDA checks.
if not defined COMMANDLINE_ARGS (
	set COMMANDLINE_ARGS=--skip-python-version-check --skip-torch-cuda-test
) else (
	set COMMANDLINE_ARGS=%COMMANDLINE_ARGS% --skip-python-version-check --skip-torch-cuda-test
)

call webui.bat
