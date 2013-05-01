require 'spec_helper'

describe ApplicationHelper  do
	describe "full_title" do
        it "should include the page title" do
        	full_title("foo").should =~ /foo/
        end
        it "should include the base title" do
        	full_title("foo").should =~ /^Hot Golf Club Reviews/
        end

        it "should not include a bar for the home page" do
        	full_title("").should_not =~/\|/
        end
    end
	
end