require_relative 'apple_tree'

RSpec.describe Apple_Tree do
        describe 'attributes' do
          before do
                @appleTree = Apple_Tree.new
          			@appleTree.height = 7
          			@appleTree.age = 20
          		end
              it "Apple Tree should have a height and age" do
                expect(@appleTree).to have_attributes(:height => 7)
                expect(@appleTree).to have_attributes(:age => 20)
              end
        end
        describe 'behavior' do
          before do
            @appleTree= Apple_Tree.new
          end
          it "Apple Tree should have a count of how many apples is on it" do
            expect(@appleTree.count()).to eq(0)
          end
          it "Apple Tree should have a method called year_gone_by, which ages the tree by 1 year affecting its height" do
            expect(@appleTree.year_gone_by()).to eq(1)
            expect(@appleTree.height).to eq(2)
          end
          it "Apple Tree should not grow apples for the first three years of its life" do
          expect(@appleTree.count()).to eq(0)
          expect(@appleTree.year_gone_by()).to eq(1)
          expect(@appleTree.count()).to eq(0)
          expect(@appleTree.year_gone_by).to eq(2)
          expect(@appleTree.count()).to eq(0)
          expect(@appleTree.year_gone_by()).to eq(3)
          expect(@appleTree.count()).to eq(0)
          expect(@appleTree.year_gone_by()).to eq(4)
          expect(@appleTree.count()).to eq(1)
          end
          it "Apple Tree should have a method called pick_apples that takes all of the apples off the tree" do
          expect(@appleTree.count).to eq(0)
          @appleTree.year_gone_by()
          @appleTree.year_gone_by()
          @appleTree.year_gone_by()
          @appleTree.year_gone_by()
          expect(@appleTree.count()).to eq(1)
          expect(@appleTree.pick_apples()).to eq([])
          end
          it "Apple Tree should decay and not grow apples after 10 years" do
          expect(@appleTree.count()).to eq(0)
          @appleTree.year_gone_by()
          @appleTree.year_gone_by()
          @appleTree.year_gone_by()
          @appleTree.year_gone_by()
          expect(@appleTree.count()).to eq(1)
          @appleTree.year_gone_by()
          @appleTree.year_gone_by()
          @appleTree.year_gone_by()
          @appleTree.year_gone_by()
          @appleTree.year_gone_by()
          expect(@appleTree.count()).to eq(6)
          @appleTree.year_gone_by
          expect(@appleTree.age()).to eq(10)
          # @appleTree.grow_apples()
          expect(@appleTree.count()).to eq(0)
          end
      end
end
