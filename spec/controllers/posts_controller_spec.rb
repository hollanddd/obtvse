require 'spec_helper'

describe PostsController do
  render_views
  
  describe "GET 'new'" do
    before(:each) do
      @user = test_sign_in(Factory(:user))
    end
    
    it "returns http success" do
      get 'new'
      response.should be_success
    end
    
    it "it should have the right title" do
      get 'new'
      response.should have_selector("title", :content => "New blog post")
    end
  end
  
  describe "POST 'create'" do
    before(:each) do
      @user = test_sign_in(Factory(:user))
    end
    
    describe "failure" do
      before(:each) do
        @attr = {:title => "", :body => "", :user_id => ""}
      end
      
      it "should not create a post" do
        lambda do
          post :create, :post => @attr
        end.should_not change(Post, :count)
      end
      
      it "should render the new page" do
        post :create, :post => @attr
        response.should render_template('new')
      end
    end
    
    describe "success" do
      
      before(:each) do
        @attr = {:title => "Sample Title", :body => "Sample body of post", :user_id => 1}
      end
      
      it "should create a new post" do
        lambda do
          post :create, :post => @attr
          end.should change(Post, :count).by(1)
      end
      
      it "should render the post page"
      
      it "should have a success method"
    end
  end
  
  describe "GET 'show'" do
    before(:each) do
      @user = test_sign_in(Factory(:user))
    end
    
    before(:each) do
      @post = Factory(:post)
    end
    
    it "returns http success" do
      get :show, :id => @post
      response.should be_success
    end
    
    it "should find the right post" do
      get :show, :id => @post
      assigns(:post).should == @post
    end
  end
    

end
