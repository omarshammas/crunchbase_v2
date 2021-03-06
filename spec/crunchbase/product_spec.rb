require File.join(File.dirname(__FILE__), "..", "spec_helper.rb")

module Crunchbase
  describe Product do

    describe "advanced indexing" do
      before(:all) do
        @all_products = Product.lists_for_permalink("facebook")
      end

      it "should pull from web api" do
        @all_products.per_page.should == 1000
        @all_products.current_page.should == 1
        @all_products.size.should == 16
        @all_products.results.count.should == 16
        puts @all_products.results.inspect
      end
    end
    
    # it "should pull from web api" do
    #   product = Product.get("internet-org")

    #   product.name.should == "Internet.org"
    #   product.permalink.should == "internet-org"
    # end

  end
end
