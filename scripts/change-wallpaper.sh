# 获取 .jpg 文件名到数组
img_files=("$HOME/wallpaper/"*.jpg "$HOME/wallpaper/".png "$HOME/wallpaper/".gif)
if [${img_files[@]} -eq 0]; then
  echo "There is no wallpaper"
  exit 1
fi
# 随机选择一个索引
random_index=$((RANDOM % ${#img_files[@]}))

# 输出随机选择的文件名
swww img ${img_files[$random_index]}
