# `dorian-progress`

Small wrapper for creating Dorian progress bars.

## Install

```bash
gem install dorian-progress
```

Also included in the aggregate gem:

```bash
gem install dorian
```

## Usage

```bash
progress -h
```

Run `progress -h` for generated option details and `progress -v` for the installed version.

## Notes

- The executable only exposes help/version. The useful API is `Dorian::Progress.create`.

## Examples

### Create a progress bar

```ruby
require "dorian/progress"

progress = Dorian::Progress.create(total: 10, format: :minimal)
10.times { progress.increment }
```
