该gem是一个银联手机控件支付接口
1. #银联签名 返回hash
	UnionpayApp::Service.sign txtAmt, orderId 
2. #发送给银联post请求 换取tn值
    UnionpayApp::Service.post UnionpayApp::Service.sign txtAmt, orderId 
3. #银联验签：当请求银联获取tn后，或者请求银联查询交易后，或者当交易完成后，银联通过backUrl、frontUrl返回你结果时要进行验签
	UnionpayApp::Service.unionpay_verify params
4. #查询交易是否成功 传入参数order_id
	UnionpayApp::Service.unionpay_query order_id# unionpay_app