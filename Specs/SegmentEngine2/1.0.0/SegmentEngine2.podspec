Pod::Spec.new do |s|
    s.name                  = "SegmentEngine2"
    s.version               = "1.0.0"
    s.summary               = "Integration library for Factual's Engine SDK and the Segment iOS SDK"
    s.homepage              = "https://www.factual.com/products/engine"
    s.license               = "MIT"
    s.author                = { "Factual Inc" => "mobile@factual.com" }
    s.platform              = :ios
    s.source                = { :http => "https://factual.bintray.com/files-internal/segment-engine-ios-#{s.version}.tar.gz", :flatten => true }
    s.source_files          = "*.{h,m}"
    s.ios.deployment_target = "8.0"
    s.static_framework      = true
    s.dependency "FactualEngineSDK", ">= 10.0.0"
    s.dependency "Analytics"
    s.xcconfig              = { 'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/FactualEngineSDK' }
end
