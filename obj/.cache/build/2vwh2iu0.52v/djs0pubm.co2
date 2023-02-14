<!DOCTYPE html>
<!--[if IE]><![endif]-->
<html>
  
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>How to write a plugin for nopCommerce </title>
    <meta name="viewport" content="width=device-width">
    <meta name="title" content="How to write a plugin for nopCommerce ">
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
            <article class="content wrap" id="_content" data-uid="en/developer/plugins/how-to-write-plugin-4.10">
<h1 id="how-to-write-a-plugin-for-nopcommerce-410" sourcefile="en/developer/plugins/how-to-write-plugin-4.10.md" sourcestartlinenumber="8">How to write a plugin for nopCommerce 4.10</h1>

<blockquote sourcefile="en/developer/plugins/how-to-write-plugin-4.10.md" sourcestartlinenumber="10">
<p sourcefile="en/developer/plugins/how-to-write-plugin-4.10.md" sourcestartlinenumber="10">In computing, a plug-in (or plugin) is a set of software components that add specific abilities to a larger software application (Wikipedia).</p>
</blockquote>
<p sourcefile="en/developer/plugins/how-to-write-plugin-4.10.md" sourcestartlinenumber="12">Plugins are used to extend the functionality of nopCommerce. nopCommerce has several types of plugins. For example, payment methods (such as PayPal), tax providers, shipping method computation methods (such as UPS, USP, FedEx), widgets (such as 'live chat' block), and many others. nopCommerce is already distributed with many different plugins. You can also search various plugins on the <a href="https://www.nopcommerce.com/marketplace" sourcefile="en/developer/plugins/how-to-write-plugin-4.10.md" sourcestartlinenumber="12">nopCommerce official site</a> to see if someone has already created a plugin that suits your needs. If not, this article will guide you through the process of creating your plugin.</p>
<h2 id="the-plugin-structure-required-files-and-locations" sourcefile="en/developer/plugins/how-to-write-plugin-4.10.md" sourcestartlinenumber="14">The plugin structure, required files, and locations</h2>
<ol sourcefile="en/developer/plugins/how-to-write-plugin-4.10.md" sourcestartlinenumber="16">
<li sourcefile="en/developer/plugins/how-to-write-plugin-4.10.md" sourcestartlinenumber="16"><p sourcefile="en/developer/plugins/how-to-write-plugin-4.10.md" sourcestartlinenumber="16">First thing you need to do is to create a new &quot;Class Library&quot; project in the solution. It's a good practice to place all plugins into the <code sourcefile="en/developer/plugins/how-to-write-plugin-4.10.md" sourcestartlinenumber="16">\Plugins</code> directory in the root of your solution (do not mix up with \Plugins subdirectory located in <code sourcefile="en/developer/plugins/how-to-write-plugin-4.10.md" sourcestartlinenumber="16">\Nop.Web</code> directory which is used for already deployed plugins). It's a good practice to place all plugins into the &quot;Plugins&quot; solution folder (you can find more information about solution folders <a href="http://msdn.microsoft.com/library/sx2027y2.aspx" sourcefile="en/developer/plugins/how-to-write-plugin-4.10.md" sourcestartlinenumber="16">here</a>).</p>
<p sourcefile="en/developer/plugins/how-to-write-plugin-4.10.md" sourcestartlinenumber="18">A recommended name for a plugin project is &quot;Nop.Plugin.{Group}.{Name}&quot;. {Group} is your plugin group (for example, &quot;Payment&quot; or &quot;Shipping&quot;). {Name} is your plugin name (for example, &quot;PayPalStandard&quot;). For example, the PayPal Standard payment plugin has the following name: Nop.Plugin.Payments.PayPalStandard. But please note that it's not a requirement. And you can choose any name for a plugin. For example, &quot;MyGreatPlugin&quot;.</p>
<p sourcefile="en/developer/plugins/how-to-write-plugin-4.10.md" sourcestartlinenumber="20"><img src="_static/how-to-write-plugin-4.10/write_plugin_4.10_1.jpg" sourcefile="en/developer/plugins/how-to-write-plugin-4.10.md" sourcestartlinenumber="20" alt="p1"></p>
</li>
<li sourcefile="en/developer/plugins/how-to-write-plugin-4.10.md" sourcestartlinenumber="22"><p sourcefile="en/developer/plugins/how-to-write-plugin-4.10.md" sourcestartlinenumber="22">Once the plugin project is created you have to open its <code sourcefile="en/developer/plugins/how-to-write-plugin-4.10.md" sourcestartlinenumber="22">.csproj</code> file in any text editor and replace its content with the following one:</p>
<pre><code class="lang-xml" sourcefile="en/developer/plugins/how-to-write-plugin-4.10.md" sourcestartlinenumber="24">&lt;Project Sdk=&quot;Microsoft.NET.Sdk&quot;&gt;
    &lt;PropertyGroup&gt;
    &lt;TargetFramework&gt;netcoreapp2.1&lt;/TargetFramework&gt;
    &lt;/PropertyGroup&gt;
    &lt;PropertyGroup Condition=&quot;'$(Configuration)|$(Platform)'=='Release|AnyCPU'&quot;&gt;
    &lt;OutputPath&gt;..\..\Presentation\Nop.Web\Plugins\PLUGIN_OUTPUT_DIRECTORY&lt;/OutputPath&gt;
    &lt;OutDir&gt;$(OutputPath)&lt;/OutDir&gt;
    &lt;/PropertyGroup&gt;
    &lt;PropertyGroup Condition=&quot;'$(Configuration)|$(Platform)'=='Debug|AnyCPU'&quot;&gt;
    &lt;OutputPath&gt;..\..\Presentation\Nop.Web\Plugins\PLUGIN_OUTPUT_DIRECTORY&lt;/OutputPath&gt;
    &lt;OutDir&gt;$(OutputPath)&lt;/OutDir&gt;
    &lt;/PropertyGroup&gt;
    &lt;!-- This target execute after &quot;Build&quot; target --&gt;
    &lt;Target Name=&quot;NopTarget&quot; AfterTargets=&quot;Build&quot;&gt;
    &lt;!-- Delete unnecessary libraries from plugins path --&gt;
    &lt;MSBuild Projects=&quot;$(MSBuildProjectDirectory)\..\..\Build\ClearPluginAssemblies.proj&quot;    Properties=&quot;PluginPath=$(MSBuildProjectDirectory)\$(OutDir)&quot; Targets=&quot;NopClear&quot; /&gt;
    &lt;/Target&gt;
