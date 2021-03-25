(defsystem "example" 
  :class :package-inferred-system
  :author "Alexander Artemenko"
  :license "Unlicense"
  :pathname "src"
  ;; Documentation Builder can use this URL
  ;; to build links to the sources:
  :homepage "https://github.com/cl-doc-systems/litterae"
  :description "This description will be used only if long-description is missing"
  :long-description "Long description."
  :depends-on ("example/app"))

