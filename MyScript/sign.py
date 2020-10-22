import requests
import time
import hashlib

name = "李俊贤"
id = "10195101505"
res = requests.put("https://anti-epidemic.ecnu.edu.cn/clock/record", json={
    "number": id,
    "location": "在学校",
    "health": "健康，未超过37.3",
    "recordTime": int(time.time() * 1000),
    "token": hashlib.md5(f"{name}{id}ecnu1024".encode()).hexdigest()
}).json()

print(res)