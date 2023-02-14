<!DOCTYPE html>
<!--[if IE]><![endif]-->
<html>
  
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>Rental products </title>
    <meta name="viewport" content="width=device-width">
    <meta name="title" content="Rental products ">
    <meta name="generator" content="docfx 2.59.4.0">
    
    <link rel="shortcut icon" href="../../../../favicon.ico">
    <link rel="stylesheet" href="../../../../styles/docfx.vendor.css">
    <link rel="stylesheet" href="../../../../styles/docfx.css">
    <link rel="stylesheet" href="../../../../styles/main.css">
    <link rel="preload" href="../../../../fonts/fonts.css" )"="" as="style" onload="this.onload=null;this.rel='stylesheet'">
    <meta property="docfx:navrel" content="/">
    <meta property="docfx:tocrel" content="../../../toc.html">
    
    <meta property="docfx:rel" content="../../../../">
    
    <script async="" src="https://www.googletagmanager.com/gtag/js?id=UA-7490022-8"></script>
    <script>
      window.dataLayer = window.dataLayer || [];
      function gtag(){dataLayer.push(arguments);}
      gtag('js', new Date());
      gtag('config', 'UA-7490022-8');
    </script>
    <script>
      /*! loadCSS. [c]2017 Filament Group, Inc. MIT License
      - testing support for link[rel=preload]
      - enabling async CSS loading in browsers that do not support rel=preload
      - applying rel preload css once loaded, whether supported or not.
      */
      !function(n){"use strict";n.loadCSS||(n.loadCSS=function(){});var o=loadCSS.relpreload={};if(o.support=function(){var e;try{e=n.document.createElement("link").relList.supports("preload")}catch(t){e=!1}return function(){return e}}(),o.bindMediaToggle=function(t){var e=t.media||"all";function a(){t.addEventListener?t.removeEventListener("load",a):t.attachEvent&&t.detachEvent("onload",a),t.setAttribute("onload",null),t.media=e}t.addEventListener?t.addEventListener("load",a):t.attachEvent&&t.attachEvent("onload",a),setTimeout(function(){t.rel="stylesheet",t.media="only x"}),setTimeout(a,3e3)},o.poly=function(){if(!o.support())for(var t=n.document.getElementsByTagName("link"),e=0;e<t.length;e++){var a=t[e];"preload"!==a.rel||"style"!==a.getAttribute("as")||a.getAttribute("data-loadcss")||(a.setAttribute("data-loadcss",!0),o.bindMediaToggle(a))}},!o.support()){o.poly();var t=n.setInterval(o.poly,500);n.addEventListener?n.addEventListener("load",function(){o.poly(),n.clearInterval(t)}):n.attachEvent&&n.attachEvent("onload",function(){o.poly(),n.clearInterval(t)})}"undefined"!=typeof exports?exports.loadCSS=loadCSS:n.loadCSS=loadCSS}("undefined"!=typeof global?global:this);
    </script>
  </head>
  <body data-spy="scroll" data-target="#affix" data-offset="170">
    <div id="wrapper">
      <header>
        <div class="container">
          <div id="header" class="header navbar-header">
            <div class="header-logo">
              <a href="https://www.nopcommerce.com/">
                <img id="logo" class="svg" src="../../../../logo.png" alt="">
              </a>
            </div>  </div>
          <div class="navbar-collapse collapse in">
            <form class="navbar-form navbar-right" role="search" id="search">
              <div class="form-group">
                <input type="text" class="form-control" id="search-query" placeholder="Search" autocomplete="off">
              </div>
        
              <div class="form-group lang-container">
                    
                    <select id="lang-switcher" class="select-css">
                        <option value="/en/index.html" selected="">
                          English
                        
                    </select>        </div>
            </form>
          </div>
        </div>
        
        <div class="subnav navbar navbar-default">
          <div class="container hide-when-search" id="breadcrumb">
            <ul class="breadcrumb">
              <li></li>
            </ul>
          </div>
        </div>
      </header>
      <div class="container body-content">
        
        <div id="search-results">
          <div class="search-list">Search Results for <span></span></div>
          <div class="sr-items">
            <p><i class="glyphicon glyphicon-refresh index-loading"></i></p>
          </div>
          <ul id="pagination" data-first="First" data-prev="Previous" data-next="Next" data-last="Last"></ul>
        </div>
      </div>
      <div role="main" class="container body-content hide-when-search">
        
        <div class="sidenav hide-when-search">
          <a class="btn toc-toggle collapse" data-toggle="collapse" href="#sidetoggle" aria-expanded="false" aria-controls="sidetoggle">Show / Hide Table of Contents</a>
          <div class="sidetoggle collapse" id="sidetoggle">
            <div id="sidetoc"></div>
          </div>
        </div>
        <div class="article row grid-right">
          <div class="col-md-10">
            <article class="content wrap" id="_content" data-uid="en/running-your-store/catalog/products/rental-products">
