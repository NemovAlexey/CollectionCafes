{% extends 'main.html' %}

{% block point %}
{% load staticfiles %}
    <script>
        ymaps.ready(init);

        function init (){
            var myMap = new ymaps.Map("map", {
                    center: [{{ point.point_coordinates }}],
                    zoom: 16
                });

            // Создаем геообъект с типом геометрии "Точка".
            var myGeoObject = new ymaps.GeoObject({});
            myMap.geoObjects
                .add(myGeoObject)
                .add(new ymaps.Placemark([{{ point.point_coordinates }}], {
                balloonContent: '<strong>{{ point.point_address }}</strong><br />{{ point.point_coordinates }}<br />{{ point.point_telephone }}'
                }, {
                    preset: 'islands#icon',
                    iconColor: '{{ point.point_delay_color }}'
                }));
        }
    </script>
	<style>
        html, body, #map {
            width: 100%; height: 100%; padding: 0; margin-top: 26px;
        }
    </style>
{% endblock %}