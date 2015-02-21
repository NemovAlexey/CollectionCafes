{% extends 'main.html' %}

{% block route %}
    <script>
        function init () {
        var myMap = new ymaps.Map('map', {
        center: [55.77799500, 37.61797313],
        zoom: 11
        });
    // Объявляем набор опорных точек, и массив индексов транзитных точек.
    {% for route in routes %}
        {% cycle point1 point2 point3 as points silent %}
        var referencePoints{{ route.id }} = [
                [{{ route.route_current_position }}],
                "{{ points }}"
            ];

            // Создаем мультимаршрут и настраиваем его внешний вид с помощью опций.
            var multiRoute{{ route.id }} = new ymaps.multiRouter.MultiRoute({
                referencePoints: referencePoints{{ route.id }},

            }, {
                // Внешний вид путевых точек.
//                wayPointStartIconColor: "#000000",
                wayPointStartIconLayout: "default#image",
                wayPointStartIconImageHref: "/static/img/collection.png",
                wayPointStartIconImageSize: [75, 37],
                wayPointStartIconImageOffset: [-37, -18],
                // Задаем собственную картинку для последней путевой точки.
                wayPointFinishIconLayout: "default#image",
                wayPointFinishIconImageHref: "/static/img/{{ route.route_color }}.png",
                wayPointFinishIconImageSize: [30, 30],
                wayPointFinishIconImageOffset: [-15, -15],

                // Внешний вид линии маршрута.
                routeStrokeWidth: 0,
                routeStrokeColor: "#{{ route.route_color }}",
                routeActiveStrokeWidth: 6,
                routeActiveStrokeColor: "#{{ route.route_color }}",
                // Автоматически устанавливать границы карты так, чтобы маршрут был виден целиком.
                boundsAutoApply: false
            });

    // Добавляем мультимаршрут на карту.
        myMap.geoObjects.add(multiRoute{{ route.id }});
    {% endfor %}
}

ymaps.ready(init);

</script>
	<style>
        html, body, #map {
            width: 100%; height: 100%; padding: 0; margin: 0;
        }
    </style>
{% endblock %}
