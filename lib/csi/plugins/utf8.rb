# frozen_string_literal: true

module CSI
  module Plugins
    # This plugin was created to generate UTF-8 characters for fuzzing
    module UTF8
      @@logger = CSI::Plugins::CSILogger.create

      # Supported Method Parameters::
      # CSI::Plugins::UTF8.generate_by_range(
      #   from: 'required - integer to start from',
      #   to: 'required - integer to end UTF-8 generation'
      # )

      public

      def self.generate_by_range(opts = {})
        from = opts[:from].to_i
        to = opts[:to].to_i

        utf8_arr = []

        (from..to).each do |i|
          utf8_hash = {}
          this_hex = format('%04x', i)
          this_dec = format('%04d', i)
          utf8_hash[:hex] = this_hex
          utf8_hash[:dec] = this_dec
          utf8_hash[:utf8] = [i].pack('U*')

          utf8_arr.push(utf8_hash)
        end

        return utf8_arr
      rescue => e
        return e.message
      end

      # Supported Method Parameters::
      # CSI::Plugins::UTF8.c0_controls_latin_basic

      public

      def self.c0_controls_latin_basic
        utf8_hash = generate_by_range(from: 0, to: 127)

        utf8_hash
      rescue => e
        return e.message
      end

      # Supported Method Parameters::
      # CSI::Plugins::UTF8.c1_controls_latin_supplement

      public

      def self.c1_controls_latin_supplement
        utf8_hash = generate_by_range(from: 128, to: 255)

        utf8_hash
      rescue => e
        return e.message
      end

      # Supported Method Parameters::
      # CSI::Plugins::UTF8.latin_extended_a

      public

      def self.latin_extended_a
        utf8_hash = generate_by_range(from: 256, to: 383)

        utf8_hash
      rescue => e
        return e.message
      end

      # Supported Method Parameters::
      # CSI::Plugins::UTF8.latin_extended_b

      public

      def self.latin_extended_b
        utf8_hash = generate_by_range(from: 384, to: 591)

        utf8_hash
      rescue => e
        return e.message
      end

      # Supported Method Parameters::
      # CSI::Plugins::UTF8.spacing_modifiers

      public

      def self.spacing_modifiers
        utf8_hash = generate_by_range(from: 688, to: 767)

        utf8_hash
      rescue => e
        return e.message
      end

      # Supported Method Parameters::
      # CSI::Plugins::UTF8.diacritical_marks

      public

      def self.diacritical_marks
        utf8_hash = generate_by_range(from: 768, to: 879)

        utf8_hash
      rescue => e
        return e.message
      end

      # Supported Method Parameters::
      # CSI::Plugins::UTF8.greek_coptic

      public

      def self.greek_coptic
        utf8_hash = generate_by_range(from: 880, to: 1023)

        utf8_hash
      rescue => e
        return e.message
      end

      # Supported Method Parameters::
      # CSI::Plugins::UTF8.cyrillic_basic

      public

      def self.cyrillic_basic
        utf8_hash = generate_by_range(from: 1024, to: 1279)

        utf8_hash
      rescue => e
        return e.message
      end

      # Supported Method Parameters::
      # CSI::Plugins::UTF8.cyrillic_supplement

      public

      def self.cyrillic_supplement
        utf8_hash = generate_by_range(from: 1280, to: 1327)

        utf8_hash
      rescue => e
        return e.message
      end

      # Supported Method Parameters::
      # CSI::Plugins::UTF8.punctuation

      public

      def self.punctuation
        utf8_hash = generate_by_range(from: 8192, to: 8303)

        utf8_hash
      rescue => e
        return e.message
      end

      # Supported Method Parameters::
      # CSI::Plugins::UTF8.currency_symbols

      public

      def self.currency_symbols
        utf8_hash = generate_by_range(from: 8352, to: 8399)

        utf8_hash
      rescue => e
        return e.message
      end

      # Supported Method Parameters::
      # CSI::Plugins::UTF8.letterlike_symbols

      public

      def self.letterlike_symbols
        utf8_hash = generate_by_range(from: 8448, to: 8527)

        utf8_hash
      rescue => e
        return e.message
      end

      # Supported Method Parameters::
      # CSI::Plugins::UTF8.arrows

      public

      def self.arrows
        utf8_hash = generate_by_range(from: 8592, to: 8703)

        utf8_hash
      rescue => e
        return e.message
      end

      # Supported Method Parameters::
      # CSI::Plugins::UTF8.math_operators

      public

      def self.math_operators
        utf8_hash = generate_by_range(from: 8704, to: 8959)

        utf8_hash
      rescue => e
        return e.message
      end

      # Supported Method Parameters::
      # CSI::Plugins::UTF8.box_drawings

      public

      def self.box_drawings
        utf8_hash = generate_by_range(from: 9472, to: 9599)

        utf8_hash
      rescue => e
        return e.message
      end

      # Supported Method Parameters::
      # CSI::Plugins::UTF8.block_elements

      public

      def self.block_elements
        utf8_hash = generate_by_range(from: 9600, to: 9631)

        utf8_hash
      rescue => e
        return e.message
      end

      # Supported Method Parameters::
      # CSI::Plugins::UTF8.geometric_shapes

      public

      def self.geometric_shapes
        utf8_hash = generate_by_range(from: 9632, to: 9727)

        utf8_hash
      rescue => e
        return e.message
      end

      # Supported Method Parameters::
      # CSI::Plugins::UTF8.misc_symbols

      public

      def self.misc_symbols
        utf8_hash = generate_by_range(from: 9728, to: 9983)

        utf8_hash
      rescue => e
        return e.message
      end

      # Supported Method Parameters::
      # CSI::Plugins::UTF8.dingbats

      public

      def self.dingbats
        utf8_hash = generate_by_range(from: 9984, to: 10_175)

        utf8_hash
      rescue => e
        return e.message
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
        puts "USAGE:
          utf8_chars = #{self}.generate_by_range(
            from:> 'required - integer to start from',
            to:> 'required - integer to end UTF-8 generation'
          )

          #{self}.c0_controls_latin_basic

          #{self}.c1_controls_latin_supplement

          #{self}.latin_extended_a

          #{self}.latin_extended_b

          #{self}.spacing_modifiers

          #{self}.diacritical_marks

          #{self}.greek_coptic

          #{self}.cyrillic_basic

          #{self}.cyrillic_supplement

          #{self}.punctuation

          #{self}.currency_symbols

          #{self}.letterlike_symbols

          #{self}.arrows

          #{self}.math_operators

          #{self}.box_drawings

          #{self}.block_elements

          #{self}.geometric_shapes

          #{self}.misc_symbols

          #{self}.dingbats

          #{self}.authors
        "
      end
    end
  end
end
