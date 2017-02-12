module Kyougi
  module Commands
    class Generate < Thor::Group
      include Thor::Actions

      source_root File.expand_path('../../../', File.dirname(__FILE__))

      def self.subcommand_help(cmd)
      end

      def copy_template
        template(
          File.join('templates','template.json'),
          'template.json'
        )
      end

      def create_http_dir
        directory(
          File.join('templates', 'http'),
          'http'
        )
      end

    end
  end
end
