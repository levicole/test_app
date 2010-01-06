# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{actionmailer}
  s.version = "3.0.pre"

  s.required_rubygems_version = Gem::Requirement.new("> 1.3.1") if s.respond_to? :required_rubygems_version=
  s.authors = ["David Heinemeier Hansson"]
  s.autorequire = %q{action_mailer}
  s.date = %q{2010-01-05}
  s.description = %q{Makes it trivial to test and deliver emails sent from a single service layer.}
  s.email = %q{david@loudthinking.com}
  s.files = ["CHANGELOG", "README", "MIT-LICENSE", "lib/action_mailer/adv_attr_accessor.rb", "lib/action_mailer/base.rb", "lib/action_mailer/delivery_method/file.rb", "lib/action_mailer/delivery_method/sendmail.rb", "lib/action_mailer/delivery_method/smtp.rb", "lib/action_mailer/delivery_method/test.rb", "lib/action_mailer/delivery_method.rb", "lib/action_mailer/deprecated_body.rb", "lib/action_mailer/mail_helper.rb", "lib/action_mailer/quoting.rb", "lib/action_mailer/railtie.rb", "lib/action_mailer/test_case.rb", "lib/action_mailer/test_helper.rb", "lib/action_mailer/tmail_compat.rb", "lib/action_mailer/vendor/text-format-0.6.3/text/format.rb", "lib/action_mailer/vendor/text_format.rb", "lib/action_mailer/version.rb", "lib/action_mailer.rb"]
  s.homepage = %q{http://www.rubyonrails.org}
  s.require_paths = ["lib"]
  s.requirements = ["none"]
  s.rubyforge_project = %q{actionmailer}
  s.rubygems_version = %q{1.3.5}
  s.summary = %q{Service layer for easy email delivery and testing.}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<actionpack>, ["= 3.0.pre"])
      s.add_runtime_dependency(%q<mail>, ["~> 1.5.0"])
    else
      s.add_dependency(%q<actionpack>, ["= 3.0.pre"])
      s.add_dependency(%q<mail>, ["~> 1.5.0"])
    end
  else
    s.add_dependency(%q<actionpack>, ["= 3.0.pre"])
    s.add_dependency(%q<mail>, ["~> 1.5.0"])
  end
end
