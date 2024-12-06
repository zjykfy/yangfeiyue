#!/bin/bash
# cd /root/iptv
# read -p "确定要运行脚本吗？(y/n): " choice

# 判断用户的选择，如果不是"y"则退出脚本
# if [ "$choice" != "y" ]; then
#     echo "脚本已取消."
#     exit 0
# fi

time=$(date +%m%d%H%M)
i=0

if [ $# -eq 0 ]; then
  echo "请选择城市："
  echo "1. 天津（Tianjin_liantong）"
  echo "2. 浙江（Zhejiang_dianxin）"
  echo "3. 北京（Beijing_liantong）"
  echo "4. 上海（Shanghai_dianxin）"
  echo "5. 广东（Guangdong_dianxin）"
  echo "6. 江苏（Jiangsu_dianxin）"
  echo "7. 安徽（Anhui_dianxin）"
  echo "8. 湖北（Hubei_dianxin）"
  echo "9. 重庆（Chongqing_liantong）"
  echo "10. 湖南（Hunan_dianxin）"
  echo "11. 河南（Henan_liantong）"
  echo "12. 山西（Shanxi_liantong）"
  echo "13. 河北（Hebei_liantong）"
  echo "14. 四川（Sichuan_dianxin）"
  echo "15. 四川（Sichuan_yidong）"
  echo "16. 江西（Jiangxi_dianxin）"
  echo "17. 越南（Yuenan_FPT）"
  echo "18. KR（KR_SK）"
  echo "0. 全部"
  read -t 10 -p "输入选择或在10秒内无输入将默认选择全部: " city_choice

  if [ -z "$city_choice" ]; then
      echo "未检测到输入，自动选择全部选项..."
      city_choice=0
  fi

else
  city_choice=$1
fi

# 根据用户选择设置城市和相应的stream
case $city_choice in
    1)
        city="Tianjin_liantong"
        stream="rtp/225.1.1.149:5002"
	channel_key="天津"
#        url_fofa=$(echo  '"udpxy" && country="CN" && region="Tianjin" && protocol="http"' | base64 |tr -d '\n')
#        url_fofa="https://fofa.info/result?qbase64="$url_fofa
        url_fofa="https://fo.yangfeiyue.us.kg/Tianjin_liantong.txt"$url_fofa
        ;;
    2)
        city="Zhejiang_dianxin"
        stream="rtp/233.50.201.136:5140"
        channel_key="浙江"
#        url_fofa=$(echo  '"udpxy" && country="CN" && region="Zhejiang" && org="Chinanet" && protocol="http"' | base64 |tr -d '\n')
#        url_fofa="https://fofa.info/result?qbase64="$url_fofa
        url_fofa="https://fo.yangfeiyue.us.kg/Zhejiang_dianxin.txt"$url_fofa
        ;;
    3)
        city="Beijing_liantong"
        stream="rtp/239.3.1.250:8001"
        channel_key="北京"
#        url_fofa=$(echo  '"udpxy" && country="CN" && region="Beijing" && org="China Unicom Beijing Province Network" && protocol="http"' | base64 |tr -d '\n')
#        url_fofa="https://fofa.info/result?qbase64="$url_fofa
        url_fofa="https://fo.yangfeiyue.us.kg/Beijing_liantong.txt"$url_fofa
        ;;
    4)
        city="Shanghai_dianxin"
        stream="rtp/239.45.3.237:5140"
        channel_key="上海"
#        url_fofa=$(echo  '"udpxy" && country="CN" && region="Shanghai" && org="China Telecom Group" && protocol="http"' | base64 |tr -d '\n')
#        url_fofa="https://fofa.info/result?qbase64="$url_fofa
        url_fofa="https://fo.yangfeiyue.us.kg/Shanghai_dianxin.txt"$url_fofa
        ;;
    5)
        city="Guangdong_dianxin"
        stream="rtp/239.77.0.217:5146"
        channel_key="广东"
