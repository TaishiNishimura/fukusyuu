{"filter":false,"title":"vision.rb","tooltip":"/sample_app_demo_api/lib/vision.rb","undoManager":{"mark":0,"position":0,"stack":[[{"start":{"row":0,"column":0},"end":{"row":43,"column":3},"action":"insert","lines":["require 'base64'","require 'json'","require 'net/https'","","module Vision","  class << self","    def get_image_data(image_file)","      # APIのURL作成","      api_url = \"https://vision.googleapis.com/v1/images:annotate?key=#{ENV['GOOGLE_API_KEY']}\"","","      # 画像をbase64にエンコード","      base64_image = Base64.encode64(open(\"#{Rails.root}/public/uploads/#{image_file.id}\").read)","","      # APIリクエスト用のJSONパラメータ","      params = {","        requests: [{","          image: {","            content: base64_image","          },","          features: [","            {","              type: 'LABEL_DETECTION'","            }","          ]","        }]","      }.to_json","","      # Google Cloud Vision APIにリクエスト","      uri = URI.parse(api_url)","      https = Net::HTTP.new(uri.host, uri.port)","      https.use_ssl = true","      request = Net::HTTP::Post.new(uri.request_uri)","      request['Content-Type'] = 'application/json'","      response = https.request(request, params)","      response_body = JSON.parse(response.body)","      # APIレスポンス出力","      if (error = response_body['responses'][0]['error']).present?","        raise error['message']","      else","        response_body['responses'][0]['labelAnnotations'].pluck('description').take(3)","      end","    end","  end","end"],"id":1}]]},"ace":{"folds":[],"scrolltop":456,"scrollleft":0,"selection":{"start":{"row":43,"column":3},"end":{"row":43,"column":3},"isBackwards":false},"options":{"guessTabSize":true,"useWrapMode":false,"wrapToView":true},"firstLineState":0},"timestamp":1633155995730,"hash":"293b2df0341125320c255e0663f52d017beaaaaa"}