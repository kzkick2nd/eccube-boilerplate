    </div><!-- /#windowcolumn -->
  </body>

  <script type="text/javascript" src="<!--{$smarty.const.ROOT_URLPATH}-->js/jquery-1.4.2.min.js"></script>
  <!-- #2342 次期メジャーバージョン(2.14)にてeccube.legacy.jsは削除予定.モジュール、プラグインの互換性を考慮して2.13では残します. -->
  <script type="text/javascript" src="/js/eccube.js"></script>
  <script type="text/javascript" src="/js/eccube.legacy.js"></script>

  <script type="text/javascript">
  //<![CDATA[
    <!--{$tpl_javascript}-->
    $(function(){
      <!--{$tpl_onload}-->
    });
  //]]>
  </script>

  <!-- Google Analytics: change UA-XXXXX-X to be your site's ID. -->
  <script>
    (function(b,o,i,l,e,r){b.GoogleAnalyticsObject=l;b[l]||(b[l]=
      function(){(b[l].q=b[l].q||[]).push(arguments)});b[l].l=+new Date;
    e=o.createElement(i);r=o.getElementsByTagName(i)[0];
    e.src='//www.google-analytics.com/analytics.js';
    r.parentNode.insertBefore(e,r)}(window,document,'script','ga'));
    ga('create','UA-XXXXX-X');ga('send','pageview');
  </script>

</html>
