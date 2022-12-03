<?php $this->load->view('template/header'); ?>
 <!-- AWAL MAIN-->
 <main class="main">
        <!-- Breadcrumb-->
        <ol class="breadcrumb">
          <li class="breadcrumb-item">Home</li>
          <li class="breadcrumb-item">
            <a href="#">Admin</a>
          </li>
          <li class="breadcrumb-item active">Dashboard</li>
          <!-- Breadcrumb Menu-->
          <li class="breadcrumb-menu d-md-down-none">
            <div class="btn-group" role="group" aria-label="Button group">
              <a class="btn" href="#">
                <i class="icon-speech"></i>
              </a>
            </div>
          </li>
        </ol>
        <div class="container-fluid">
          <div class="animated fadeIn">
               <!-- AWALAN KODING-->
               <h3>Selamat Datang <?php echo strtoupper($this->session->userdata('nama_user')) ; ?>, SEBAGAI 
                <?php
                if ($this->session->userdata('id_level')==1) {
                  echo "ADMIN";
                } 
                ?>
                <?php
                if ($this->session->userdata('id_level')==2) {
                  echo "KASIR";
                } 
                ?>
                <?php
                if ($this->session->userdata('id_level')==3) {
                  echo "OWNER";
                } 
                ?>
                <?php
                if ($this->session->userdata('id_level')==4) {
                  echo "WAITER";
                } 
                ?>
              </h3>
                </div>
                <?php if ($this->session->userdata('id_level')==1): ?>
                  <div class="row">
                    <!-- /.col1-->
              <div class="col-sm-6 col-lg-3">
                <div class="card text-white bg-info">
                  <div class="card-body pb-0">
                    <button class="btn btn-transparent p-0 float-right" type="button">
                      <i class="icon-location-pin"></i>
                    </button>
                    <div class="text-value"><?php echo $masakan; ?></div>
                    <span>Masakan</span>
                  </div>
                  <div class="chart-wrapper mt-3 mx-3" style="height:70px;">
                    <canvas class="chart" id="card-chart2" height="70"></canvas>
                  </div>
                  <center><a style="color: red" href="masakan">View details</a></center>
                </div>
              </div>
              <!-- /.col1-->
              <!-- /.col2-->
            <div class="col-sm-6 col-lg-3">
                <div class="card text-white bg-danger">
                  <div class="card-body pb-0">
                    <button class="btn btn-transparent p-0 float-right" type="button">
                      <i class="icon-location-pin"></i>
                    </button>
                    <div class="text-value"><?php echo $level; ?></div>
                    <span>Meja</span>
                  </div>
                  <div class="chart-wrapper mt-3 mx-3" style="height:70px;">
                    <canvas class="chart" id="card-chart2" height="70"></canvas>
                  </div>
                  <center><a style="color: blue" href="level">View details</a></center>
                </div>
                </div>
                  <!-- /.col2-->
                   <!-- /.col2-->
            <div class="col-sm-6 col-lg-3">
                <div class="card text-white bg-primary">
                  <div class="card-body pb-0">
                    <button class="btn btn-transparent p-0 float-right" type="button">
                      <i class="icon-location-pin"></i>
                    </button>
                    <div class="text-value"><?php echo $user; ?></div>
                    <div>User</div>
                  </div>
                  <div class="chart-wrapper mt-3 mx-3" style="height:70px;">
                    <canvas class="chart" id="card-chart2" height="70"></canvas>
                  </div>
                  <center><a style="color: yellow" href="user">View details</a></center>
                </div>
                </div>
                  <!-- /.col2-->
                   <!-- /.col2-->
                  <!-- /.col2-->
              </div>

                <?php endif ?>
                <?php if ($this->session->userdata('id_level')==2): ?>
                  <div class="row">
                  <div class="col-sm-6 col-lg-3">
                <div class="card text-white bg-danger">
                  <div class="card-body pb-0">
                    <button class="btn btn-transparent p-0 float-right" type="button">
                      <i class="icon-location-pin"></i>
                    </button>
                    <div class="text-value"><?php echo $level; ?></div>
                    <span>Meja</span>
                  </div>
                  <div class="chart-wrapper mt-3 mx-3" style="height:70px;">
                    <canvas class="chart" id="card-chart2" height="70"></canvas>
                  </div>
                  <center><a style="color: blue" href="level">View details</a></center>
                </div>
                </div>
                <div class="col-sm-6 col-lg-3">
                <div class="card text-white bg-success">
                  <div class="card-body pb-0">
                    <button class="btn btn-transparent p-0 float-right" type="button">
                      <i class="icon-location-pin"></i>
                    </button>
                    <div class="text-value"><?php echo $transaksi; ?></div>
                    <div>Transaksi</div>
                  </div>
                  <div class="chart-wrapper mt-3 mx-3" style="height:70px;">
                    <canvas class="chart" id="card-chart2" height="70"></canvas>
                  </div>
                  <center><a style="color: red" href="laporan">View details</a></center>
                </div>
                </div>
              </div>
                <?php endif ?>
            <?php if ($this->session->userdata('id_level')==3): ?>
                  <div class="row">
                    <!-- /.col1-->
              <div class="col-sm-6 col-lg-3">
                <div class="card text-white bg-info">
                  <div class="card-body pb-0">
                    <button class="btn btn-transparent p-0 float-right" type="button">
                      <i class="icon-location-pin"></i>
                    </button>
                    <div class="text-value"><?php echo $masakan; ?></div>
                    <span>Masakan</span>
                  </div>
                  <div class="chart-wrapper mt-3 mx-3" style="height:70px;">
                    <canvas class="chart" id="card-chart2" height="70"></canvas>
                  </div>
                  <center><a style="color: red" href="masakan">View details</a></center>
                </div>
              </div>
              <!-- /.col1-->
              <!-- /.col2-->
            <div class="col-sm-6 col-lg-3">
                <div class="card text-white bg-danger">
                  <div class="card-body pb-0">
                    <button class="btn btn-transparent p-0 float-right" type="button">
                      <i class="icon-location-pin"></i>
                    </button>
                    <div class="text-value"><?php echo $level; ?></div>
                    <span>Meja</span>
                  </div>
                  <div class="chart-wrapper mt-3 mx-3" style="height:70px;">
                    <canvas class="chart" id="card-chart2" height="70"></canvas>
                  </div>
                  <center><a style="color: blue" href="level">View details</a></center>
                </div>
                </div>
                  <!-- /.col2-->
                   <!-- /.col2-->
            <div class="col-sm-6 col-lg-3">
                <div class="card text-white bg-primary">
                  <div class="card-body pb-0">
                    <button class="btn btn-transparent p-0 float-right" type="button">
                      <i class="icon-location-pin"></i>
                    </button>
                    <div class="text-value"><?php echo $user; ?></div>
                    <div>User</div>
                  </div>
                  <div class="chart-wrapper mt-3 mx-3" style="height:70px;">
                    <canvas class="chart" id="card-chart2" height="70"></canvas>
                  </div>
                  <center><a style="color: yellow" href="user">View details</a></center>
                </div>
                </div>
                  <!-- /.col2-->
                   <!-- /.col2-->
            <div class="col-sm-6 col-lg-3">
                <div class="card text-white bg-success">
                  <div class="card-body pb-0">
                    <button class="btn btn-transparent p-0 float-right" type="button">
                      <i class="icon-location-pin"></i>
                    </button>
                    <div class="text-value"><?php echo $transaksi; ?></div>
                    <div>Transaksi</div>
                  </div>
                  <div class="chart-wrapper mt-3 mx-3" style="height:70px;">
                    <canvas class="chart" id="card-chart2" height="70"></canvas>
                  </div>
                  <center><a style="color: red" href="laporan">View details</a></center>
                </div>
                </div>
                  <!-- /.col2-->
              </div>

                <?php endif ?>
                
               <!-- AKHIR KODING-->
   
          </div>
        </div>
      </main>
        <!-- AKHIR MAIN-->
<?php $this->load->view('template/footer'); ?>