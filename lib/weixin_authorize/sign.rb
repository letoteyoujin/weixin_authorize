# encoding: utf-8
require "monitor"
module WeixinAuthorize
  class Sign
    def self.hexdigest(token, timestamp, nonce, msg_encrypt)
      array = [token, timestamp, nonce]
      array << msg_encrypt unless msg_encrypt.nil?
      dev_msg_signature = array.compact.collect(&:to_s).sort.join
      Digest::SHA1.hexdigest(dev_msg_signature)
    end

    def self.verify?(signature, token, timestamp, nonce, msg_encrypt)
      return true unless signature
      signature == WeixinAuthorize::Sign.hexdigest(token, timestamp, nonce, msg_encrypt)
    end
  end
end
