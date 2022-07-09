<!-- templates/index.html -->

{% extends "base.html" %}

{% block content %}
<h1 class="title">
Admin Portal 
</h1>
<h2 class="title">
  Welcome {{ name }}! 
</h2>
<h4 class="subtitle">
  View the Entries in the Database
</h4>

  <table id="data" class="table table-striped">
    <thead>
      <tr>
        <th>Id</th>
        <th>Twitter Id</th>
        <th>Name</th>
        <th>Screen Name</th>  
        <th>status Id</th>    
        <th>Role</th>              
      </tr>
    </thead>
    <tbody>
      {% for user in users %}
        <tr>
          <td>{{ user.id }}</td>
            <td>{{ user.twitter_id }}</td>
            <td>{{ user.name }}</td>    
            <td>{{ user.screen_name }}</td>                
            <td>{{ user.status_id }}</td>  
            <td>{{ user.role }}</td>              
        </tr>
      {% endfor %}
    </tbody>
  </table>
    <script type="text/javascript" charset="utf8" src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
    <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.25/js/jquery.dataTables.js"></script>
    <script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.10.25/js/dataTables.bootstrap5.js"></script>
  <script>
    $(document).ready(function () {
      $('#data').DataTable();
    });
  </script>
<!-- JavaScript Bundle with Popper -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
{% endblock %}