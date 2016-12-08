require 'test_helper'
# Product tests
class ProductTest < ActiveSupport::TestCase
  fixtures :products

  test 'product attributes must not be empty' do
    product = Product.new
    assert product.invalid?
    assert product.errors[:title].any?
    assert product.errors[:description].any?
    assert product.errors[:price].any?
    assert product.errors[:image_url].any?
  end

  test 'product price cannot be negative' do
    product = products(:nueralyzer)
    product.price = -1
    assert product.invalid?
  end

  test 'product price cannot be zero' do
    product = products(:nueralyzer)
    product.price = 0
    assert product.invalid?
  end

  test 'product price can be positive' do
    product = products(:nueralyzer)
    product.price = 1
    assert product.valid?
  end

  test 'image url should have valid extension' do
    good_ext = %w{ abc.gif abc.jpg abc.png abc.JPG ABC.Png
                   http://a.b.c/x/y/abc.jpg }

    bad_ext = %w{ abc.doc abc.jpg/something abc.png.something }

    good_ext.each do |ext|
      assert new_product(ext).valid?, "#{ext} shouldn't be valid"
    end

    bad_ext.each do |ext|
      assert new_product(ext).invalid?, "#{ext} shouldn't be valid"
    end
  end

  test 'product is not valid with a title that has already been used' do
    product = Product.new(title: products(:nueralyzer).title,
                          description: 'xxx',
                          price: 1,
                          image_url: 'example.jpg')
    assert product.invalid?
  end

  private

  def new_product(image_url)
    Product.new(title: 'title',
                description: 'description',
                price: 1,
                image_url: image_url)
  end
end
