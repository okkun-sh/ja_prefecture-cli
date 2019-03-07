require "ja_prefecture/cli/constant"
require "thor"

module JaPrefecture
  module CLI
    class Command < Thor
      desc "list", "Prefectures in Japan"
      def list
        puts PREFECTURES.map(&:to_s)
      end
    end
  end
end