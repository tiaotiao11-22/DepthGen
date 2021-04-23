
cd /public/data1/users/zhaiwei16/GitCode/DepthGen/depth

files=$(find ./*/* -print)

cd /public/data1/users/zhaiwei16/GitCode/DepthGen

for filename in $files
do	
	echo $filename
	arr=(${filename//./ })
	year=${arr[0]}
	echo $year
done 

input="/public/data1/users/zhaiwei16/GitCode/Toy_FG/dataset/FGDataset"$level"/TestDataset/"

output="/public/data1/users/zhaiwei16/GitCode/Toy_FG/dataset/FGDataset"$level"/TestDataset/"

#srun -A test -J Dep -N 1 --ntasks-per-node=1 --cpus-per-task=8 --gres=gpu:1 -p gpu -t 0-01:00:00 python run.py -i /public/data1/users/zhaiwei16/GitCode/DepthGen/images_ori/beat/drum -o /public/data1/users/zhaiwei16/GitCode/DepthGen/depth/beat/drum
