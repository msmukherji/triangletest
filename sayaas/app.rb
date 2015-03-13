require 'sinatra/base'
require 'pry'

def speak voice, text
  `say -v#{voice} #{text}`
end

class SpeakApp < Sinatra::Base

  # # set :bind, '0.0.0.0'
  # # set :port, 3000

  voices = %w@Agnes Kathy Princess Vicki Victoria Alex Bruce Fred Junior Ralph Albert Bad\ News Bahh Boing Bubbles Cellos Deranged Good\ News Hysterical Pipe\ Organ Trinoids Whisper Zarvox@
  voices.each do |voice|
    post "/#{voice.downcase}" do
      text = params[:phrase]
      speak voice, text
    end
  end
end

SpeakApp.run!
#`say -v "bad news" "a wizard has turned you into a whale"`