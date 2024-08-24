# frozen_string_literal: true

require "spec_helper"

class NoopStream
  def write(*args)
  end
  def flush
  end
  def tty?
  end
  def print(...)
  end
end

RSpec.describe "progress" do
  it "works" do
    Dorian::Progress.create(output: NoopStream.new)
    Dorian::Progress.create(total: 10, output: NoopStream.new)
    Dorian::Progress.create(total: 10, format: :minimal, output: NoopStream.new)
    Dorian::Progress.create(format: :full, output: NoopStream.new)
  end
end