&lt;/Project&gt;
</code></pre>
<p sourcefile="en/developer/plugins/how-to-write-plugin-4.10.md" sourcestartlinenumber="45">Where PLUGIN_OUTPUT_DIRECTORY should be replaced with the plugin name, for example, Payments.PayPalStandard.</p>
<p sourcefile="en/developer/plugins/how-to-write-plugin-4.10.md" sourcestartlinenumber="47">We do it this way to be able to use a new approach to add third-party references which were introduced in .NET Core. But it's not required. Moreover, references from already referenced libraries will be loaded automatically. So it is very convenient.</p>
</li>
<li sourcefile="en/developer/plugins/how-to-write-plugin-4.10.md" sourcestartlinenumber="49"><p sourcefile="en/developer/plugins/how-to-write-plugin-4.10.md" sourcestartlinenumber="49">The next step is creating a <code sourcefile="en/developer/plugins/how-to-write-plugin-4.10.md" sourcestartlinenumber="49">plugin.json</code> file required for each plugin. This file contains meta-information describing your plugin. Just copy this file from any other existing plugin and modify it for your needs. For information about the <code sourcefile="en/developer/plugins/how-to-write-plugin-4.10.md" sourcestartlinenumber="49">plugin.json</code> file, please see <a class="xref" href="plugin.json.html" sourcefile="en/developer/plugins/how-to-write-plugin-4.10.md" sourcestartlinenumber="49">plugin.json file</a>.</p>
</li>
<li sourcefile="en/developer/plugins/how-to-write-plugin-4.10.md" sourcestartlinenumber="51"><p sourcefile="en/developer/plugins/how-to-write-plugin-4.10.md" sourcestartlinenumber="51">The last required step is to create a class that implements the <code sourcefile="en/developer/plugins/how-to-write-plugin-4.10.md" sourcestartlinenumber="51">IPlugin</code> interface (Nop.Core.Plugins namespace). nopCommerce has the <code sourcefile="en/developer/plugins/how-to-write-plugin-4.10.md" sourcestartlinenumber="51">BasePlugin</code> class which already implements some IPlugin methods and allows you to avoid source code duplication. nopCommerce also provides you with some specific interfaces derived from <code sourcefile="en/developer/plugins/how-to-write-plugin-4.10.md" sourcestartlinenumber="51">IPlugin</code>. For example, we have the &quot;IPaymentMethod&quot; interface which is used for creating new payment method plugins. It contains some methods which are specific only for payment methods such as ProcessPayment() or GetAdditionalHandlingFee(). Currently, nopCommerce has the following specific plugin interfaces:</p>
<ul sourcefile="en/developer/plugins/how-to-write-plugin-4.10.md" sourcestartlinenumber="53">
<li sourcefile="en/developer/plugins/how-to-write-plugin-4.10.md" sourcestartlinenumber="53"><strong sourcefile="en/developer/plugins/how-to-write-plugin-4.10.md" sourcestartlinenumber="53">IPaymentMethod</strong>. These plugins are used for payment processing.</li>
<li sourcefile="en/developer/plugins/how-to-write-plugin-4.10.md" sourcestartlinenumber="54"><strong sourcefile="en/developer/plugins/how-to-write-plugin-4.10.md" sourcestartlinenumber="54">IShippingRateComputationMethod</strong>. These plugins are used for retrieving accepted delivery methods and appropriate shipping rates. For example, UPS, UPS, FedEx, etc.</li>
<li sourcefile="en/developer/plugins/how-to-write-plugin-4.10.md" sourcestartlinenumber="55"><strong sourcefile="en/developer/plugins/how-to-write-plugin-4.10.md" sourcestartlinenumber="55">IPickupPointProvider</strong>. These plugins are used for providing pickup points.</li>
<li sourcefile="en/developer/plugins/how-to-write-plugin-4.10.md" sourcestartlinenumber="56"><strong sourcefile="en/developer/plugins/how-to-write-plugin-4.10.md" sourcestartlinenumber="56">ITaxProvider</strong>. Tax providers are used for getting tax rates.</li>
<li sourcefile="en/developer/plugins/how-to-write-plugin-4.10.md" sourcestartlinenumber="57"><strong sourcefile="en/developer/plugins/how-to-write-plugin-4.10.md" sourcestartlinenumber="57">IExchangeRateProvider</strong>. Used for getting currency exchange rate.</li>
<li sourcefile="en/developer/plugins/how-to-write-plugin-4.10.md" sourcestartlinenumber="58"><strong sourcefile="en/developer/plugins/how-to-write-plugin-4.10.md" sourcestartlinenumber="58">IDiscountRequirementRule</strong>. Allows you to create new discount rules such as &quot;Billing country of a customer should be…&quot;</li>
<li sourcefile="en/developer/plugins/how-to-write-plugin-4.10.md" sourcestartlinenumber="59"><strong sourcefile="en/developer/plugins/how-to-write-plugin-4.10.md" sourcestartlinenumber="59">IExternalAuthenticationMethod</strong>. Used for creating external authentication methods such as Facebook, Twitter, OpenID, etc.</li>
<li sourcefile="en/developer/plugins/how-to-write-plugin-4.10.md" sourcestartlinenumber="60"><strong sourcefile="en/developer/plugins/how-to-write-plugin-4.10.md" sourcestartlinenumber="60">IWidgetPlugin</strong>. It allows you to create widgets. Widgets are rendered on some parts of your site. For example, it can be a &quot;Live chat&quot; block on your site's left column.</li>
<li sourcefile="en/developer/plugins/how-to-write-plugin-4.10.md" sourcestartlinenumber="61"><strong sourcefile="en/developer/plugins/how-to-write-plugin-4.10.md" sourcestartlinenumber="61">IMiscPlugin</strong>. If your plugin doesn't fit any of the interfaces above.</li>
</ul>
</li>
</ol>
<div class="IMPORTANT" sourcefile="en/developer/plugins/how-to-write-plugin-4.10.md" sourcestartlinenumber="63">
<h5>Important</h5>
<p sourcefile="en/developer/plugins/how-to-write-plugin-4.10.md" sourcestartlinenumber="64">After each project build, clean the solution before making changes. Some resources will be cached and can lead to developer insanity.</p>
</div>
<h2 id="handling-requests-controllers-models-and-views" sourcefile="en/developer/plugins/how-to-write-plugin-4.10.md" sourcestartlinenumber="66">Handling requests. Controllers, models, and views</h2>
<p sourcefile="en/developer/plugins/how-to-write-plugin-4.10.md" sourcestartlinenumber="68">Now you can see the plugin by going to <strong sourcefile="en/developer/plugins/how-to-write-plugin-4.10.md" sourcestartlinenumber="68">Admin area → Configuration → Plugins</strong>. But as you guessed our plugin does nothing. It does not even have a user interface for its configuration. Let's create a page to configure the plugin.</p>
<p sourcefile="en/developer/plugins/how-to-write-plugin-4.10.md" sourcestartlinenumber="70">What we need to do now is create a controller, a model, and a view.</p>
<ul sourcefile="en/developer/plugins/how-to-write-plugin-4.10.md" sourcestartlinenumber="72">
<li sourcefile="en/developer/plugins/how-to-write-plugin-4.10.md" sourcestartlinenumber="72">MVC controllers are responsible for responding to requests made against an ASP.NET MVC website. Each browser request is mapped to a particular controller.</li>
<li sourcefile="en/developer/plugins/how-to-write-plugin-4.10.md" sourcestartlinenumber="73">A view contains the HTML markup and content that is sent to the browser. A view is the equivalent of a page when working with an ASP.NET MVC application.</li>
<li sourcefile="en/developer/plugins/how-to-write-plugin-4.10.md" sourcestartlinenumber="74">An MVC model contains all of your application logic that is not contained in a view or a controller.</li>
</ul>
<p sourcefile="en/developer/plugins/how-to-write-plugin-4.10.md" sourcestartlinenumber="76">You can find more information about the MVC pattern <a href="http://www.asp.net/mvc/tutorials/older-versions/overview/understanding-models-views-and-controllers-cs" sourcefile="en/developer/plugins/how-to-write-plugin-4.10.md" sourcestartlinenumber="76">here</a>.</p>
<p sourcefile="en/developer/plugins/how-to-write-plugin-4.10.md" sourcestartlinenumber="78">So let's start:</p>
<ul sourcefile="en/developer/plugins/how-to-write-plugin-4.10.md" sourcestartlinenumber="80">
<li sourcefile="en/developer/plugins/how-to-write-plugin-4.10.md" sourcestartlinenumber="80"><p sourcefile="en/developer/plugins/how-to-write-plugin-4.10.md" sourcestartlinenumber="80"><strong sourcefile="en/developer/plugins/how-to-write-plugin-4.10.md" sourcestartlinenumber="80">Create the model</strong>. Add a Models folder in the new plugin, and then add a new model class that fits your need.</p>
</li>
<li sourcefile="en/developer/plugins/how-to-write-plugin-4.10.md" sourcestartlinenumber="81"><p sourcefile="en/developer/plugins/how-to-write-plugin-4.10.md" sourcestartlinenumber="81"><strong sourcefile="en/developer/plugins/how-to-write-plugin-4.10.md" sourcestartlinenumber="81">Create the view</strong>. Add a Views folder in the new plugin, and then add a cshtml file named <code sourcefile="en/developer/plugins/how-to-write-plugin-4.10.md" sourcestartlinenumber="81">Configure.cshtml</code>. Set &quot;Build Action&quot; property of the view file is set to &quot;Content&quot;, and the &quot;Copy to Output Directory&quot; property is set to &quot;Copy if newer&quot;. Note that the configuration page should use the <code sourcefile="en/developer/plugins/how-to-write-plugin-4.10.md" sourcestartlinenumber="81">_ConfigurePlugin</code> layout. Also, make sure that you have the <code sourcefile="en/developer/plugins/how-to-write-plugin-4.10.md" sourcestartlinenumber="81">_ViewImports</code> file in your \Views directory. You can just copy it from any other existing plugin.</p>
</li>
<li sourcefile="en/developer/plugins/how-to-write-plugin-4.10.md" sourcestartlinenumber="82"><p sourcefile="en/developer/plugins/how-to-write-plugin-4.10.md" sourcestartlinenumber="82"><strong sourcefile="en/developer/plugins/how-to-write-plugin-4.10.md" sourcestartlinenumber="82">Create the controller</strong>. Add a Controllers folder in the new plugin, and then add a new controller class. A good practice is to name plugin controllers <code sourcefile="en/developer/plugins/how-to-write-plugin-4.10.md" sourcestartlinenumber="82">{Group}{Name}Controller.cs</code>. For example, PaymentPayPalStandardController. Of course, it's not a requirement to name controllers this way (but just a recommendation). Then create an appropriate action method for the configuration page (in the admin area). Let's name it &quot;Configure&quot;. Prepare a model class and pass it to the following view using a physical view path: - <code sourcefile="en/developer/plugins/how-to-write-plugin-4.10.md" sourcestartlinenumber="82">~/Plugins/{PluginOutputDirectory}/Views/Configure.cshtml</code>.</p>
</li>
<li sourcefile="en/developer/plugins/how-to-write-plugin-4.10.md" sourcestartlinenumber="83"><p sourcefile="en/developer/plugins/how-to-write-plugin-4.10.md" sourcestartlinenumber="83">Use the following attributes for your action method:</p>
<pre><code class="lang-csharp" sourcefile="en/developer/plugins/how-to-write-plugin-4.10.md" sourcestartlinenumber="85">[AuthorizeAdmin] //confirms access to the admin panel
[Area(AreaNames.Admin)] //specifies the area containing a controller or action
</code></pre>
<p sourcefile="en/developer/plugins/how-to-write-plugin-4.10.md" sourcestartlinenumber="90">For example, open PayPalStandard payment plugin and look at its implementation of PaymentPayPalStandardController.</p>
</li>
</ul>
<p sourcefile="en/developer/plugins/how-to-write-plugin-4.10.md" sourcestartlinenumber="92">Then for each plugin that has a configuration page, you should specify a configuration URL. A base class named <code sourcefile="en/developer/plugins/how-to-write-plugin-4.10.md" sourcestartlinenumber="92">BasePlugin</code> has <code sourcefile="en/developer/plugins/how-to-write-plugin-4.10.md" sourcestartlinenumber="92">GetConfigurationPageUrl</code> method which returns a configuration URL:</p>
<pre><code class="lang-csharp" sourcefile="en/developer/plugins/how-to-write-plugin-4.10.md" sourcestartlinenumber="94">return $&quot;{_webHelper.GetStoreLocation()}Admin/ControllerName/ActionName&quot;;
</code></pre>
<p sourcefile="en/developer/plugins/how-to-write-plugin-4.10.md" sourcestartlinenumber="98">Where ControllerName is the name of your controller and ActionName is a name of the action (usually it's &quot;Configure&quot;).</p>
<p sourcefile="en/developer/plugins/how-to-write-plugin-4.10.md" sourcestartlinenumber="100">Once you have installed your plugin and added the configuration method you will find a link to configure your plugin under Admin → Configuration → Plugins.</p>
<div class="TIP" sourcefile="en/developer/plugins/how-to-write-plugin-4.10.md" sourcestartlinenumber="102">
<h5>Tip</h5>
<p sourcefile="en/developer/plugins/how-to-write-plugin-4.10.md" sourcestartlinenumber="103">The easiest way to complete the steps described above is by opening any other plugin and copying these files into your plugin project. Then just rename appropriate classes and directories.</p>
</div>
<p sourcefile="en/developer/plugins/how-to-write-plugin-4.10.md" sourcestartlinenumber="105">For example, the project structure of the PayPalStandard plugin looks like the image below:</p>
<p sourcefile="en/developer/plugins/how-to-write-plugin-4.10.md" sourcestartlinenumber="107"><img src="_static/how-to-write-plugin-4.10/write_plugin_4.10_3.jpg" sourcefile="en/developer/plugins/how-to-write-plugin-4.10.md" sourcestartlinenumber="107" alt="p3"></p>
<h2 id="handling-install-and-uninstall-methods" sourcefile="en/developer/plugins/how-to-write-plugin-4.10.md" sourcestartlinenumber="109">Handling &quot;Install&quot; and &quot;Uninstall&quot; methods</h2>
<p sourcefile="en/developer/plugins/how-to-write-plugin-4.10.md" sourcestartlinenumber="111">This step is optional. Some plugins can require additional logic during plugin installation. For example, a plugin can insert new locale resources. So open your IPlugin implementation (in most cases it'll be derived from BasePlugin class) and override the following methods:</p>
<ul sourcefile="en/developer/plugins/how-to-write-plugin-4.10.md" sourcestartlinenumber="113">
<li sourcefile="en/developer/plugins/how-to-write-plugin-4.10.md" sourcestartlinenumber="113">Install. This method will be invoked during plugin installation. You can initialize any settings here, insert new locale resources, or create some new database tables (if required).</li>
<li sourcefile="en/developer/plugins/how-to-write-plugin-4.10.md" sourcestartlinenumber="114">Uninstall. This method will be invoked during plugin uninstallation.</li>
</ul>
<div class="IMPORTANT" sourcefile="en/developer/plugins/how-to-write-plugin-4.10.md" sourcestartlinenumber="116">
<h5>Important</h5>
<p sourcefile="en/developer/plugins/how-to-write-plugin-4.10.md" sourcestartlinenumber="117">If you override one of these methods, do not hide its base implementation.</p>
</div>
<p sourcefile="en/developer/plugins/how-to-write-plugin-4.10.md" sourcestartlinenumber="119">For example, overridden &quot;Install&quot; method should include the following method call: base.Install(). The &quot;Install&quot; method of the PayPalStandard plugin looks like the code below</p>
<pre><code class="lang-csharp" sourcefile="en/developer/plugins/how-to-write-plugin-4.10.md" sourcestartlinenumber="121">public override void Install()
{
    var settings = new PayPalStandardPaymentSettings()
    {
        UseSandbox = true
    };
    _settingService.SaveSetting(settings);
    base.Install();
}
</code></pre>
<div class="TIP" sourcefile="en/developer/plugins/how-to-write-plugin-4.10.md" sourcestartlinenumber="133">
<h5>Tip</h5>
<p sourcefile="en/developer/plugins/how-to-write-plugin-4.10.md" sourcestartlinenumber="134">The list of installed plugins is located in <code sourcefile="en/developer/plugins/how-to-write-plugin-4.10.md" sourcestartlinenumber="134">\App_Data\installedPlugins.json</code>. The list is created during installation.</p>
</div>
<h2 id="routes" sourcefile="en/developer/plugins/how-to-write-plugin-4.10.md" sourcestartlinenumber="136">Routes</h2>
<p sourcefile="en/developer/plugins/how-to-write-plugin-4.10.md" sourcestartlinenumber="138">Here we will have a look at how to register plugin routes. ASP.NET Core routing is responsible for mapping incoming browser requests to particular MVC controller actions. You can find more information about routing <a href="https://docs.microsoft.com/aspnet/core/fundamentals/routing" sourcefile="en/developer/plugins/how-to-write-plugin-4.10.md" sourcestartlinenumber="138">here</a>. So follow the next steps:</p>
<ul sourcefile="en/developer/plugins/how-to-write-plugin-4.10.md" sourcestartlinenumber="140">
<li sourcefile="en/developer/plugins/how-to-write-plugin-4.10.md" sourcestartlinenumber="140"><p sourcefile="en/developer/plugins/how-to-write-plugin-4.10.md" sourcestartlinenumber="140">If you need to add some custom route, then create the <code sourcefile="en/developer/plugins/how-to-write-plugin-4.10.md" sourcestartlinenumber="140">RouteProvider.cs</code> file. It informs the nopCommerce system about plugin routes. For example, the following RouteProvider class adds a new route which can be accessed by opening your web browser and navigating to <code sourcefile="en/developer/plugins/how-to-write-plugin-4.10.md" sourcestartlinenumber="140">http://www.yourStore.com/Plugins/PaymentPayPalStandard/PDTHandler</code> URL (used by PayPal plugin):</p>
<pre><code class="lang-csharp" sourcefile="en/developer/plugins/how-to-write-plugin-4.10.md" sourcestartlinenumber="142">public partial class RouteProvider : IRouteProvider
{
    public void RegisterRoutes(IRouteBuilder routeBuilder)
    {
         routeBuilder.MapRoute(&quot;Plugin.Payments.PayPalStandard.PDTHandler&quot;, &quot;Plugins/   PaymentPayPalStandard/PDTHandler&quot;,
         new { controller = &quot;PaymentPayPalStandard&quot;, action = &quot;PDTHandler&quot; });
    }
    public int Priority
    {
        get
        {
            return -1;
        }
    }
}
</code></pre>
</li>
</ul>
<h2 id="upgrading-nopcommerce-may-break-plugins" sourcefile="en/developer/plugins/how-to-write-plugin-4.10.md" sourcestartlinenumber="160">Upgrading nopCommerce may break plugins</h2>
<p sourcefile="en/developer/plugins/how-to-write-plugin-4.10.md" sourcestartlinenumber="162">Some plugins may become outdated and no longer work with the newer version of nopCommerce. If you have issues after upgrading to the newer version, delete the plugin and visit the official nopCommerce website to see if a newer version is available. Many plugin authors will upgrade their plugins to accommodate the newer version, however, some will not and their plugin will become obsolete with the improvements in nopCommerce. But in most cases, you can simply open an appropriate <code sourcefile="en/developer/plugins/how-to-write-plugin-4.10.md" sourcestartlinenumber="162">plugin.json</code> file and update the <strong sourcefile="en/developer/plugins/how-to-write-plugin-4.10.md" sourcestartlinenumber="162">SupportedVersions</strong> field.</p>
<h2 id="conclusion" sourcefile="en/developer/plugins/how-to-write-plugin-4.10.md" sourcestartlinenumber="164">Conclusion</h2>
<p sourcefile="en/developer/plugins/how-to-write-plugin-4.10.md" sourcestartlinenumber="166">Hopefully this will get you started with nopCommerce and prepare you to build more elaborate plugins.</p>

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
                    <a href="https://github.com/nopSolutions/nopCommerce-Docs/blob/master/en/developer/plugins/how-to-write-plugin-4.10.md/#L1" class="contribution-link">Improve this Doc</a>
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
