# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Очистка данных
[Image, Theme, User, Value].each do |model|
  model.delete_all
  ActiveRecord::Base.connection.reset_pk_sequence!(model.table_name)
end

# Темы
themes = Theme.create([
                        { name: "Рисунки группы Черные котики" },
                        { name: "Рисунки группы Солнышко" },
                        { name: "Рисунки группы Птички" }
                      ])

# Изображения
Image.create([
               {
                 name: "Иванов А.Н. Надувная собака ",
                 file: "black_cat_1.jpg",
                 theme_id: themes[0].id
               },
               {
                 name: "Петров В.И. Киндер",
                 file: "black_cat_2.jpg",
                 theme_id: themes[0].id
               },
               {
                 name: "Сидоров М.К. Кот на луне",
                 file: "black_cat_3.jpg",
                 theme_id: themes[0].id
               },
               {
                 name: "Кузнецов Е.А. Тигр",
                 file: "black_cat_4.jpg",
                 theme_id: themes[0].id
               },
               {
                 name: "Смирнов Д.О. Авокадо",
                 file: "black_cat_5.jpg",
                 theme_id: themes[0].id
               },
               {
                 name: "Морозов И.Р. Китти",
                 file: "Sun_1.jpg",
                 theme_id: themes[1].id
               },
               {
                 name: "Фёдоров С.П. Стич",
                 file: "Sun_2.jpg",
                 theme_id: themes[1].id
               },
               {
                 name: "Алексеев Н.Т. Человек паук",
                 file: "Sun_3.jpg",
                 theme_id: themes[1].id
               },
               {
                 name: "Волков Ю.С. Осьминог",
                 file: "Sun_4.jpg",
                 theme_id: themes[1].id
               },
               {
                 name: "Михайлов К.В. Кот в наушниках",
                 file: "Sun_5.jpg",
                 theme_id: themes[1].id
               },
               {
                 name: "Новиков Л.Г. Котик",
                 file: "Ptichka_1.jpg",
                 theme_id: themes[2].id
               },
               {
                 name: "Егоров А.М. Человек паук",
                 file: "Ptichka_2.jpg",
                 theme_id: themes[2].id
               },
               {
                 name: "Павлов Р.Б. Цветок",
                 file: "Ptichka_3.jpg",
                 theme_id: themes[2].id
               },
               {
                 name: "Никитин И.Е. Гусь",
                 file: "Ptichka_4.jpg",
                 theme_id: themes[2].id
               },
               {
                 name: "Громов Т.А. Котик",
                 file: "Ptichka_5.jpg",
                 theme_id: themes[2].id
               }
             ])

# Тестовый пользователь
User.create(
  name: "Example User",
  email: "example@railstutorial.org",
  password: "222222",
  password_confirmation: "222222"
)
