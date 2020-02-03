from flask import Flask,request,abort
from linebot import LineBotApi,WebhookHandler
from linebot.exceptions import InvalidSignatureError
from linebot.models import MessageEvent,TextMessage,TextSendMessage
app = Flask(__name__)
LINE_BOT_ACCESS_TOKEN = 'xlbWhW1uaP4qqP1kQbwkDEohq44x3kslzC0yvQN8ki0PB0kuk74c97AfNRdvXMuwuxOAVDAyZcGpGk37h8yaD5uwwR13edfPA1rHtC5E/SfRAmg27MEI/LrNgLcKRSbH5utGuI5DPbipQ5v4NuMv/AdB04t89/1O/w1cDnyilFU='
LINE_BOT_SECRET_KEY = '99df6d4aa947dbfeaac1b4732e9c01d7'
line_bot_api = LineBotApi(LINE_BOT_ACCESS_TOKEN)
handler = WebhookHandler(LINE_BOT_SECRET_KEY)
@app.route("/callback", methods = ['POST'])
def callback() : 
    signature = request.headers['X-Line-Signature'] 
    body = request.get_data(as_text = True)
    try : 
        handler.handle(body, signature)
    except InvalidSignatureError : 
        abort(400)
    return 'OK' 

@handler.add(MessageEvent, message = TextMessage)
def handle_message(event) : 
    if event.message.text in 'comodo' :
        line_bot_api.reply_message(event.reply_token,TextSendMessage(text = 'https://www.comodo-sol.co.jp/'))
    else : 
        line_bot_api.reply_message(event.reply_token,TextSendMessage(text = event.message.text))

if __name__ == "__main__":
    app.run()
    

