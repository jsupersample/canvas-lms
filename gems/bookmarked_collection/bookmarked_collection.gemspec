# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

unless defined?(CANVAS_RAILS3)
  require File.expand_path("../../../config/canvas_rails3", __FILE__)
end

Gem::Specification.new do |spec|
  spec.name          = "bookmarked_collection"
  spec.version       = "1.0.0"
  spec.authors       = ["Raphael Weiner", "Nick Cloward"]
  spec.email         = ["rweiner@pivotallabs.com", "nickc@instructure.com"]
  spec.summary       = %q{Bookmarked collections for Canvas}

  spec.files         = Dir.glob("{lib}/**/*") + %w(Rakefile)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  if CANVAS_RAILS3
    spec.add_dependency "folio-pagination", "0.0.7"
    spec.add_dependency "will_paginate", "3.0.4"
    spec.add_dependency "rails", "~> 3.2"
  else
    spec.add_dependency "folio-pagination-legacy", "0.0.3"
    spec.add_dependency "will_paginate", "2.3.15"
    spec.add_dependency "fake_arel", "1.5.0"
    spec.add_dependency "rails", "~> 2.3"
  end

  spec.add_dependency "paginated_collection"
  spec.add_dependency "json_token"

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "sqlite3"

end
