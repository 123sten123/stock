<%@ taglib prefix="spring" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://www.springframework.org/tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>

<head>
    <title>Index Page</title>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/require.js/2.2.0/require.js"></script>
<%--    <script type="text/javascript" src="../../resources/dist/i18n/i18n.en.js"></script>--%>
    <script src="<c:url value="/resources/dist/i18n/i18n.en.js" />"></script>
    <link rel="stylesheet" href="http://iguanacharts.com/iguana_charts/dependencies/uikit/css/uikit.min.css" media="all">
    <link rel="stylesheet" href="http://iguanacharts.com/iguana_charts/dependencies/jquery.qtip.min.css" media="all">
    <link rel="stylesheet" href="http://iguanacharts.com/iguana_charts/dependencies/jquery-minicolors/jquery.minicolors.css" media="all">

<%--    <link rel="stylesheet" href="../../resources/dist/iguanachart.css" media="all">--%>
    <link rel="stylesheet" href="<c:url value="/resources/dist/iguanachart.css"/>" media="all">

    <script type="text/javascript">
        require.config({
            paths: {
                jquery: 'https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min',
                uikit: 'http://iguanacharts.com/iguana_charts/dependencies/uikit/js/uikit.min',
                'jquery.eventmove': 'http://iguanacharts.com/iguana_charts/dependencies/jquery.event.move',
                'jquery.hammer': 'http://iguanacharts.com/iguana_charts/dependencies/jquery.hammer',
                'jsrender': "http://iguanacharts.com/iguana_charts/dependencies/jsrender.min",
                'jquery.minicolors': 'http://iguanacharts.com/iguana_charts/dependencies/jquery-minicolors/jquery.minicolors.min',
                'jquery.qtip': 'http://iguanacharts.com/iguana_charts/dependencies/jquery.qtip.min',
                //'jquery.easing': 'https://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.4.1/jquery.easing.min',
                'jquery.mousewheel': 'https://cdnjs.cloudflare.com/ajax/libs/jquery-mousewheel/3.1.13/jquery.mousewheel.min',
                'iguanachart': '../dist/iguanachart',
                'hammerjs': 'http://iguanacharts.com/iguana_charts/dependencies/hammer.min'
            },
            shim: {
                'uikit': {
                    deps: [
                        'jquery'
                    ]
                },
                jsrender: {
                    deps: [
                        'jquery'
                    ]
                },
                iguanachart: {
                    deps: [
                        'jquery',
                        'uikit',
                        'jquery.eventmove',
                        'jquery.hammer',
                        'jsrender',
                        'jquery.minicolors',
                        'jquery.qtip',
                        //'jquery.easing',
                        'jquery.mousewheel'
                    ]
                }
            }
        })
    </script>

</head>

<body>
<%--<spring:form method="post"  modelAttribute="userJSP" action="check-user">--%>

<%--    Name: <spring:input path="name"/> (path="" - указывает путь, используемый в modelAttribute=''. в нашем случае User.name)  <br/>--%>
<%--    Password: <spring:input path="password"/>   <br/>--%>
<%--    <spring:button>Next Page</spring:button>--%>

<%--</spring:form>--%>


<script type="text/javascript">
    var chartDataSource = {
        data: {
            "hloc":{
                "LKOH":[[2296.1,2183.6,2286,2211.3],[2317,2200.9,2201,2280.9],[2376,2281.5,2289.9,2351],
                    [2595.1,2361,2371.1,2560.8],[2579,2452.5,2565,2478.8],[2519,2441.4,2460,2476.9],
                    [2553,2461.9,2479.9,2508],[2576.6,2502.2,2519.9,2566],[2653,2573,2598,2615],
                    [2748.5,2590,2612,2735],[2828.1,2631.6,2735,2656],[2675.5,2596.2,2652,2623.7],
                    [2765,2615.7,2639,2758.9],[2937.9,2744.6,2760,2821.6],[2938,2835.5,2848.2,2852]]
            },
            "vl":{
                "LKOH":[845086,561996,802012,1089062,1196954,903616,1307655,734571,
                    1280221,1076973,1687160,1049670,1110288,2043027,1613934]
            },
            "xSeries":{
                "LKOH":[1419886800,1420405200,1420491600,1420664400,1420750800,1421010000,1421096400,1421182800,
                    1421269200,1421355600,1421614800,1421701200,1421787600,1421874000,1421960400]
            }
        },
        dataSettings: {
            useHash: false,
            date_from: "29.12.2014",
            date_to: "23.01.2015",
            graphicIndicators: "",
            hash: "",
            id: "LKOH",
            interval: "D1",
            timeframe: 1440
        }
    };

    $("#iChart").iguanaChart({
        ticker:"MICEXINDEXCF",
        chartOptions: {
            minHeight: $("#iChart").height(),
            futureAmount: 1
        },
        dataSource: chartDataSource
    });
</script>



<div id="iChart" style="height: 500px; position: relative;"></div>


</body>

</html>