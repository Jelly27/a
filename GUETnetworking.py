import requests

ID = ""
PW = ""


def is_online() -> bool:
    try:
        requests.get('https://www.baidu.com/favicon.ico', timeout=2)
        return True
    except:
        return False


def login():
    if not is_online():
        url = "http://10.0.1.5/drcom/login"
        params = {
            "callback": "dr1003",
            "DDDDD": ID,
            "upass": PW,
            "0MKKey": "123456"
        }
        try:
            r = requests.request("GET", url, params=params)
            requests.get("https://api.day.app/***/实验室网络重连/" +
                         r.text.strip().replace("/", "\\"), params={"level": "passive"})
        except:
            print('Fail to login!')
    else:
        return 'Already online!'


if __name__ == '__main__':
    login()
