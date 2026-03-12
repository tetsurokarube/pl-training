@echo off
chcp 65001 > nul
cd /d "%~dp0"

echo ===================================
echo  GitHub Pages 公開スクリプト
echo ===================================
echo.

git add -A
git status

echo.
git commit -m "Update files"
echo.

git push
if %errorlevel% neq 0 (
    echo.
    echo [エラー] プッシュに失敗しました。
    pause
    exit /b 1
)

echo.
echo ===================================
echo  公開完了！
echo  ベースURL:
echo  https://tetsurokarube.github.io/pl-training/
echo.
echo  ファイル一覧:
for %%f in (*.html) do echo  https://tetsurokarube.github.io/pl-training/%%f
echo ===================================
echo.
pause
