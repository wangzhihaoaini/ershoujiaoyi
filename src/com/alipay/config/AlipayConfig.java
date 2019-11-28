package com.alipay.config;

import java.io.FileWriter;
import java.io.IOException;

/* *
 *类名：AlipayConfig
 *功能：基础配置类
 *详细：设置帐户有关信息及返回路径
 *修改日期：2017-04-05
 *说明：
 *以下代码只是为了方便商户测试而提供的样例代码，商户可以根据自己网站的需要，按照技术文档编写,并非一定要使用该代码。
 *该代码仅供学习和研究支付宝接口使用，只是提供一个参考。
 */

public class AlipayConfig {

//↓↓↓↓↓↓↓↓↓↓请在这里配置您的基本信息↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓

    // 应用ID,您的APPID，收款账号既是您的APPID对应支付宝账号
    public static String app_id = "2016092600598107";

    // 商户私钥，您的PKCS8格式RSA2私钥
    public static String merchant_private_key = "MIIEvwIBADANBgkqhkiG9w0BAQEFAASCBKkwggSlAgEAAoIBAQCF6PyXawhf6HnFCpYlWA7K6XXd1kBzs7Esoe7Uiq/lxM4lNHRl2Vhztp2sg2F2seogk4DbkZxUiB75y2ClMJxBUF66u7WN68e6HRSe1w6zc6HKjibFAR1taaqRSKCmH/eDqg0YX/+hq2FwBHNj+p1uKkt/t1TVW+52hv7VvsYF+A1vc+UWwSqq+X9Gsc5Uab4sHC+VeKNrZZ1KTPJBmQ7sAulF5eBrwGf5MfFofo01NKQoI/9BkNulEUC57OoVdrLHBVR5Fm0kcSafzzzJZDSTFGVrimYvIv+sLyB/VrkQ+igF6XhjDTcAsG6HV3+ow4IIIlVL+HG8x7ULpYdApd4jAgMBAAECggEBAIVZI9/tF+PZ7xjGmAoMDH8HyPXl2zzcnfxiLSC+ErduKhJmj9q0ex6PpagbFL1MImfaOyFreQ+8lYwOeOlG5PMtg4fUUNFJEBVHzDb41YziAyVgNT9NAu7noJEYj9GeV65ncq7pOfjWXytbY0UWVhtURuahu/rTlz205KQZW7yoeSnIEEAVuwdYHh4jGhEZLmrpcEESFJrmXeoRUhedI5DU12Mr8wR5q0Fx0/X3NMUfr3JK/gwhR8gCml8jR0oHUbrPbTPoRQvBpscPP1ZiL052h4TVq23yiPU+/Q6SLy32YAseNF8AhfeLgU+o7zADGfioRX3swrUwNINwBV7q2dECgYEA0+pV782xNnk5ZWHoPn4oBhBhLJ470fLF0LpLfpxgPeJQ4Deak2EvNXnCbNHH8WZSo/4OvQibSQr/8pd7VgISEWXl3lXSmi4mGJAELCGvhn9NgbwAA7QgeVgEsQZMlK0h/ZCpPprom1F50s497vwJWza4B6Rk4jzAX4ny/u6eRScCgYEAocRwgZsZx5jxZzNGWTGSNL0Hy/vhdAGbcRWpRRp5FKQU3p7csni0ZG/Fq2RzpWbSKqWS/nVO1jspV3q0ZSngFcGNg+qtyWwOZpva80Kc9P8I2k4i8YB4Z5d8iwz/Qv50F1dL6s5oa0taQQTaZjhXSwZox+Ax6Fks1fGFr4MJ1KUCgYEAgtdc2AMYN5oBZiddTbh23cefN/060hYjLQzZMAM9KPhjFw0902Fd1JapBKdB3DphK//g+bYmqqKwBQiijigZH8TaeLxkm+2CeAfzi4wA4/oV0NRS7fZ5VnKR8vsArYt4QSbgWFcs5zkXDqFoe/YBkN/oIE/QOh9oZ5S1A9IwxmECgYBANXWmrAaeiCGBogORUbDDyCg5GkBRyHWHfF6UtD5NKBe0iX/2QxzvJMJkFlok09wl21SuNafWNuNg+q5x3R455HqkWtkiMwbASaqtlcoxIK3F4O/TxfeEvsdLdhw33kH8JcVXbRhbRiyL1D5QBpr3h5K9i0qj/Alk3hn/IVcclQKBgQCGjMNc6feGiI1bOYV3VoITF2MKJhyWwRKm0f8Vv67Isy1mctpVxI9SBx7WkrPBBOHP0D51JaNAjn49H0guA5MaC+zpCAlTHz00UFCwPsz6Wh/juFy4pXyINJ7uy0BMU/tyPq3+pfeQ++rPP1vd4fSHRuD7dApxtsz9CkV0LN1zZQ==";

    // 支付宝公钥,查看地址：https://openhome.alipay.com/platform/keyManage.htm 对应APPID下的支付宝公钥。
    public static String alipay_public_key = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAhej8l2sIX+h5xQqWJVgOyul13dZAc7OxLKHu1Iqv5cTOJTR0ZdlYc7adrINhdrHqIJOA25GcVIge+ctgpTCcQVBeuru1jevHuh0UntcOs3Ohyo4mxQEdbWmqkUigph/3g6oNGF//oathcARzY/qdbipLf7dU1Vvudob+1b7GBfgNb3PlFsEqqvl/RrHOVGm+LBwvlXija2WdSkzyQZkO7ALpReXga8Bn+THxaH6NNTSkKCP/QZDbpRFAuezqFXayxwVUeRZtJHEmn888yWQ0kxRla4pmLyL/rC8gf1a5EPooBel4Yw03ALBuh1d/qMOCCCJVS/hxvMe1C6WHQKXeIwIDAQAB";

    // 服务器异步通知页面路径  需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
    public static String notify_url = "http://mywebserver.viphk.ngrok.org/alipay.trade.page.pay-JAVA-UTF-8/notify_url.jsp";

    // 页面跳转同步通知页面路径 需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
    public static String return_url = "http://mywebserver.viphk.ngrok.org/alipay.trade.page.pay-JAVA-UTF-8/return_url.jsp";

    // 签名方式
    public static String sign_type = "RSA2";

    // 字符编码格式
    public static String charset = "utf-8";

    // 支付宝网关
    public static String gatewayUrl = "https://openapi.alipaydev.com/gateway.do";

    // 支付宝网关
    public static String log_path = "C:\\";


//↑↑↑↑↑↑↑↑↑↑请在这里配置您的基本信息↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑

    /**
     * 写日志，方便测试（看网站需求，也可以改成把记录存入数据库）
     *
     * @param sWord 要写入日志里的文本内容
     */
    public static void logResult(String sWord) {
        FileWriter writer = null;
        try {
            writer = new FileWriter(log_path + "alipay_log_" + System.currentTimeMillis() + ".txt");
            writer.write(sWord);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (writer != null) {
                try {
                    writer.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}