<h1 id="rental-products" sourcefile="en/running-your-store/catalog/products/rental-products.md" sourcestartlinenumber="8">Rental products</h1>

<p sourcefile="en/running-your-store/catalog/products/rental-products.md" sourcestartlinenumber="10">The rental products functionality is useful when you want to create a website allowing customers to book rooms and hotels. This feature can also be used for a website that offers such clothes as wedding dresses, camping equipment, children's toys, and more for rent.</p>
<h2 id="example" sourcefile="en/running-your-store/catalog/products/rental-products.md" sourcestartlinenumber="12">Example</h2>
<p sourcefile="en/running-your-store/catalog/products/rental-products.md" sourcestartlinenumber="14">Let's say you wish to create a website providing wedding dresses for rent.</p>
<p sourcefile="en/running-your-store/catalog/products/rental-products.md" sourcestartlinenumber="16">Which functionality will be useful in this case?</p>
<ul sourcefile="en/running-your-store/catalog/products/rental-products.md" sourcestartlinenumber="18">
<li sourcefile="en/running-your-store/catalog/products/rental-products.md" sourcestartlinenumber="18"><p sourcefile="en/running-your-store/catalog/products/rental-products.md" sourcestartlinenumber="18">One of the most important features is to allow customers to choose the <em sourcefile="en/running-your-store/catalog/products/rental-products.md" sourcestartlinenumber="18">rent period</em>. In nopCommerce, it is allowed to choose the start date and end date, as on the screenshot below:
<img src="_static/rental-products/example.jpg" sourcefile="en/running-your-store/catalog/products/rental-products.md" sourcestartlinenumber="19" alt="Rental example"></p>
</li>
<li sourcefile="en/running-your-store/catalog/products/rental-products.md" sourcestartlinenumber="21"><p sourcefile="en/running-your-store/catalog/products/rental-products.md" sourcestartlinenumber="21">nopCommerce also allows the store administrator to choose the <em sourcefile="en/running-your-store/catalog/products/rental-products.md" sourcestartlinenumber="21">rental period</em> and <em sourcefile="en/running-your-store/catalog/products/rental-products.md" sourcestartlinenumber="21">rental period length</em>. For example, you want to give a wedding dress for rent for 3 days minimum. In this case, a customer will see the following on the product details page:
<img src="_static/rental-products/period.jpg" sourcefile="en/running-your-store/catalog/products/rental-products.md" sourcestartlinenumber="22" alt="Rental period"></p>
</li>
<li sourcefile="en/running-your-store/catalog/products/rental-products.md" sourcestartlinenumber="24"><p sourcefile="en/running-your-store/catalog/products/rental-products.md" sourcestartlinenumber="24">Use <em sourcefile="en/running-your-store/catalog/products/rental-products.md" sourcestartlinenumber="24">checkout attributes</em> to allow customers to specify the return time when a carrier should pick up the dress:
<img src="_static/rental-products/time.jpg" sourcefile="en/running-your-store/catalog/products/rental-products.md" sourcestartlinenumber="25" alt="Rental example">
Read more about checkout attributes <a class="xref" href="../../order-management/checkout-attributes.html" sourcefile="en/running-your-store/catalog/products/rental-products.md" sourcestartlinenumber="26">here</a>.</p>
</li>
</ul>
<p sourcefile="en/running-your-store/catalog/products/rental-products.md" sourcestartlinenumber="28">If you have already learned how to set up a <a class="xref" href="add-products.html" sourcefile="en/running-your-store/catalog/products/rental-products.md" sourcestartlinenumber="28">common product</a>, learn how to make this product rental in the section below.</p>
<h2 id="set-up-a-rental-product" sourcefile="en/running-your-store/catalog/products/rental-products.md" sourcestartlinenumber="30">Set up a rental product</h2>
<p sourcefile="en/running-your-store/catalog/products/rental-products.md" sourcestartlinenumber="32">To create a rental product, go to <strong sourcefile="en/running-your-store/catalog/products/rental-products.md" sourcestartlinenumber="32">Catalog → Products</strong>. Click <strong sourcefile="en/running-your-store/catalog/products/rental-products.md" sourcestartlinenumber="32">Add new</strong>, fill in the common product fields, and select the corresponding checkbox in the <em sourcefile="en/running-your-store/catalog/products/rental-products.md" sourcestartlinenumber="32">Rental</em> panel.</p>
<p sourcefile="en/running-your-store/catalog/products/rental-products.md" sourcestartlinenumber="34"><img src="_static/rental-products/rental.png" sourcefile="en/running-your-store/catalog/products/rental-products.md" sourcestartlinenumber="34" alt="Rental panel"></p>
<p sourcefile="en/running-your-store/catalog/products/rental-products.md" sourcestartlinenumber="36">Define the following details:</p>
<ul sourcefile="en/running-your-store/catalog/products/rental-products.md" sourcestartlinenumber="38">
<li sourcefile="en/running-your-store/catalog/products/rental-products.md" sourcestartlinenumber="38"><strong sourcefile="en/running-your-store/catalog/products/rental-products.md" sourcestartlinenumber="38">Rental period length</strong> is a rental cycle length, minimum billing period. Price is specified for this period.</li>
<li sourcefile="en/running-your-store/catalog/products/rental-products.md" sourcestartlinenumber="39"><strong sourcefile="en/running-your-store/catalog/products/rental-products.md" sourcestartlinenumber="39">Rental period</strong> in <em sourcefile="en/running-your-store/catalog/products/rental-products.md" sourcestartlinenumber="39">Days</em>, <em sourcefile="en/running-your-store/catalog/products/rental-products.md" sourcestartlinenumber="39">Weeks</em>, <em sourcefile="en/running-your-store/catalog/products/rental-products.md" sourcestartlinenumber="39">Months</em> or <em sourcefile="en/running-your-store/catalog/products/rental-products.md" sourcestartlinenumber="39">Years</em>. It defines the time units of the rental period.</li>
</ul>
<p sourcefile="en/running-your-store/catalog/products/rental-products.md" sourcestartlinenumber="41">When buying rental products, customers have to specify the rental period in the public store. The amount to be paid is calculated automatically.</p>
<p sourcefile="en/running-your-store/catalog/products/rental-products.md" sourcestartlinenumber="43"><img src="_static/rental-products/rental1.png" sourcefile="en/running-your-store/catalog/products/rental-products.md" sourcestartlinenumber="43" alt="Rental in public store"></p>
<h2 id="tutorials" sourcefile="en/running-your-store/catalog/products/rental-products.md" sourcestartlinenumber="45">Tutorials</h2>
<ul sourcefile="en/running-your-store/catalog/products/rental-products.md" sourcestartlinenumber="47">
<li sourcefile="en/running-your-store/catalog/products/rental-products.md" sourcestartlinenumber="47"><a href="https://www.youtube.com/watch?v=tOaC6hOILZY&amp;list=PLnL_aDfmRHwsbhj621A-RFb1KnzeFxYz4&amp;index=24" sourcefile="en/running-your-store/catalog/products/rental-products.md" sourcestartlinenumber="47">Managing rental products</a></li>
</ul>
            </article>
          </div>
          
          <div class="hidden-sm col-md-2" role="complementary">
            <div class="sideaffix">
              <div class="contribution">
                <ul class="nav">
                  <li>
                    <a href="https://github.com/nopSolutions/nopCommerce-Docs/blob/master/en/running-your-store/catalog/products/rental-products.md/#L1" class="contribution-link">Improve this Doc</a>
                  </li>
                </ul>
              </div>
              <nav class="bs-docs-sidebar hidden-print hidden-xs hidden-sm affix" id="affix">
              <!-- <p><a class="back-to-top" href="#top">Back to top</a><p> -->
              </nav>
            </div>
          </div>
        </div>
      </div>
      
      <footer>
        <div class="grad-bottom"></div>
        <div class="footer">
          <div class="container">
            <span class="pull-right">
              <a href="#top">Back to top</a>
            </span>
            
            <span>Generated by <strong>DocFX</strong></span>
          </div>
        </div>
      </footer>
    </div>
    
    <script type="text/javascript" src="../../../../styles/docfx.vendor.js"></script>
    <script type="text/javascript" src="../../../../styles/docfx.js"></script>
    <script type="text/javascript" src="../../../../styles/main.js"></script>
  </body>
</html>
