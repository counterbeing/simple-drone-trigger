build_number=$(drone build last $REPOSITORY | head -n 1 | cut -d " " -f 2)
echo "Rerunning the most recent build #$build_number now."
drone build start --fork $REPOSITORY $build_number
echo "should have run the thing just above"
