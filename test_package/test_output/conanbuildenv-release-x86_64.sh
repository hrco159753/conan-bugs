echo "echo Restoring environment" > "/home/hrvoje/Programming/src/ConanIssues/CMakeToolchainCacheVariables/test_package/test_output/deactivate_conanbuildenv-release-x86_64.sh"
for v in 
do
    is_defined="true"
    value=$(printenv $v) || is_defined="" || true
    if [ -n "$value" ] || [ -n "$is_defined" ]
    then
        echo export "$v='$value'" >> "/home/hrvoje/Programming/src/ConanIssues/CMakeToolchainCacheVariables/test_package/test_output/deactivate_conanbuildenv-release-x86_64.sh"
    else
        echo unset $v >> "/home/hrvoje/Programming/src/ConanIssues/CMakeToolchainCacheVariables/test_package/test_output/deactivate_conanbuildenv-release-x86_64.sh"
    fi
done

