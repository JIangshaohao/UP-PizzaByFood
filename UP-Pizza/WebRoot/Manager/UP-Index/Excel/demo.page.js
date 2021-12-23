$(document).ready(function () {
    excel = new ExcelGen({
        "src_id": "test_table",
        "show_header": true
    });
    $("#generate-excel").click(function () {
    	alert("进来了");
        excel.generate();
    });
});