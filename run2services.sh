curl -OL https://github.com/cheraghifar/run2service/raw/main/run2service.sh; echo "#services" > tmp.sh; while IFS= read -r line; do echo $line; echo bash run2service.sh $line >> tmp.sh ; done < $1; bash tmp.sh; cat tmp.sh; rm tmp.sh; rm run2service.sh;
