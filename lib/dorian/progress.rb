# frozen_string_literal: true

require "ruby-progressbar"

class Dorian
  class Progress
    FORMATS = { full: "%a |%b%i| %p%% %t | %c/%C | %e", minimal: nil }.freeze

    def self.create(total: nil, format: nil, output: nil)
      format = FORMATS.fetch((format || :full).to_sym) if format
      ProgressBar.create(total:, format:, output:)
    end
  end
end
