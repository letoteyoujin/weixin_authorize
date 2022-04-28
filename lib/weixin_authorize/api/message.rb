# encoding: utf-8
module WeixinAuthorize
  module Api
    module Message

      # 获取message id请求体
      def msg_id(msg_id)
        msg = {
          msg_id: msg_id
        }
        http_post("/rid/get", msg)
      end
    end
  end
end
