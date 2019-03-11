require "ja_prefecture/cli/constant"
require "thor"

module JaPrefecture
  module CLI
    class Command < Thor
      desc "list", "Prefectures in Japan"
      def list
        PREFECTURE_MAP.map do |k, v|
          suffix = IRREGULAR_SUFFIX_MAP.has_key?(k.to_sym) ? IRREGULAR_SUFFIX_MAP[k.to_sym] : "県"
          puts v[:name].to_s + suffix.to_s
        end
      end
    end
  end
end