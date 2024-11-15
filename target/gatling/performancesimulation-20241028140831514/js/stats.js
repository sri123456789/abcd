var stats = {
    type: "GROUP",
name: "Global Information",
path: "",
pathFormatted: "group_missing-name-b06d1",
stats: {
    "name": "Global Information",
    "numberOfRequests": {
        "total": "10000",
        "ok": "10000",
        "ko": "0"
    },
    "minResponseTime": {
        "total": "3933",
        "ok": "3933",
        "ko": "-"
    },
    "maxResponseTime": {
        "total": "10441",
        "ok": "10441",
        "ko": "-"
    },
    "meanResponseTime": {
        "total": "5649",
        "ok": "5649",
        "ko": "-"
    },
    "standardDeviation": {
        "total": "927",
        "ok": "927",
        "ko": "-"
    },
    "percentiles1": {
        "total": "5507",
        "ok": "5507",
        "ko": "-"
    },
    "percentiles2": {
        "total": "6275",
        "ok": "6275",
        "ko": "-"
    },
    "percentiles3": {
        "total": "7261",
        "ok": "7262",
        "ko": "-"
    },
    "percentiles4": {
        "total": "8178",
        "ok": "8178",
        "ko": "-"
    },
    "group1": {
        "name": "t < 800 ms",
        "count": 0,
        "percentage": 0
    },
    "group2": {
        "name": "800 ms < t < 1200 ms",
        "count": 0,
        "percentage": 0
    },
    "group3": {
        "name": "t > 1200 ms",
        "count": 10000,
        "percentage": 100
    },
    "group4": {
        "name": "failed",
        "count": 0,
        "percentage": 0
    },
    "meanNumberOfRequestsPerSecond": {
        "total": "2.111",
        "ok": "2.111",
        "ko": "-"
    }
},
contents: {
"req_post--notam-v1--ea84c": {
        type: "REQUEST",
        name: "POST /notam/v1/search/saved/flight",
path: "POST /notam/v1/search/saved/flight",
pathFormatted: "req_post--notam-v1--ea84c",
stats: {
    "name": "POST /notam/v1/search/saved/flight",
    "numberOfRequests": {
        "total": "10000",
        "ok": "10000",
        "ko": "0"
    },
    "minResponseTime": {
        "total": "3933",
        "ok": "3933",
        "ko": "-"
    },
    "maxResponseTime": {
        "total": "10441",
        "ok": "10441",
        "ko": "-"
    },
    "meanResponseTime": {
        "total": "5649",
        "ok": "5649",
        "ko": "-"
    },
    "standardDeviation": {
        "total": "927",
        "ok": "927",
        "ko": "-"
    },
    "percentiles1": {
        "total": "5507",
        "ok": "5507",
        "ko": "-"
    },
    "percentiles2": {
        "total": "6275",
        "ok": "6275",
        "ko": "-"
    },
    "percentiles3": {
        "total": "7262",
        "ok": "7262",
        "ko": "-"
    },
    "percentiles4": {
        "total": "8178",
        "ok": "8178",
        "ko": "-"
    },
    "group1": {
        "name": "t < 800 ms",
        "count": 0,
        "percentage": 0
    },
    "group2": {
        "name": "800 ms < t < 1200 ms",
        "count": 0,
        "percentage": 0
    },
    "group3": {
        "name": "t > 1200 ms",
        "count": 10000,
        "percentage": 100
    },
    "group4": {
        "name": "failed",
        "count": 0,
        "percentage": 0
    },
    "meanNumberOfRequestsPerSecond": {
        "total": "2.111",
        "ok": "2.111",
        "ko": "-"
    }
}
    }
}

}

function fillStats(stat){
    $("#numberOfRequests").append(stat.numberOfRequests.total);
    $("#numberOfRequestsOK").append(stat.numberOfRequests.ok);
    $("#numberOfRequestsKO").append(stat.numberOfRequests.ko);

    $("#minResponseTime").append(stat.minResponseTime.total);
    $("#minResponseTimeOK").append(stat.minResponseTime.ok);
    $("#minResponseTimeKO").append(stat.minResponseTime.ko);

    $("#maxResponseTime").append(stat.maxResponseTime.total);
    $("#maxResponseTimeOK").append(stat.maxResponseTime.ok);
    $("#maxResponseTimeKO").append(stat.maxResponseTime.ko);

    $("#meanResponseTime").append(stat.meanResponseTime.total);
    $("#meanResponseTimeOK").append(stat.meanResponseTime.ok);
    $("#meanResponseTimeKO").append(stat.meanResponseTime.ko);

    $("#standardDeviation").append(stat.standardDeviation.total);
    $("#standardDeviationOK").append(stat.standardDeviation.ok);
    $("#standardDeviationKO").append(stat.standardDeviation.ko);

    $("#percentiles1").append(stat.percentiles1.total);
    $("#percentiles1OK").append(stat.percentiles1.ok);
    $("#percentiles1KO").append(stat.percentiles1.ko);

    $("#percentiles2").append(stat.percentiles2.total);
    $("#percentiles2OK").append(stat.percentiles2.ok);
    $("#percentiles2KO").append(stat.percentiles2.ko);

    $("#percentiles3").append(stat.percentiles3.total);
    $("#percentiles3OK").append(stat.percentiles3.ok);
    $("#percentiles3KO").append(stat.percentiles3.ko);

    $("#percentiles4").append(stat.percentiles4.total);
    $("#percentiles4OK").append(stat.percentiles4.ok);
    $("#percentiles4KO").append(stat.percentiles4.ko);

    $("#meanNumberOfRequestsPerSecond").append(stat.meanNumberOfRequestsPerSecond.total);
    $("#meanNumberOfRequestsPerSecondOK").append(stat.meanNumberOfRequestsPerSecond.ok);
    $("#meanNumberOfRequestsPerSecondKO").append(stat.meanNumberOfRequestsPerSecond.ko);
}
