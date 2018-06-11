<h4>Budget Metal Gallery</h4>

<div id="loader">
    <div class="dot"></div>
    <div class="dot"></div>
    <div class="dot"></div>
    <div class="dot"></div>
    <div class="dot"></div>
    <div class="dot"></div>
    <div class="dot"></div>
    <div class="dot"></div>
    <div class="lading"></div>
</div>

<div class="box">
        <div class="box-header with-border">
            <div class="col-sm-11">
                <input type="text" class="form-control" id="search_key" placeholder="Search">
            </div>
            <div class="col-sm-1">
            <button class="btn btn-info" id="btn_search">Search</button>
            </div>
        </div>
        <!-- /.box-header -->
        <div class="box-body">
        <div class="row">
            <div class="pagination" style="padding:10px; float: right;">
            
            </div>
            <div id="result" style="padding:10px;">
            
            </div>
            <div class="pagination" style="padding:10px; float: right;">
            
            </div>
        </div>
</div>
<iframe id="iframe_download_file" style="display:none" src=""></iframe>
<script>
$(function () {
    $('#loader').hide();
    loaddata(1);
});

function downloadFile(fileId){

   // console.log(fileId);
    var url = "<?php echo $config_gallery_download; ?>" + fileId;
    $('#iframe_download_file').attr('src', url)
    //alert('download - ' + $('#iframe_download_file').attr('src'));

}

$( "#btn_search" ).click(function() {
    loaddata(1);
});

function loaddata(n) {
    var search_key = $('#search_key').val();
    var ajaxurl = '<?php echo $config_gallery_api; ?>'+n;
    if(search_key != ""){
        ajaxurl = '<?php echo $config_gallery_search; ?>';
        ajaxurl = ajaxurl.replace("<search_key>", search_key);
        ajaxurl = ajaxurl.replace("<page_request>", n);
    }

/// show spinner
$('#loader').show();

    $.ajax({
    url: ajaxurl,
    dataType: 'json',
    success: function (response) {
        // $("#result").html(response.ResultObject);
        // alert(response.ResultObject.TotalRecords);
        //var image = new Image();
        
         //console.log(response);
         var obj = response.ResultObject.Records;
         //console.log(obj);
         $(".pagination").empty();
         $("#result").empty();
         for(var k in obj) {
             var item = obj[k];
             //console.log(item.Name);
             //console.log(item.Description);
             var thumbnail = item.ThumbnailImage;
             var desc = "";
             if(item.Description != null){
                desc = item.Description;
             }
            //var image = new Image();
            //image.src = 'data:image/png;base64,'+ thumbnail;
             var short_desc = "";

             if(desc.length > 200)
             {
                short_desc = desc.substring(0, 200) + "...";
             }else{
                short_desc = desc;
             }
            $("#result").append("<br>" + 
            "<div class='row'>" +
                "<div class='col-sm-3'><img src='data:image/png;base64,"+thumbnail+"' alt='"+item.Name+"' height='200px' width='250px'></div>" +
                "<div class='col-sm-9'><b>"+item.Name+"</b><br>"+
                    "<span title='" + desc + "'>" + short_desc+"</span>"+
                    "<span class='pull-right text-aqua' style='padding: 20px;'><a href='#' class='btn_download' data-fileid='"+item.Id+"' onClick='downloadFile("+item.Id+")'>Download</a>" +
                "</div>" +
                "<div class='col-sm-12'><hr/></div>" +
            "</div>");   
         }

         var totalpage= response.ResultObject.TotalPage;
         var currentpage= response.ResultObject.CurrentPage;
         var i;
        for (i = 1; i <= totalpage; i++) { 
            if(i == currentpage){
                $(".pagination").append(" <a class='btn btn-md btn-warning'>"+i+"</a> ");
            }else{
                $(".pagination").append(" <a class='btn btn-md btn-default' OnClick='loaddata("+i+")'>"+i+"</a> ");
            }
           
        }

        /// hide spiner
        $('#loader').hide();
    },
    error: function (response) {
        $("#result").html("<strong>100000" + response.status + "</strong>: " + response.message);
    }

    });
}
</script>