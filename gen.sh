
cd /public/data1/users/zhaiwei16/GitCode/DepthGen/ref_depth

files=$(find ./* -print)

cd /public/data1/users/zhaiwei16/GitCode/DepthGen

root_img='/public/data1/users/zhaiwei16/GitCode/DepthGen/ref_ori'
root_depth='/public/data1/users/zhaiwei16/GitCode/DepthGen/ref_depth'

for filename in $files
do	
	start_time=$(date +%s)

	arr=(${filename//./ })
	name=${arr[0]}
	echo $name

	curr_img=$root_img$name
	curr_depth=$root_depth$name

	echo $curr_img
	echo $curr_depth

	python run.py -i $curr_img -o $curr_depth
	
	end_time=$(date +%s)
	cost_time=`expr $end_time - $start_time`
	echo "Test time is $(($cost_time/60)) min $(($cost_time%60)) s" 
done 