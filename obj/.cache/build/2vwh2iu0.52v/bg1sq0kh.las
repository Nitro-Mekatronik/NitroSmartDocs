<!DOCTYPE html>
<!--[if IE]><![endif]-->
<html>
  
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>How do I register new routes? </title>
    <meta name="viewport" content="width=device-width">
    <meta name="title" content="How do I register new routes? ">
    <meta name="generator" content="docfx 2.59.4.0">
    
    <link rel="shortcut icon" href="../../../favicon.ico">
    <link rel="stylesheet" href="../../../styles/docfx.vendor.css">
    <link rel="stylesheet" href="../../../styles/docfx.css">
    <link rel="stylesheet" href="../../../styles/main.css">
    <link rel="preload" href="../../../fonts/fonts.css" )"="" as="style" onload="this.onload=null;this.rel='stylesheet'">
    <meta property="docfx:navrel" content="/">
    <meta property="docfx:tocrel" content="../../toc.html">
    
    <meta property="docfx:rel" content="../../../">
    
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
                <img id="logo" class="svg" src="../../../logo.png" alt="">
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
            <article class="content wrap" id="_content" data-uid="en/developer/tutorials/register-new-routes">
<h1 id="register-new-routes" sourcefile="en/developer/tutorials/register-new-routes.md" sourcestartlinenumber="8">Register new routes</h1>

<p sourcefile="en/developer/tutorials/register-new-routes.md" sourcestartlinenumber="10"><a href="https://docs.microsoft.com/aspnet/core/fundamentals/routing" sourcefile="en/developer/tutorials/register-new-routes.md" sourcestartlinenumber="10">ASP.NET Core routing</a> is responsible for mapping incoming browser requests to particular MVC controller actions. nopCommerce has an <code sourcefile="en/developer/tutorials/register-new-routes.md" sourcestartlinenumber="10">IRouteProvider</code> interface which is used for route registration during application startup. All main routes are registered in the <code sourcefile="en/developer/tutorials/register-new-routes.md" sourcestartlinenumber="10">RouteProvider</code> and <code sourcefile="en/developer/tutorials/register-new-routes.md" sourcestartlinenumber="10">GenericUrlRouteProvider</code> classes located in the <em sourcefile="en/developer/tutorials/register-new-routes.md" sourcestartlinenumber="10"><code sourcefile="en/developer/tutorials/register-new-routes.md" sourcestartlinenumber="10">Nop.Web</code></em> project.</p>
<p sourcefile="en/developer/tutorials/register-new-routes.md" sourcestartlinenumber="12">You can create as many <code sourcefile="en/developer/tutorials/register-new-routes.md" sourcestartlinenumber="12">RouteProvider</code> classes as you need. For example, if your plugin has some custom routes which you want to register, then create a new class implementing the <code sourcefile="en/developer/tutorials/register-new-routes.md" sourcestartlinenumber="12">IRouteProvider</code> interface and register the routes specific to your new plugin.</p>
<pre><code class="lang-csharp" sourcefile="en/developer/tutorials/register-new-routes.md" sourcestartlinenumber="14">/// &lt;summary&gt;
/// Represents plugin route provider
/// &lt;/summary&gt;
public class RouteProvider : IRouteProvider
{
    /// &lt;summary&gt;
    /// Register routes
    /// &lt;/summary&gt;
    /// &lt;param name=&quot;endpointRouteBuilder&quot;&gt;Route builder&lt;/param&gt;
    public void RegisterRoutes(IEndpointRouteBuilder endpointRouteBuilder)
    {
        endpointRouteBuilder.MapControllerRoute(PayPalCommerceDefaults.ConfigurationRouteName,
                &quot;Admin/PayPalCommerce/Configure&quot;,
                new { controller = &quot;PayPalCommerce&quot;, action = &quot;Configure&quot; });
        
    }
    /// &lt;summary&gt;
    /// Gets a priority of route provider
    /// &lt;/summary&gt;
    public int Priority =&gt; 0;
}
</code></pre>

                  <div class="course-banner">
                      <a target="_blank" href="https://www.nopcommerce.com/training?utm_source=docs_nopcommerce&utm_medium=documentation&utm_campaign=course&utm_content=Developers_Guide">
                          <div class="course-banner-left"></div>
                          <div class="course-banner-center">
                              <div class="course-banner-title"><span>nopCommerce training course</span></div>
                              <div class="course-banner-description"><span>Start developing your skills and become a Certified Developer</span></div>
                          </div>
                          <div class="course-banner-right"></div>
                      </a> 
                  </div>            </article>
          </div>
          
          <div class="hidden-sm col-md-2" role="complementary">
            <div class="sideaffix">
              <div class="contribution">
                <ul class="nav">
                  <li>
                    <a href="https://github.com/nopSolutions/nopCommerce-Docs/blob/master/en/developer/tutorials/register-new-routes.md/#L1" class="contribution-link">Improve this Doc</a>
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
    
    <script type="text/javascript" src="../../../styles/docfx.vendor.js"></script>
    <script type="text/javascript" src="../../../styles/docfx.js"></script>
    <script type="text/javascript" src="../../../styles/main.js"></script>
  </body>
</html>