#        url_fofa=$(echo  '"udpxy" && country="CN" && region="Guangdong" && org="Chinanet" && protocol="http"' | base64 |tr -d '\n')
#        url_fofa="https://fofa.info/result?qbase64="$url_fofa
        url_fofa="https://fo.yangfeiyue.us.kg/Guangdong_dianxin.txt"$url_fofa
        ;;
    6)
        city="Jiangsu_dianxin"
        stream="rtp/239.49.8.118:8000"
        channel_key="江苏"
#        url_fofa=$(echo  '"udpxy" && country="CN" && region="Jiangsu" && org="Chinanet" && protocol="http"' | base64 |tr -d '\n')
#        url_fofa="https://fofa.info/result?qbase64="$url_fofa
        url_fofa="https://fa.yangfeiyue.us.kg/Jiangsu_dianxin.txt"$url_fofa
        ;;
    7)
        city="Anhui_dianxin"
        stream="rtp/238.1.79.42:4448"
        channel_key="安徽"
#        url_fofa=$(echo  '"udpxy" && country="CN" && region="Anhui" && org="Chinanet" && protocol="http"' | base64 |tr -d '\n')
#        url_fofa="https://fofa.info/result?qbase64="$url_fofa
        url_fofa="https://fa.yangfeiyue.us.kg/Anhui_dianxin.txt"$url_fofa
        ;;
    8)
        city="Hubei_dianxin"
        stream="rtp/239.69.1.204:10866"
        channel_key="湖北"
#        url_fofa=$(echo  '"udpxy" && country="CN" && region="Hubei" && org="Chinanet" && protocol="http"' | base64 |tr -d '\n')
#        url_fofa="https://fofa.info/result?qbase64="$url_fofa
        url_fofa="https://fa.yangfeiyue.us.kg/Hubei_dianxin.txt"$url_fofa
        ;;
    9)
        city="Chongqing_liantong"
        stream="rtp/225.0.4.192:7980"
        channel_key="重庆"
#        url_fofa=$(echo  '"udpxy" && country="CN" && region="Chongqing" && org="CHINA UNICOM China169 Backbone" && protocol="http"' | base64 |tr -d '\n')
#        url_fofa="https://fofa.info/result?qbase64="$url_fofa
        url_fofa="https://fa.yangfeiyue.us.kg/Chongqing_liantong.txt"$url_fofa
        ;;
    10)
        city="Hunan_dianxin"
        stream="rtp/239.76.245.119:1234"
        channel_key="湖南"
#        url_fofa=$(echo  '"udpxy" && country="CN" && region="Hunan" && org="Chinanet" && protocol="http"' | base64 |tr -d '\n')
#        url_fofa="https://fofa.info/result?qbase64="$url_fofa
        url_fofa="https://fa.yangfeiyue.us.kg/Hunan_dianxin.txt"$url_fofa
        ;;
    11)
        city="Henan_liantong"
        stream="rtp/225.1.4.55:1084"
        channel_key="河南"
#        url_fofa=$(echo  '"udpxy" && country="CN" && region="Henan" && org="CHINA UNICOM China169 Backbone" && protocol="http"' | base64 |tr -d '\n')
#        url_fofa="https://fofa.info/result?qbase64="$url_fofa
        url_fofa="https://fu.yangfeiyue.us.kg/Henan_liantong.txt"$url_fofa
        ;;
    12)
        city="Shanxi_liantong"
        stream="rtp/226.0.1.82:2004"
        channel_key="山西"
#        url_fofa=$(echo  '"udpxy" && country="CN" && region="Shanxi" && org="CHINA UNICOM China169 Backbone" && protocol="http"' | base64 |tr -d '\n')
#        url_fofa="https://fofa.info/result?qbase64="$url_fofa
        url_fofa="https://fu.yangfeiyue.us.kg/Shanxi_liantong.txt"$url_fofa
        ;;
    13)
        city="Hebei_liantong"
        stream="rtp/239.253.92.173:6003"
        channel_key="河北"
#        url_fofa=$(echo  '"udpxy" && country="CN" && region="Hebei" && org="CHINA UNICOM China169 Backbone" && protocol="http"' | base64 |tr -d '\n')
#        url_fofa="https://fofa.info/result?qbase64="$url_fofa
        url_fofa="https://fu.yangfeiyue.us.kg/Hebei_liantong.txt"$url_fofa
        ;;
    14)
        city="Sichuan_dianxin"
        stream="rtp/239.93.0.252:5140"
        channel_key="四川"
