require "spec_helper"

module BitCore
  describe Slide do
    fixtures :"bit_core/slideshows", :"bit_core/slides"

    describe ".update_positions" do
      it "should update slide positions to match the order of the ids" do
        slide1 = bit_core_slides(:slide1)
        slide2 = bit_core_slides(:slide2)
        slide3 = bit_core_slides(:slide3)
        BitCore::Slide.update_positions([slide3.id, slide1.id, slide2.id])

        expect(BitCore::Slide.find(slide1.id).position).to eq(2)
        expect(BitCore::Slide.find(slide2.id).position).to eq(3)
        expect(BitCore::Slide.find(slide3.id).position).to eq(1)
      end
    end

    describe "#render_body" do
      it "should render a nil body" do
        expect(subject.render_body).to eq("")
      end

      it "should render markdown as html" do
        subject.body = "# header"

        expect(subject.render_body).to match(/<h1>header<\/h1>/)
      end

      it "should escape html" do
        subject.body = "<div>my content</div>"

        expect(subject.render_body).to match(/<p>my content<\/p>/)
      end
    end
  end
end
