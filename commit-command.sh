mkdir -p .vscode
cat <<EOF >.vscode/settings.json
{
    "extensions.ignoreRecommendations": true
}
EOF
cat <<EOF >.git/hooks/post-commit
git push
git log -1 --shortstat > history_log.txt
EOF
chmod +x .git/hooks/post-commit