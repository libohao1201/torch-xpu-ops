@echo off
echo ======= E2E TEST===========
echo.

echo All parameters: %*
echo.

echo Parameter model: %1
echo Parameter datatype: %2
echo Parameter mode: %3
echo.


echo "python benchmarks\dynamo\huggingface.py --%%3 -d xpu -n10 --inference --backend=eager --cold-start-latency --%%2 --only %%1 "

python benchmarks\dynamo\huggingface.py --%%3 -d xpu -n10 --inference --backend=eager --cold-start-latency --%%2 --only %%1