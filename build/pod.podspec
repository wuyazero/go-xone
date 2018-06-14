Pod::Spec.new do |spec|
  spec.name         = 'GoX1'
  spec.version      = '{{.Version}}'
  spec.license      = { :type => 'GNU Lesser General Public License, Version 3.0' }
  spec.homepage     = 'https://github.com/wuyazero/go-xone'
  spec.authors      = { {{range .Contributors}}
		'{{.Name}}' => '{{.Email}}',{{end}}
	}
  spec.summary      = 'iOS Xonechain Client'
  spec.source       = { :git => 'https://github.com/wuyazero/go-xone.git', :commit => '{{.Commit}}' }

	spec.platform = :ios
  spec.ios.deployment_target  = '9.0'
	spec.ios.vendored_frameworks = 'Frameworks/GoX1.framework'

	spec.prepare_command = <<-CMD
    curl https://gox1store.blob.core.windows.net/builds/{{.Archive}}.tar.gz | tar -xvz
    mkdir Frameworks
    mv {{.Archive}}/GoX1.framework Frameworks
    rm -rf {{.Archive}}
  CMD
end
