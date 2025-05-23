require 'rails_helper'

RSpec.describe Product, type: :model do
  describe "Validate product" do
    it "publish true with all its fields" do
      expect(create(:product, :published)).to be_valid
    end

    it "publish false with all its fields" do
      expect(create(:product, :unpublished)).to be_valid
    end

    it "publish true without all its fields" do
      expect { create(:product, :invalid) }.to raise_error(ActiveRecord::RecordInvalid, /Name can't be blank/)
    end
  end

  describe 'Required fields if is publish' do
    before { allow(subject).to receive(:publish?).and_return(true) }
    it { expect(subject).to validate_presence_of(:name) }
    it { expect(subject).to validate_presence_of(:code) }
    it { expect(subject).to validate_presence_of(:description) }
    it { expect(subject).to validate_presence_of(:price) }
  end

  describe 'Not required fields if is not publish' do
    before { allow(subject).to receive(:publish?).and_return(false) }
    it { expect(subject).not_to validate_presence_of(:name) }
    it { expect(subject).not_to validate_presence_of(:code) }
    it { expect(subject).not_to validate_presence_of(:description) }
    it { expect(subject).not_to validate_presence_of(:price) }
  end
end