#        url_fofa=$(echo  '"udpxy" && country="CN" && city="Chengdu" && org="Chinanet" && protocol="http"' | base64 |tr -d '\n')
#        url_fofa="https://fofa.info/result?qbase64="$url_fofa
        url_fofa="https://fu.yangfeiyue.us.kg/Sichuan_dianxin.txt"$url_fofa
        ;;
    15)
        city="Sichuan_yidong"
        stream="rtp/239.11.0.151:5140"
        channel_key="四川"
#        url_fofa=$(echo  '"udpxy" && country="CN" && region="Sichuan" && org="China Mobile Communications Group Co., Ltd." && protocol="http"' | base64 |tr -d '\n')
#        url_fofa="https://fofa.info/result?qbase64="$url_fofa
        url_fofa="https://li.yangfeiyue.us.kg/Sichuan_yidong.txt"$url_fofa
        ;;
    16)
        city="Jiangxi_dianxin"
        stream="rtp/239.252.220.242:5140"
        channel_key="江西"
#        url_fofa=$(echo  '"udpxy" && country="CN" && region="Jiangxi" && org="Chinanet" && protocol="http"' | base64 |tr -d '\n')
#        url_fofa="https://fofa.info/result?qbase64="$url_fofa
        url_fofa="https://li.yangfeiyue.us.kg/Jiangxi_dianxin.txt"$url_fofa
        ;;
    17)
        city="Yuenan_FPT"
        stream="udp/225.1.2.233:30120"
        channel_key="越南"
#        url_fofa=$(echo  '"udpxy" && country="VN" && org="FPT Telecom Company" && protocol="http"' | base64 |tr -d '\n')
#        url_fofa="https://fofa.info/result?qbase64="$url_fofa
        url_fofa="https://li.yangfeiyue.us.kg/Yuenan_FPT.txt"$url_fofa
        ;;
    18)
        city="KR_SK"
        stream="udp/239.192.67.228:49220"
        channel_key="KR"
#        url_fofa=$(echo  '"udpxy" && country="KR" && org="SK Broadband Co Ltd" && protocol="http"' | base64 |tr -d '\n')
#        url_fofa="https://fofa.info/result?qbase64="$url_fofa
        url_fofa="https://li.yangfeiyue.us.kg/KR_SK.txt"$url_fofa
        ;;
    0)
        # 如果选择是“全部选项”，则逐个处理每个选项
        for option in {1..20}; do
          bash  "$0" $option  # 假定fofa.sh是当前脚本的文件名，$option将递归调用
        done
        exit 0
        ;;

    *)
        echo "错误：无效的选择。"
        exit 1
        ;;
esac



# 使用城市名作为默认文件名，格式为 CityName.ip
ipfile="ip/${city}.ip"
only_good_ip="ip/${city}.onlygood.ip"
rm -f $only_good_ip
# 搜索最新 IP
echo "===============从 fofa 检索 ip+端口================="
curl -o test.html "$url_fofa"
#echo $url_fofa
echo "$ipfile"
grep -E '^\s*[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+:[0-9]+$' test.html | grep -oE '[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+:[0-9]+' > "$ipfile"
rm -f test.html
# 遍历文件 A 中的每个 IP 地址
while IFS= read -r ip; do
    # 尝试连接 IP 地址和端口号，并将输出保存到变量中
    tmp_ip=$(echo -n "$ip" | sed 's/:/ /')
    echo "nc -w 1 -v -z $tmp_ip 2>&1"
    output=$(nc -w 1 -v -z $tmp_ip 2>&1)
    echo $output    
    # 如果连接成功，且输出包含 "succeeded"，则将结果保存到输出文件中
    if [[ $output == *"succeeded"* ]]; then
        # 使用 awk 提取 IP 地址和端口号对应的字符串，并保存到输出文件中
        echo "$output" | grep "succeeded" | awk -v ip="$ip" '{print ip}' >> "$only_good_ip"
    fi
