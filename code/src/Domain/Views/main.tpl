<!DOCTYPE html>
<html>
    <head>
                <meta charset="UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-9ndCyUaIbzAi2FUVXJi0CjmCapSmO7SnpJef0486qhLnuZ2cdeRhO02iuK6FUUVM" crossorigin="anonymous">
        <link rel="stylesheet" href="/css/main.css">
        <script
  src="https://code.jquery.com/jquery-3.7.0.min.js"
  integrity="sha256-2Pmvv0kuTBOenSvLm6bvfBSSHrUJ+3A7x6P5Ebd07/g="
  crossorigin="anonymous"></script>
        <script src="/js/main.js"></script>
        <title>{{ title }}</title>
    </head>
    <body class="d-flex flex-column h-100">
        <div id="header">
            {% include "auth-template.tpl" %}
        </div>

           <ul class="nav col-12 col-md-auto mb-2 justify-content-center mb-md-0">
                  <li><a href="/" class="nav-link px-2 link-secondary">Главная</a></li>
                  <li><a href="/user" class="nav-link px-2 link-dark">Пользователи</a></li>
                </ul>


        

         <main class="flex-shrink-0" >
          <div class="container content-template">
            {% include content_template_name %}
          </div>
        </main>
    

            <footer class="footer mt-auto py-3 bg-light">
          <div class="container">
            <span class="text-muted">Место для контента прикрепленного футера здесь.</span>
          </div>
        </footer>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-geWF76RCwLtnZ8qwWowPQNguL3RmwHVBC9FhGdlKrxdiJJigb/j/68SIy3Te4Bkz" crossorigin="anonymous"></script>

        </body>
</html>