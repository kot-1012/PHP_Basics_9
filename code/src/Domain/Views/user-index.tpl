<p>Список пользователей в хранилище</p>

{% if user_authorized %}
<div>
<a href="/user/edit">Добавить пользователя</a></div>
{% endif %}


      <div class="table-responsive small">
        <table class="table table-striped table-sm">
          <thead>
            <tr>
              <th scope="col">ID</th>
              <th scope="col">Имя</th>
              <th scope="col">Фамилия</th>
              <th scope="col">День рождения</th>
              {% if user_authorized %}
              <th scope="col">Редактирование</th>
              <th scope="col">Удаление</th>
              {% endif %}
            </tr>
          </thead>
          <tbody>
            {% for user in users %}
            <tr>       
              <td>{{ user.getUserId() }}</td>   
              <td>{{ user.getUserName() }}</td>
              <td>{{ user.getUserLastName() }}</td>
              <td>{% if user.getUserBirthday() is not empty %}
                    {{ user.getUserBirthday() | date('d.m.Y') }}
          

                  {% else %}
                    <b>Не задан</b>
                  {% endif %}
              </td>
              {% if user_authorized %}
                    <td><a href="/user/edit/?user_id={{user.userId}}">Править</a><td>
                <a href="/user/delete/?user_id={{user.userId}}">Удалить</a>
                {% endif %}
            </tr>
            {% endfor %}
          </tbody>
        </table>
      </div>

      <script>
    let maxId = $('.table-responsive tbody tr:last-child td:first-child').html();
  
    setInterval(function () {
      $.ajax({
          method: 'POST',
          url: "/user/indexRefresh/",
          data: { maxId: maxId }
      }).done(function (response) {
          // $('.content-template').html(response);

          let users = $.parseJSON(response);
          
          if(users.length != 0){
            for(var k in users){

              let row = "<tr>";

              row += "<td>" + users[k].id + "</td>";
              maxId = users[k].id;

              row += "<td>" + users[k].username + "</td>";
              row += "<td>" + users[k].userlastname + "</td>";
              row += "<td>" + users[k].userbirthday + "</td>";

              row += "</tr>";

              $('.content-template tbody').append(row);
            }
            
          }
          
      });
    }, 10000);
</script>