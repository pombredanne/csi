# frozen_string_literal: true
require 'anemone'

module CSI
  module WWW
    # This plugin supports Pastebin actions.
    module Spider
      # Supported Method Parameters::
      # CSI::WWW::Spider.crawl(
      #   target_fqdn: 'required - target fqdn to spider',
      #   results_path: 'required - path to save spider results',
      #   proxy: 'optional - proxy to spider through e.g. http://127.0.0.1:8080'
      # )

      @@logger = CSI::Plugins::CSILogger.create

      public

      def self.crawl(opts = {})
        # TODO: Add AuthN Support
        target_fqdn = opts[:target_fqdn].to_s.scrub.strip.chomp
        results_path = opts[:results_path].to_s.scrub.strip.chomp

        proxy = opts[:proxy].to_s.scrub.strip.chomp unless opts[:proxy].nil?

        # Colors!
        green = "\e[32m"
        yellow = "\e[33m"
        end_of_color = "\e[0m"

        puts "#{green}Spidering Target FQDN: #{target_fqdn}#{end_of_color}"
        File.open(results_path, 'w') do |f|
          if proxy
            proxy_uri = URI.parse(proxy)
            Anemone.crawl(target_fqdn, { proxy_host: proxy_uri.host, proxy_port: proxy_uri.port } ) do |anemone|
              anemone.on_every_page do |page|
                puts "#{yellow}Discovered: #{page.url}#{end_of_color}"
                f.puts(page.url)
              end
            end
          else
            Anemone.crawl(target_fqdn) do |anemone|
              anemone.on_every_page do |page|
                puts "#{green}Discovered: #{page.url}#{end_of_color}"
                f.puts(page.url)
              end
            end
          end
        end
      rescue => e
        raise e
      end

      # Author(s):: Jacob Hoopes <jake.hoopes@gmail.com>

      public

      def self.authors
        authors = "AUTHOR(S):
          Jacob Hoopes <jake.hoopes@gmail.com>
        "

        authors
      end

      # Display Usage for this Module

      public

      def self.help
        puts %{USAGE:
          #{self}.crawl(
            target_fqdn: 'required - target fqdn to spider',
            results_path: 'required - path to save spider results',
            proxy: 'optional - proxy to spider through e.g. http://127.0.0.1:8080'
          )

          #{self}.authors
        }
      end
    end
  end
end
