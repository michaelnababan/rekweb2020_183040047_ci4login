<?= $this->extend('layout/template') ?>

<?= $this->section('content') ?>
<div class="container mt-4">
  <div class="row">
    <div class="col">
      <h2>About Me.</h2>
      <p>Hallo,Perkenalkan Saya <?= $nama ?>, dan Saya berumur <?= $umur ?> Tahun.</p>
      <br><br>
      <b>Sepatah Kata : </b>
      <p>Hidup itu sederhana jika menjalaninya dengan kegembiraan dan kebahagiaan.
        Jalani saja porsi hidup Anda dan tidak ikut campur dalam kehidupan orang lain.
        Sederhana bukan? Tapi terkadang Anda terlalu masuk dalam urusan orang lain yang bukan bagian dari hidup Anda,
        sehingga hidup terasa begitu berat dan rumit. Kebiasaan bergosip, mencemooh,
        berucap buruk dan tidak benar kerap dilakukan.
        Anda menganggap diri Anda rendah. Inilah yang membuat hidup Anda terasa sulit.</p>
    </div>
  </div>
</div>
<?= $this->endSection() ?>