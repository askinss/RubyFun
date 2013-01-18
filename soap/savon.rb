#coding: utf-8
require "savon"
require "json"

class Sa  
  module Ts
   HTTPI.log = false  
   Savon.configure do |config|
      puts 'eeeeeeeeeee'
      config.soap_version = 1
      config.env_namespace = :s
    end 
    @@wsdlPath= File.expand_path("../MonoScmPrinterServicewsdl.xml", __FILE__)
    
  def self.dosoap 
    client = Savon.client do |wsdl,http|
    # wsdl.document="http://localhost:9000/MonoScmPrinterService/GenDNPdfService/wsdl"
    wsdl.document=@@wsdlPath
    end
    # client.http.read_timeout = 1
    # client.http.open_timeout =0
    # puts client.wsdl.soap_actions
    # puts client.object_id
    response = client.request :generate_dn_pdf do |soap|
      soap.input = ["GenerateDNPdf", {xmlns: "http://tempuri.org/"}]
      soap.body={
        :dnJson=>"{\"key\":\"DN0001\",\"parentKey\":\"DN0001\"}"
             }
        # soap.body = "<dnJson>{\"key\":\"DN00001\",\"parentKey\":null}</dnJson><packJson>[{\"key\":\"Pack0001\",\"parentKey\":\"DN00001\"},
        # {\"key\":\"Pack0002\",\"parentKey\":\"DN00001\"}]</packJson>"
    end
    
    if response.success?
      puts response.to_hash
    end    
    res=client.request :generate_dn_pack_pdf do |soap|
     soap.input = ["GenerateDNPackPdf", {xmlns: "http://tempuri.org/"}]
      soap.body={
         :packsJson=>"[{\"key\":\"PACK0001\",\"parentKey\":\"DN0001\"},{\"key\":\"PACK0001\",\"parentKey\":\"DN0001\"}
        ,{\"key\":\"PACK0001\",\"parentKey\":\"DN0001\"},{\"key\":\"PACK0001\",\"parentKey\":\"DN0001\"},{\"key\":\"PACK0001\",\"parentKey\":\"DN0001\"}
        ,{\"key\":\"PACK0001\",\"parentKey\":\"DN0001\"},{\"key\":\"PACK0001\",\"parentKey\":\"DN0001\"},{\"key\":\"PACK0001\",\"parentKey\":\"DN0001\"}]"
      }
    end
      if res.success?
         puts res.to_hash
      end
  end
end
end

Sa::Ts.dosoap
Sa::Ts::dosoap
