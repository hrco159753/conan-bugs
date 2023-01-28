echo "echo Restoring environment" > "/home/hrvoje/Programming/src/ConanIssues/CMakeToolchainCacheVariables/test_package/test_output/deactivate_conanrunenv-release-x86_64.sh"
for v in PATH LD_LIBRARY_PATH DYLD_LIBRARY_PATH
do
    is_defined="true"
    value=$(printenv $v) || is_defined="" || true
    if [ -n "$value" ] || [ -n "$is_defined" ]
    then
        echo export "$v='$value'" >> "/home/hrvoje/Programming/src/ConanIssues/CMakeToolchainCacheVariables/test_package/test_output/deactivate_conanrunenv-release-x86_64.sh"
    else
        echo unset $v >> "/home/hrvoje/Programming/src/ConanIssues/CMakeToolchainCacheVariables/test_package/test_output/deactivate_conanrunenv-release-x86_64.sh"
    fi
done


export PATH="/home/hrvoje/Programming/src/ConanIssues/CMakeToolchainCacheVariables/build/Release/.:$PATH"
export LD_LIBRARY_PATH="/home/hrvoje/Programming/src/ConanIssues/CMakeToolchainCacheVariables/build/Release/.:$LD_LIBRARY_PATH"
export DYLD_LIBRARY_PATH="/home/hrvoje/Programming/src/ConanIssues/CMakeToolchainCacheVariables/build/Release/.:$DYLD_LIBRARY_PATH"