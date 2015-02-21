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

            {%for company in companies %}
                {% for point in points %}
                    {% if company.id == point.point_company.id %}
                        myMap.geoObjects
                            .add(myGeoObject)
                            .add(new ymaps.Placemark([{{ point.point_coordinates }}], {
                            balloonContent: '<strong><a href="{% url 'collection:company_on_map' company.id %}">{{ company.company_name }}</a></strong><br />{{ point.point_address }}<br />{{ point.point_telephone }}<br /><input type="button" value="Инкассация" onclick="location.href ="/points/status/{{ point.id }}/"">'
                            }, {
                                preset: 'islands#icon',
                                iconColor: '{{ point.point_delay_color }}'
                            }));
                    {% endif %}
                {% endfor %}
            {% endfor %}
        }
    </script>
	<style>
        html, body, #map {
            width: 100%; height: 100%; padding: 0; margin-top: 26px;
        }
    </style>
{% endblock %}

