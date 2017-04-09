rsync -avz --progress --no-perms --omit-dir-times /Users/$1/Library/Application\ Support/Go\ Agent/pipelines/server_pkg_code/ rayjoy@$2:/data/plattech/server_sdk_pack/ --exclude='.git' --exclude='sdk.md' --exclude='README.md' --exclude='.DS_Store' --exclude='cruise-output' --exclude='rsync_script.sh' --exclude='serverUpdate.sh' --exclude='Contents/config/sdk/' --exclude='Contents/config/db_config.ini' --exclude='Contents/backupApk/' --exclude='Contents/workspace/' --exclude='Contents/Log/' --exclude='Contents/tool/mac/tmp/' --exclude='Contents/tool/mac/temp/' -e "ssh -p 10220"