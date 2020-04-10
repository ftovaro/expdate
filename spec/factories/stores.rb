FactoryBot.define do
  factory :store do
    name { "Éxito" }

    factory :store_with_store_products do
      transient do
        store_products_count { 10 }
      end

      after(:create) do |store, evaluator|
        create_list(:store_products, evaluator.store_products_count, store: store)
      end
    end
  end
end