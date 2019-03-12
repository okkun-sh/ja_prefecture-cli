require "spec_helper"

RSpec.describe JaPrefecture::CLI::Command do

  let(:command) { JaPrefecture::CLI::Command.new }
  describe "#list" do
    before do
      @prefectures = "北海道\n青森県\n岩手県\n宮城県\n秋田県\n山形県\n福島県\n茨城県\n栃木県\n群馬県\n埼玉県\n千葉県\n東京都\n神奈川県\n新潟県\n富山県\n石川県\n福井県\n山梨県\n長野県\n岐阜県\n静岡県\n愛知県\n三重県\n滋賀県\n京都府\n大阪府\n兵庫県\n奈良県\n和歌山県\n鳥取県\n島根県\n岡山県\n広島県\n山口県\n徳島県\n香川県\n愛媛県\n高知県\n福岡県\n佐賀県\n長崎県\n熊本県\n大分県\n宮崎県\n鹿児島県\n沖縄県\n"
    end
    it "fetch prefectures" do
      expect{ command.list }.to output(@prefectures).to_stdout
    end
  end
end
