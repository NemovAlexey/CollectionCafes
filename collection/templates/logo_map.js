{% extends 'main.html' %}

{% block logo_map %}
    <script>ymaps.ready(init);

function init () {
    var myMap = new ymaps.Map("map", {
            center: [55.76, 37.64],
            zoom: 10
        }),

    // Создаем геообъект с типом геометрии "Точка".
        myGeoObject = new ymaps.GeoObject({});


        {%for company in companies %}
            {% for point in points %}
                {% if company.id == point.point_company.id %}
                    myMap.geoObjects
                        .add(myGeoObject)
                        .add(new ymaps.Placemark([{{ point.point_coordinates }}], {
                        balloonContent: '<strong><a href="{% url 'collection:company_on_map' company.id %}">{{ company.company_name }}</a></strong><br />{{ point.point_address }}<br />{{ point.point_telephone }}'
                        }, {
                            iconLayout: 'default#image',
                            // Своё изображение иконки метки.
                            iconImageHref: '/static/img/{{ company.company_logo }}',
                            // Размеры метки.
                            iconImageSize: [25, 25],
                            // Смещение левого верхнего угла иконки относительно
                            // её "ножки" (точки привязки).
                            iconImageOffset: [-12.5, -12.5]
                        }));
                {% endif %}
            {% endfor %}
        {% endfor %}
}</script>
	<style>
        html, body, #map {
            width: 100%; height: 100%; padding: 0; margin-top: 26px;
        }
    </style>
{% endblock %}