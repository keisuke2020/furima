FactoryBot.define do
  factory :user do
    nickname {'フリマ'}
    email {'furima@com'}
    password {'password'}
    password_confirmation {password}
    family_name_full_width {'フリマ'}
    first_name_full_width {'三郎'}
    family_name_kana_input {'フリマ'}
    first_name_kana_input {'サブロウ'}
    birthday {'1930-01-01'}
  end
end