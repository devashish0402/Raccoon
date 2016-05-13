platform :ios, '8.0'
use_frameworks!

target 'Raccoon' do
	pod 'Alamofire', '~> 3.4'
    
    target 'RaccoonTests'
end


target 'RaccoonCoreData' do
    pod 'Groot', '~> 1.2'
    
    target 'RaccoonCoreDataTests' do
        pod 'Alamofire', '~> 3.4'
        pod 'BNRCoreDataStack', '~> 1.2'
    end
end


target 'RaccoonRealm' do
    pod 'RealmSwift', '~> 0.102'
    
    target 'RaccoonRealmTests' do
        pod 'Alamofire', '~> 3.4'
    end
end

target 'RaccoonClient' do
    pod 'PromiseKit', '~> 3.1'
    
    target 'RaccoonClientTests' do
        pod 'Alamofire', '~> 3.4'
        pod 'OHHTTPStubs/Swift', '~> 5.0'
    end
end

