# README
Блог на Ruby on Rails

v1

    -Создание простого CRUD приложения в RubyOnRails 5.2.2

v2

    -Подключение bootstrap-4

    -Добавление стилей bootstrap-4

v3

    -Валидация формы

    -Flash сообщения: success, danger, info, warning

v4

    -Локализация RU

v5

    -Загрузка и изменение размера изображения к посту

    -gem https://github.com/carrierwaveuploader/carrierwave

    -gem https://github.com/minimagick/minimagick

      В терминале:
        sudo apt-get install imagemagick
        bundle
        rails generate uploader Image
        rails g migration add_image_to_posts image:string
        rake db:migrate

v6

    -Добавление текстового редактора Trix
    https://github.com/kylefox/trix

    https://github.com/maclover7/trix

    -Возможность добавлять изображения в текстовом редакторе
