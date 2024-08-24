require "ruby-progressbar"

class Dorian
  class Progress
    FORMATS = {
      full: "%a |%b%i| %p%% %t | %c/%C | %e",
      minimal: nil
    }

    def self.create(total: nil, format: :full, output: nil)
      format = FORMATS.fetch(format.to_sym) if format
      ProgressBar.create(total:, format:, output:)
    end
  end
end