done < "$ipfile"

echo "===============检索完成================="

# 检查文件是否存在
if [ ! -f "$only_good_ip" ]; then
    echo "错误：文件 $only_good_ip 不存在。"
    exit 1
fi

lines=$(wc -l < "$only_good_ip")
echo "【$only_good_ip】内 ip 共计 $lines 个"

i=0
time=$(date +%Y%m%d%H%M%S) # 定义 time 变量
while IFS= read -r line; do
    i=$((i + 1))
    ip="$line"
    url="http://$ip/$stream"
    echo "$url"
    curl "$url" --connect-timeout 3 --max-time 10 -o /dev/null >zubo.tmp 2>&1
    a=$(head -n 3 zubo.tmp | awk '{print $NF}' | tail -n 1)

    echo "第 $i/$lines 个：$ip $a"
    echo "$ip $a" >> "speedtest_${city}_$time.log"
done < "$only_good_ip"

rm -f zubo.tmp
awk '/M|k/{print $2"  "$1}' "speedtest_${city}_$time.log" | sort -n -r >"result/result_${city}.txt"
cat "result/result_${city}.txt"
ip1=$(awk 'NR==1{print $2}' result/result_${city}.txt)
ip2=$(awk 'NR==2{print $2}' result/result_${city}.txt)
ip3=$(awk 'NR==3{print $2}' result/result_${city}.txt)
rm -f "speedtest_${city}_$time.log"

# 用 2 个最快 ip 生成对应城市的 txt 文件
program="template/template_${city}.txt"

sed "s/ipipip/$ip1/g" "$program" > tmp1.txt
sed "s/ipipip/$ip2/g" "$program" > tmp2.txt
cat tmp1.txt tmp2.txt > "txt/${city}.txt"

rm -rf tmp1.txt tmp2.txt


#--------------------合并所有城市的txt文件为:   zubo.txt-----------------------------------------

echo "天津,#genre#" >zubo.txt
cat txt/Tianjin_liantong.txt >>zubo.txt
echo "浙江,#genre#" >>zubo.txt
cat txt/Zhejiang_dianxin.txt >>zubo.txt
echo "北京,#genre#" >>zubo.txt
cat txt/Beijing_liantong.txt >>zubo.txt
echo "上海,#genre#" >>zubo.txt
cat txt/Shanghai_dianxin.txt >>zubo.txt
echo "广东,#genre#" >>zubo.txt
cat txt/Guangdong_dianxin.txt >>zubo.txt
echo "江苏,#genre#" >>zubo.txt
cat txt/Jiangsu_dianxin.txt >>zubo.txt
echo "安徽,#genre#" >>zubo.txt
cat txt/Anhui_dianxin.txt >>zubo.txt
echo "湖北,#genre#" >>zubo.txt
cat txt/Hubei_dianxin.txt >>zubo.txt
echo "重庆,#genre#" >>zubo.txt
cat txt/Chongqing_liantong.txt >>zubo.txt
echo "湖南,#genre#" >>zubo.txt
cat txt/Hunan_dianxin.txt >>zubo.txt
echo "河南,#genre#" >>zubo.txt
cat txt/Henan_liantong.txt >>zubo.txt
echo "山西,#genre#" >>zubo.txt
cat txt/Shanxi_liantong.txt >>zubo.txt
echo "河北,#genre#" >>zubo.txt
cat txt/Hebei_liantong.txt >>zubo.txt
echo "四川,#genre#" >>zubo.txt
cat txt/Sichuan_dianxin.txt >>zubo.txt
echo "四川,#genre#" >>zubo.txt
cat txt/Sichuan_yidong.txt >>zubo.txt
echo "江西,#genre#" >>zubo.txt
cat txt/Jiangxi_dianxin.txt >>zubo.txt
echo "越南,#genre#" >>zubo.txt
cat txt/Yuenan_FPT.txt >>zubo.txt
echo "KR,#genre#" >>zubo.txt
cat txt/KR_SK.txt >>zubo.txt


for a in result/*.txt; do echo "";echo "========================= $(basename "$a") ==================================="; cat $a; done
