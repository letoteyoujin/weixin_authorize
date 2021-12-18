# encoding: utf-8
module WeixinAuthorize
  module Api
    module MiniUser
    # http://mp.weixin.qq.com/wiki/index.php?title=生成带参数的二维码

      # 获取用户手机号相关信息
      def get_phone(code)
        body = { code: code }
        http_post(phone_base_url, body)
      end

      def get_plugin_openpid(code)
        body = { code: code }
        http_post(phone_base_url, body)
      end

      def check_encrypted(encrypted_msg_hash)
        body = { encrypted_msg_hash: encrypted_msg_hash }
        http_post(phone_base_url, body)
      end

      private

      def phone_base_url
        "/wxa/business/getuserphonenumber"
      end
    end
  end
end
