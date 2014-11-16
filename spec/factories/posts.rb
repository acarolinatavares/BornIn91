# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :post do
    titulo "MyString"
    corpo ""
    usuario_id 1
  end
end
