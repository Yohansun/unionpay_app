
该gem是一个银联手机控件支付接口
=====

Installation
------

Add this line to your application's Gemfile:

gem 'unionpay_app', '~> 0.7.0'
or development version

$ bundle
Usage

Config
------
```ruby
UnionpayApp.front_url = Settings.union.frontUrl
UnionpayApp.back_url = Settings.union.backUrl
UnionpayApp.mer_id = Settings.union.merId
UnionpayApp.uri = Settings.union.uri
UnionpayApp.private_key = Settings.union.private_key
UnionpayApp.cer = Settings.union.cer
UnionpayApp.cert_id = Settings.union.certId
```
Generate payment url for web

* 1. 银联签名 返回hash {time: "交易时间", sign: "post给银联的hash"}
###  UnionpayApp::Service.sign txtAmt, orderId 
###  params = UnionpayApp::Service.sign("100", "20150415122801272")
* 2. #发送给银联post请求 换取tn值
###    UnionpayApp::Service.post UnionpayApp::Service.sign(txtAmt, orderId)
###    UnionpayApp::Service.post(params)
* 3. #银联验签：当请求银联获取tn后，或者请求银联查询交易后，或者当交易完成后，银联通过backUrl、frontUrl返回你结果时要进行验签
###  UnionpayApp::Service.verify params
* 4. #查询交易是否成功 传入参数order_id
###  UnionpayApp::Service.query order_id, UnionpayApp::Service.sign(txtAmt, orderId)[:time] 
###  UnionpayApp::Service.query "20150415122801272", params[:time]
