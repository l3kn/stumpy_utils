require "./spec_helper"

describe "Rectangles" do

  it "draws rectangles" do
    width = 512
    height = 512
    canvas = Canvas.new(width, height, RGBA::WHITE)
    
    # filled rectangles
    canvas.fill_rect(width / 4 / 2, height / 4 / 2, width / 4 + 3 * width / 4 / 2, height / 4 + 3 * height / 4 / 2, RGBA::RED)
    canvas.fill_rect(width / 4 * 2, height / 4 * 2, width / 4 / 2 + 3 * width / 4, height / 4 / 2 + 3 * height / 4, RGBA::BLUE)

    # outline rectangles
    canvas.rect(width / 4 - 10, height / 4 + 10, 3 * width / 4 + 10, 3 * height / 4 - 10, RGBA::BLACK)
    canvas.rect(width / 4 + 10, height / 4 - 10, 3 * width / 4 - 10, 3 * height / 4 + 10, RGBA::BLACK)

    StumpyPNG.write(canvas, "spec/out/rectangles.png")
  end

end