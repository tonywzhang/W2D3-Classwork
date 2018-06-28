require 'rspec'
require 'tdd'

RSpec.describe do 
  describe "my_uniq" do
    let(:array) {[1,2,3,2,3]}
    it "returns a unique array" do
      expect(array.my_uniq).to eq(array.uniq)
    end
    
    context "when array is empty" do
      let(:arr) {[]}
      it "should return an empty array" do
        expect(arr.my_uniq).to eq([])
      end
    end
    
    context "when array contains one element" do
      let(:arr) {[1]}
      it "should return itself" do
        expect(arr.my_uniq).to eq(arr)
      end
    end
    
    describe "when dup elements are present" do
      let(:arr) {[1,2,3,2,3]}
      it "should have less elements than the original array, if dup elements are present" do
        expect(arr.length > arr.my_uniq.length).to be true
      end
    end
  end
  
  describe "two_sum" do
    subject(:arr) {[-1,0,2,-2,1]}
    it "returns pairs to be sorted dictionary-wise" do
      expect(arr.two_sum == arr.two_sum.sort).to be true
    end
    
    context "when array is empty" do
      let(:arr) {[]}
      it "should return an empty array" do
        expect(arr.two_sum).to eq([])
      end    
    end
    
    context "when array can't be summed" do
      let(:arr) {[1]}
      it "should return an empty array" do
        expect(arr.two_sum).to eq([])
      end
    end
    
    it "should properly return indices of elements that sum to zero" do
      expect(arr.two_sum).to eq([[0,4],[2,3]])
    end
  end 
  
  describe 'my_transpose' do
    
    subject(:rows) {[
    [0, 1, 2],
    [3, 4, 5],
    [6, 7, 8]
    ]}
    
    describe "works for non-square matrices" do
      let(:rows) {[[0, 1, 2],[3, 4, 5]]}
      it "should work for non-square matrices" do
        expect(rows.my_transpose).to eq([[0,3],[1,4],[2,5]])
      end
    end
    
    it 'should work' do
      expect(rows.my_transpose).to eq([[0, 3, 6], [1, 4, 7], [2, 5, 8]])
    end

  end
  
  describe 'stock_picker' do
    
    subject(:days) {[361,351, 330, 336, 349]}
    
    describe "first index should not be greater than second" do
      it "should return the proper indices" do
        result = days.stock_picker
        expect(result[0] < result[1]).to be true
      end
    end
      
    
    describe "does not return future day prior to a past day" do
      it "shouldn't simply return highest and lowest stock prices" do
        expect(days.stock_picker).to_not eq([0,2])
      end
    end
    
    context "if shitty stock" do
      let(:days) { [5, 4, 3, 2, 1] }
      it "should return nil" do
        expect(days.stock_picker).to eq(nil)
      end
    end
    
    it 'should work' do
      expect(days.stock_picker).to eq([2,4])
    end
    
  end
    
end