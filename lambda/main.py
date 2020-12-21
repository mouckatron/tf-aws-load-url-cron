
import os
import requests

def lambda_handler(event, context):

    url = os.environ.get('URL')
    requests.get(url)

if __name__ == '__main__':
    lambda_handler(None, None)
