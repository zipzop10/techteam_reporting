require 'spec_helper'

describe "Task Pages" do
	
	subject {page}
	
	describe "New task page" do
		before {visit root_path}
		it { should have_selector('h1',    text: 'New Task') }
		it { should have_selector('title', text: "Technical Team Tasking | New Task") }
	
	end 
  
describe "create new task" do
	before { visit root_path }

	let(:submit) { "Create a Task" }

    describe "with invalid information" do
      it "should not create a task" do
        expect { click_button submit }.not_to change(Task, :count)
      end
    end

    describe "with valid information" do
      before do
      	      fill_in "Title",         with: "A new tech team task"
      	      fill_in "Notes",        with: "This is a new task for the tech team "
      	      fill_in "Team",     with: "Operations"
      	      fill_in "DateRequired", with: "1 jan 2013"
      	      fill_in "Type", with: "Development"
     
      end

      it "should create a task" do
        expect { click_button submit }.to change(Task, :count).by(1)
      end
    end
  
	
end	
	
  
end
