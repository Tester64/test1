rem - настройки локального репозитория и пути к инструментам

rem !!!!! Поменяв не забудь перезапустить \.git_utils\git_init.bat 

set wait=d:\Prj_4\Android\Bin\Utils\wait\wait.exe
set git_path=c:\Program Files (x86)\Git\
set git=%git_path%cmd\git.exe
set prj_path=%~d0%~p0

rem Основной ВНЕШНИЙ репозиторий
set origin_path=git@github.com:Tester64/new_repo.git

rem файловые репозитории, или на флешке, или сетевой путь
set gitfile_1_path=d:\Prj_4\git\git_global\test_5\
set gitfile_2_path=
set gitfile_3_path=

rem GitHub
set github_1_path=https://bitbucket.org/Tester64/test1
set github_2_path=https://bitbucket.org/Tester64/test2
set github_3_path=

rem BitBucket
set bitbucket_1_path=https://bitbucket.org/Tester64/test1
set bitbucket_2_path=
set bitbucket_3_path=

rem +++