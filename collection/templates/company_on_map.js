{% extends 'main.html' %}

{% block marks_map %}
{% load staticfiles %}
    <script>
        ymaps.ready(init);

        function init (){
            var myMap = new ymaps.Map("map", {
                    center: [55.76, 37.64],
                    zoom: 10
            });

            // Создаем геообъект с типом геометрии "Точка".
            var myGeoObject = new ymaps.GeoObject({});
            {% for point in points %}
                myMap.geoObjects
                    .add(myGeoObject)
                    .add(new ymaps.Placemark([{{ point.point_coordinates }}], {
                    balloonContent: '<strong>{{ company.company_name }}</strong><br />{{ point.point_address }}<br />{{ point.point_telephone }}<br /><input type="button" value="Инкассация" onclick=""location.href ="points/status/(?P<point_id>\d+)/"">'
                    }, {
                        preset: 'islands#icon',
                        iconColor: '{{ company.company_color }}'
                    }));
            {% endfor %}
        }
    </script>
	<style>
        html, body, #map {
            width: 100%; height: 100%; padding: 0; margin-top: 26px;
        }
    </style>
{% endblock %}

