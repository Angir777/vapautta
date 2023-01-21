<?php 
    include get_template_directory() . '/template-parts/options/options.php';
?>
<section>
    <div class="row example-row page-content">
        <div class="col-xl-1"></div>
        <div class="col-xl-10">
            <div class="row mt-3 mb-3">
              <div class="col">
                <h2 class="w-mb-4"><?php echo the_title(); ?></h2>
                <div class="row pe-4 ps-4">
                  <div class="col-sm-12 col-lg-4">
                    <div class="row">
                      <div class="col-sm-4 col-lg-12">  
                        <div class="row mb-5">
                          <div class="col-2 w-contact-icon d-flex justify-content-center align-items-start">
                            <i class="fas fa-map-marked-alt"></i>
                          </div>
                          <div class="col-10">
                            <span>
                              <?php echo $nazwa_firmy_7 ?><br>
                              <?php echo $imi_i_nazwisko_10 ?><br>
                              <?php echo $adres_11 ?><br>
                              <?php echo $kod_pocztowy_12 ?><br>
                              <?php echo $nip_13 ?>
                            </span>
                          </div>
                        </div>
                      </div>
                      <div class="col-sm-4 col-lg-12">  
                        <div class="row mb-5">
                          <div class="col-2 w-contact-icon d-flex justify-content-center align-items-start">
                            <i class="fas fa-phone-alt"></i>
                          </div>
                          <div class="col-10">
                            <span>
                              tel. <a href="tel:<?php echo $telefon_1_0 ?>"><?php echo $telefon_1_0 ?></a><br>
                              tel. <a href="tel:<?php echo $telefon_2_1 ?>"><?php echo $telefon_2_1 ?></a>
                            </span>
                          </div>
                        </div>
                      </div>
                      <div class="col-sm-4 col-lg-12">  
                        <div class="row mb-5">
                          <div class="col-2 w-contact-icon d-flex justify-content-center align-items-start">
                            <i class="fas fa-paper-plane"></i>
                          </div>
                          <div class="col-10">
                            <span>
                              <a href="mailto:<?php echo $email_2 ?>"><?php echo $email_2 ?></a>
                            </span>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <div class="col-sm-12 col-lg-8">
                    <?php the_content(); ?>
                  </div>
                </div>
              </div>
            </div>
        </div>
        <div class="col-xl-1"></div>
    </div>
</section>