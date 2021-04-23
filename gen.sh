
cd /public/data1/users/zhaiwei16/GitCode/DepthGen/depth

files=$(find ./*/* -print)

cd /public/data1/users/zhaiwei16/GitCode/DepthGen

root_img='/public/data1/users/zhaiwei16/GitCode/DepthGen/images_ori'
root_depth='/public/data1/users/zhaiwei16/GitCode/DepthGen/depth'

for filename in $files
do	
	arr=(${filename//./ })
	name=${arr[0]}
	echo $name

	curr_img=$root_img$name
	curr_depth=$root_depth$name

	echo $curr_img
	echo $curr_depth

	#srun -A test -J Dep -N 1 --ntasks-per-node=1 --cpus-per-task=8 --gres=gpu:1 -p gpu -t 0-01:00:00 python run.py -i $curr_img -o $curr_depth
	python run.py -i $curr_img -o $curr_depth
done 