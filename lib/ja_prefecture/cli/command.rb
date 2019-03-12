require "ja_prefecture/cli/constant"
require "thor"

module JaPrefecture
  module CLI
    class Command < Thor
      desc "list", "Prefectures in Japan"
      option "code", aliases: "c", type: :numeric
      def list
        code = options["code"]
        if code
          PREFECTURE_MAP.map do |k, prefecture|
            if prefecture[:code] == code
              suffix = fetch_suffix(k)
              puts prefecture[:name].to_s + suffix.to_s
            end
          end
        else
          PREFECTURE_MAP.map do |k, v|
            suffix = fetch_suffix(k)
            puts v[:name].to_s + suffix.to_s
          end
        end
      end

      no_commands do
        private def fetch_suffix(key)
          IRREGULAR_SUFFIX_MAP.has_key?(key.to_sym) ? IRREGULAR_SUFFIX_MAP[key.to_sym] : "県"
        end
      end
    end
  end
end