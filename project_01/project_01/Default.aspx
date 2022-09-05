<%@ Page Title="" Language="C#" MasterPageFile="~/mySitePage.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="project_01.Default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <!--img slider-->
        <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner container">
      <div class="item active">
        <img src="Pictures/w03.jpg" alt="" style="width:100%; height:300px;">
          <div class="carousel-caption">
              <p class="text-center">Women Collection</p>
              <p class="text-center">50% Off</p>
          </div>
      </div>

      <div class="item">
        <img src="Pictures/img01.jpg"alt="" style="width:100%; height:300px;">
          <div class="carousel-caption">
              <p class="text-center">Kids Collection</p>
              <p class="text-center">50% Off</p>
          </div>
      </div>
    
      <div class="item">
        <img src="Pictures/m3.jpg" alt="" style="width:100%; height:300px;">
          <div class="carousel-caption">
              <p class="text-center">Men Collection</p>
              <p class="text-center">20% Off</p>
          </div>
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
    <hr/>
        <!--img slider end-->

    <!--Middle content Start-->
    <div class="container mt-4">
        <div class="row">
        <div class="col-lg-4">
            <img class="center-block" src="Pictures/mobile01.jpg" alt="thumb" width="140" height="200" />
            <h2 class="text-center">Mobiles</h2>
            <p class="text-justify">Feature of mobiles with 6.43 inches Full HD+ AMOLED screen. It has a center punch-hole design on the front. The display is protected by a 3rd generation Gorilla Glass. The back camera is of quad 50+8+2+2 MP with PDAF, f/1.8 aperture, 118º ultrawide, depth sensor, dedicated macro camera etc. and Full HD video recording. The front camera is of 13 MP. Xiaomi Redmi Note 11 comes with 5000 mAh big battery with a 33W Fast Charging solution. It has 4 or 6 GB RAM, up to 2.4 GHz octa-core CPU and Adreno 610 GPU. It is powered by a Qualcomm Snapdragon 680 4G (6 nm) chipset. The phone comes with 64 or 128 GB internal storage and dedicated MicroSD slot. There is a side-mounted fingerprint sensor in this phone.</p>
            <p><a href="#" class="btn btn-default" role="button">View More &raquo;</a></p>
        </div>
            <div class="col-lg-4">
            <img class="center-block" src="Pictures/clothing01.jpg" alt="thumb" width="140" height="200" />
            <h2 class="text-center">Clothing</h2>
            <p class="text-justify">Feature of mobiles with 6.43 inches Full HD+ AMOLED screen. It has a center punch-hole design on the front. The display is protected by a 3rd generation Gorilla Glass. The back camera is of quad 50+8+2+2 MP with PDAF, f/1.8 aperture, 118º ultrawide, depth sensor, dedicated macro camera etc. and Full HD video recording. The front camera is of 13 MP. Xiaomi Redmi Note 11 comes with 5000 mAh big battery with a 33W Fast Charging solution. It has 4 or 6 GB RAM, up to 2.4 GHz octa-core CPU and Adreno 610 GPU. It is powered by a Qualcomm Snapdragon 680 4G (6 nm) chipset. The phone comes with 64 or 128 GB internal storage and dedicated MicroSD slot. There is a side-mounted fingerprint sensor in this phone.</p>
            <p><a href="#" class="btn btn-default" role="button">View More &raquo;</a></p>
        </div>
            <div class="col-lg-4">
            <img class="center-block" src="Pictures/shoes01.jpg" alt="thumb" width="140" height="200" />
            <h2 class="text-center">Foot Wear</h2>
            <p class="text-justify">Feature of mobiles with 6.43 inches Full HD+ AMOLED screen. It has a center punch-hole design on the front. The display is protected by a 3rd generation Gorilla Glass. The back camera is of quad 50+8+2+2 MP with PDAF, f/1.8 aperture, 118º ultrawide, depth sensor, dedicated macro camera etc. and Full HD video recording. The front camera is of 13 MP. Xiaomi Redmi Note 11 comes with 5000 mAh big battery with a 33W Fast Charging solution. It has 4 or 6 GB RAM, up to 2.4 GHz octa-core CPU and Adreno 610 GPU. It is powered by a Qualcomm Snapdragon 680 4G (6 nm) chipset. The phone comes with 64 or 128 GB internal storage and dedicated MicroSD slot. There is a side-mounted fingerprint sensor in this phone.</p>
            <p><a href="#" class="btn btn-default" role="button">View More &raquo;</a></p>
        </div>
    </div>
    </div>
    
    <!--Middle content End-->
</asp:Content>
