<%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<!DOCTYPE html>
<html>
  <head>
    <title>kodeWeave</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="user-scalable=no, width=device-width, initial-scale=1">
    <meta name="description" content="HTML/CSS/JS and Markdown Code Playground For Web Designers and Developers">
    <meta name="author" content="Michael Schwartz">
    <!-- Chrome, Firefox OS and Opera -->
    <meta name="theme-color" content="#82CA28">
    <!-- Windows Phone -->
    <meta name="msapplication-navbutton-color" content="#2882CA">
    <!-- iOS Safari -->
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black-translucent">
    <meta name="apple-mobile-web-app-title" content="kodeWeave">
    <link rel="apple-touch-icon" href="resources/editor/apple-touch-icon-iphone.png">
    <link rel="icon" type="image/vnd.microsoft.icon" href="resources/editor/favicon.ico">
    <link rel="SHORTCUT ICON" href="resources/editor/favicon.ico">
    <link rel="stylesheet" href="resources/editor/css/theme.css" />
    <script src="https://togetherjs.com/togetherjs-min.js"></script>
    <script src="resources/editor/libraries/jquery/jquery.js"></script>
    <script src="resources/editor/lib/jquery.clearsearch.js"></script>

    <script src="resources/editor/lib/jade.js"></script>
    <script src="resources/editor/lib/he.js"></script>
    <script src="resources/editor/lib/html2jade.js"></script>
    <script src="resources/editor/lib/js2coffee.js"></script>
    <script src="resources/editor/lib/stylus.min.js"></script>
    <script src="resources/editor/lib/css2stylus.js"></script>

    <script src="resources/editor/lib/jsbeautify/beautify.js"></script>
    <script src="resources/editor/lib/jsbeautify/beautify-css.js"></script>
    <script src="resources/editor/lib/jsbeautify/beautify-html.js"></script>
    <script src="resources/editor/lib/jsbeautify/unpackers/javascriptobfuscator_unpacker.js"></script>
    <script src="resources/editor/lib/jsbeautify/unpackers/urlencode_unpacker.js"></script>
    <script src="resources/editor/lib/jsbeautify/unpackers/p_a_c_k_e_r_unpacker.js"></script>
    <script src="resources/editor/lib/jsbeautify/unpackers/myobfuscate_unpacker.js"></script>

    <script src="resources/editor/libraries/jszip/jszip.min.js"></script>
    <script src="resources/editor/libraries/jszip/jszip-utils.js"></script>
    <script src="resources/editor/libraries/jszip/FileSaver.js"></script>
    <script src="resources/editor/libraries/jszip/Blob.js"></script>
    <script src="resources/editor/libraries/alertifyjs/alertify.min.js"></script>
    <script src="resources/editor/libraries/showdown/Showdown.min.js"></script>


    <link rel="stylesheet" href="../tcc/userSetti.css">

    <script src="resources/editor/libraries/codemirror/codemirror.js"></script>
    <script src="resources/editor/libraries/codemirror/mode/javascript/javascript.js"></script>
    <script src="resources/editor/libraries/codemirror/mode/xml/xml.js"></script>
    <script src="resources/editor/libraries/codemirror/mode/css/css.js"></script>
    <script src="resources/editor/libraries/codemirror/mode/htmlmixed/htmlmixed.js"></script>
    <script src="resources/editor/libraries/codemirror/mode/ruby/ruby.js"></script>
    <script src="resources/editor/libraries/codemirror/mode/jade/jade.js"></script>
    <script src="resources/editor/libraries/codemirror/mode/haml/haml.js"></script>
    <script src="resources/editor/libraries/codemirror/addon/edit/closetag.js"></script>
    <script src="resources/editor/libraries/codemirror/addon/edit/matchbrackets.js"></script>
    <script src="resources/editor/libraries/codemirror/addon/selection/active-line.js"></script>
    <script src="resources/editor/libraries/codemirror/addon/fold/foldcode.js"></script>
    <script src="resources/editor/libraries/codemirror/addon/fold/foldgutter.js"></script>
    <script src="resources/editor/libraries/codemirror/addon/fold/brace-fold.js"></script>
    <script src="resources/editor/libraries/codemirror/addon/fold/xml-fold.js"></script>
    <script src="resources/editor/libraries/codemirror/addon/fold/comment-fold.js"></script>
    <script src="resources/editor/libraries/codemirror/addon/search/search.js"></script>
    <script src="resources/editor/libraries/codemirror/addon/search/searchcursor.js"></script>
    <script src="resources/editor/libraries/codemirror/addon/dialog/dialog.js"></script>
    <script src="resources/editor/libraries/codemirror/addon/hint/show-hint.js"></script>
    <script src="resources/editor/libraries/codemirror/addon/hint/xml-hint.js"></script>
    <script src="resources/editor/libraries/codemirror/addon/hint/html-hint.js"></script>
    <script src="resources/editor/libraries/codemirror/addon/hint/css-hint.js"></script>
    <script src="resources/editor/libraries/codemirror/addon/hint/javascript-hint.js"></script>
    <script src="resources/editor/libraries/codemirror/addon/htmlPalette.js"></script>
    <script src="resources/editor/libraries/codemirror/addon/cssPalette.js"></script>
    <script src="resources/editor/libraries/codemirror/addon/jsPalette.js"></script>
    <script src="resources/editor/libraries/codemirror/addon/search/searchcursor.js"></script>
    <script src="resources/editor/libraries/codemirror/addon/search/jump-to-line.js"></script>
    <script src="resources/editor/libraries/codemirror/csslint.js"></script>
    <script src="resources/editor/libraries/codemirror/jshint.js"></script>
    <script src="resources/editor/libraries/codemirror/addon/lint/lint.js"></script>
    <script src="resources/editor/libraries/codemirror/addon/lint/html-lint.js"></script>
    <script src="resources/editor/libraries/codemirror/addon/lint/css-lint.js"></script>
    <script src="resources/editor/libraries/codemirror/addon/lint/javascript-lint.js"></script>
    <script src="resources/editor/libraries/codemirror/coffee-script.js"></script>
    <script src="resources/editor/libraries/codemirror/coffeelint.js"></script>
    <script src="resources/editor/libraries/codemirror/mode/coffeescript/coffeescript.js"></script>
    <script src="resources/editor/libraries/codemirror/addon/lint/coffeescript-lint.js"></script>
    <script src="resources/editor/libraries/codemirror/mode/sass/sass.js"></script>
    <script src="resources/editor/libraries/codemirror/mode/stylus/stylus.js"></script>
    <script src="resources/editor/libraries/codemirror/mode/jade/jade.js"></script>
    <script src="resources/editor/libraries/codemirror/markdown.js"></script>
    <script src="resources/editor/libraries/codemirror/continuelist.js"></script>
    <script src="resources/editor/libraries/codemirror/emmet.js"></script>
    <script src="resources/editor/libraries/codemirror/addon/tern/tern.js"></script>



    <script src="https://ternjs.net/node_modules/acorn/dist/acorn.js"></script>
    <script src="https://ternjs.net/node_modules/acorn/dist/acorn_loose.js"></script>
    <script src="https://ternjs.net/node_modules/acorn/dist/walk.js"></script>
    <script src="https://ternjs.net/doc/demo/polyfill.js"></script>
    <script src="https://ternjs.net/resources/editor/lib/signal.js"></script>
    <script src="https://ternjs.net/resources/editor/lib/tern.js"></script>
    <script src="https://ternjs.net/resources/editor/lib/def.js"></script>
    <script src="https://ternjs.net/resources/editor/lib/comment.js"></script>
    <script src="https://ternjs.net/resources/editor/lib/infer.js"></script>
    <script src="https://ternjs.net/plugin/doc_comment.js"></script>

    <script src="resources/editor/lib/htmlhint-custom.js"></script>
    <script src="resources/editor/lib/htmlTidy.js"></script>
    <script src="resources/editor/lib/cssTidy.js"></script>
    <script src="resources/editor/lib/jsTidy.js"></script>

    <!--<script src="https://www.dropbox.com/static/api/2/dropins.js" id="dropboxjs" data-app-key="iggmggls28vuvif"></script>-->

    <script>
      TogetherJSConfig_siteName="kodeWeave";
      TogetherJSConfig_toolName="Teamwork";
      TogetherJSConfig_suppressJoinConfirmation = true;
      TogetherJSConfig_includeHashInUrl = true;
      TogetherJSConfig_dontShowClicks = true;
    </script>
  </head>
  <body class="app">
    <!-- Opening and Closing for final index.html code -->
    <div class="hide">
      <div id="openHTML"></div>
      <div id="closeHTML"></div>
      <div id="closeFinal"></div>
      <textarea id="source"></textarea>
    </div>

    <!-- Navigation -->
    <header>
      <!-- Checkbox's for Menu Dropdowns -->
      <input id="tools" type="checkbox" name="menubar" class="invisible">
      <input id="open-libraries" type="checkbox" name="menubar" class="invisible">
      <input id="download" type="checkbox" name="menubar" class="invisible">
      <input id="open-demos" type="checkbox" name="menubar" class="invisible">
      <input type="checkbox" id="dataurl" class="invisible">
      
      <!-- Hidden Textbox (Detects Active Editor) -->
      <input type="text" class="fl hide" data-action="activeEditor" value="htmlEditor">
     
      <!-- Float Left -->
      <label for="tools" class="pointer">
        <i class="fa fa-wrench" title="Configurações"></i>
      </label>
      <div class="dialog toolbox">
        <!-- Website Title -->
        <div class="txtcenter metaboxes">
          <input class="heading txtcenter block" type="text" data-action="sitetitle" placeholder="site title" value="site title">
          <input class="heading block" type="number" min="0.1" step="0.1" value="0.1" data-value="version">
          <input class="heading block" type="number" min="8" step="1" value="14" data-editor="fontSize">
          <input class="heading block" type="text" data-action="sitedesc" placeholder="description" value="sample description">
          <input class="heading block" type="text" data-action="siteauthor" placeholder="author" value="kodeWeave">
        </div>
        
        <div class="txtcenter fill">
          <a class="pointer block fn">
            <label for="dataurl" class="pointer">
              DataURL Grabber
            </label>
          </a><br>
          <input type="checkbox" id="changeGrid" class="invisible">
          <a class="pointer block fn">
            <label for="changeGrid" class="pointer">Change Grid</label>
          </a>
        </div><br>

        <div>
          <a class="fl">
            <label for="loadfile" class="pointer">Load Local</label>
          </a>
          <a class="fr" data-action="open-dropbox">
            Load Dropbox
          </a>
        </div><br><br>

        <div>
          <a class="fl" data-action="minify">
            <i class="fa fa-code"></i> Minify
          </a>
          <a class="fr" data-action="tidy">
            <i class="fa fa-code"></i> Beautify
          </a>
        </div><br><br>

        <div>
          <a class="fl" data-action="lowercase">
            Lowercase
          </a>
          <a class="fr" data-action="uppercase">
            Uppercase
          </a><br>
          <a class="fl" data-action="search">
            Find
          </a>
          <a class="fn" data-action="toggle_comment">
            Comment
          </a>
          <a class="fr" data-action="replace">
            Replace
          </a><br>

          <a class="fl" data-action="replaceall">
            Replace All
          </a>
          <a class="fr" data-action="gotoline">
            Jump To Line
          </a>
        </div><br>

        <!-- Load Files Into Editor -->
        <div class="hide">
          <input id="loadfile" type="file">
        </div>
      </div>

      <label for="open-libraries" class="pointer">
        <i class="fa fa-book" title="Biblioteca"></i>
      </label>
      <div class="dialog libraries-dialog fl">
        <div class="hide">
          <div id="closeRefs"></div>
          <textarea class="hide" data-action="library-code" placeholder="full library code"></textarea>
          <textarea class="hide" data-action="libstextarea" placeholder="trigger click on library for online storage"></textarea>
          <textarea class="hide" data-action="ziplibs"></textarea>
        </div>

        <div class="addlibrary-tablets">
          <ul class="ldd-menu">
            <li>
              <div class="ldd-submenu">
                <ul style="border-left:none;">
                  <li class="ldd-heading">A</li>
                  <li>
                    <a>
                      <input data-action="check" class="check" type="checkbox" id="alertify" />
                      <label for="alertify">Alertify JS (1.6.1)</label>
                    </a>
                    <div class="hide">
                      <textarea class="libsources hide">    &lt;link rel="stylesheet" href="resources/editor/libraries/alertifyjs/css/alertify.min.css" /&gt;
    &lt;link rel="stylesheet" href="resources/editor/libraries/alertifyjs/css/themes/default.min.css" /&gt;
    &lt;script src="resources/editor/libraries/alertifyjs/alertify.min.js"&gt;&lt;/script&gt;</textarea>
                      <textarea class="alertifyjs alertifyjs1 hide"></textarea>
                      <textarea class="alertifyjs alertifyjs2 hide"></textarea>
                      <textarea class="alertifyjs alertifyjs3 hide"></textarea>
                      <textarea class="alertifyjs alertifyjs4 hide"></textarea>
                      <textarea class="alertifyjs alertifyjs5 hide"></textarea>
                      <textarea class="alertifyjs alertifyjs6 hide"></textarea>
                      <textarea class="alertifyjs alertifyjs7 hide"></textarea>
                      <textarea class="alertifyjs alertifyjs8 hide"></textarea>
                      <textarea class="alertifyjs alertifyjs9 hide"></textarea>
                      <textarea class="alertifyzip jszipcode hide"></textarea>
                    </div>
                  </li>
                  <li>
                    <a>
                      <input data-action="check" class="check" type="checkbox" id="angular" />
                      <label for="angular">Angular JS (1.0.1)</label>
                    </a>
                    <div class="hide">
                      <textarea class="libsources hide">    &lt;script src="resources/editor/libraries/angular/angular.min.js"&gt;&lt;/script&gt;</textarea>
                      <textarea class="angularjs angularjs hide"></textarea>
                      <textarea class="angularzip jszipcode hide"></textarea>
                    </div>
                  </li>
                  <li>&nbsp;</li>
                  <li class="ldd-heading">B</li>
                  <li>
                    <a>
                      <input data-action="check" class="check" type="checkbox" id="bootstrap" />
                      <label for="bootstrap">Bootstrap (3.3.5)</label>
                    </a>
                    <span class="new">&nbsp; Popular !</span>
                    <div class="hide">
                      <textarea class="libsources hide">    &lt;link rel="stylesheet" href="resources/editor/libraries/bootstrap/bootstrap.css" /&gt;
    &lt;script src="resources/editor/libraries/bootstrap/bootstrap.js"&gt;&lt;/script&gt;</textarea>
                      <textarea class="bootstrap bootstrap1 hide"></textarea>
                      <textarea class="bootstrap bootstrap2 hide"></textarea>
                      <textarea class="bootstrapzip jszipcode hide"></textarea>
                    </div>
                  </li>
                  <li>&nbsp;</li>
                  <li class="ldd-heading">C</li>
                  <li>
                    <a>
                      <input data-action="check" class="check" type="checkbox" id="chartjs" />
                      <label for="chartjs">Chart JS (0.2)</label>
                    </a>
                    <div class="hide">
                      <textarea class="libsources hide">    &lt;script src="resources/editor/libraries/chartjs/chart.min.js"&gt;&lt;/script&gt;</textarea>
                      <textarea class="chartjs hide"></textarea>
                      <textarea class="chartjszip jszipcode hide"></textarea>
                    </div>
                  </li>
                  <li>
                    <a>
                      <input data-action="check" class="check" type="checkbox" id="codemirror" />
                      <label for="codemirror">Codemirror (5.15.2)</label>
                    </a>
                    <div class="hide">
                      <textarea class="libsources hide">    &lt;link rel="stylesheet" href="resources/editor/libraries/codemirror/resources/editor/lib/codemirror.css"&gt;
    &lt;link rel="stylesheet" href="resources/editor/libraries/codemirror/addon/fold/foldgutter.css"&gt;
    &lt;link rel="stylesheet" href="resources/editor/libraries/codemirror/inlet.css"&gt;
    &lt;link rel="stylesheet" href="resources/editor/libraries/codemirror/addon/lint/lint.css"&gt;
    &lt;link rel="stylesheet" href="resources/editor/libraries/codemirror/addon/dialog/dialog.css"&gt;
    &lt;link rel="stylesheet" href="resources/editor/libraries/codemirror/addon/hint/show-hint.css"&gt;
    &lt;script src="resources/editor/libraries/codemirror/codemirror.js"&gt;&lt;/script&gt;
    &lt;script src="resources/editor/libraries/codemirror/mode/javascript/javascript.js"&gt;&lt;/script&gt;
    &lt;script src="resources/editor/libraries/codemirror/mode/xml/xml.js"&gt;&lt;/script&gt;
    &lt;script src="resources/editor/libraries/codemirror/mode/css/css.js"&gt;&lt;/script&gt;
    &lt;script src="resources/editor/libraries/codemirror/mode/htmlmixed/htmlmixed.js"&gt;&lt;/script&gt;
    &lt;script src="resources/editor/libraries/codemirror/addon/edit/closetag.js"&gt;&lt;/script&gt;
    &lt;script src="resources/editor/libraries/codemirror/addon/edit/matchbrackets.js"&gt;&lt;/script&gt;
    &lt;script src="resources/editor/libraries/codemirror/addon/selection/active-line.js"&gt;&lt;/script&gt;
    &lt;script src="resources/editor/libraries/codemirror/addon/fold/foldcode.js"&gt;&lt;/script&gt;
    &lt;script src="resources/editor/libraries/codemirror/addon/fold/foldgutter.js"&gt;&lt;/script&gt;
    &lt;script src="resources/editor/libraries/codemirror/addon/fold/brace-fold.js"&gt;&lt;/script&gt;
    &lt;script src="resources/editor/libraries/codemirror/addon/fold/xml-fold.js"&gt;&lt;/script&gt;
    &lt;script src="resources/editor/libraries/codemirror/addon/fold/comment-fold.js"&gt;&lt;/script&gt;
    &lt;script src="resources/editor/libraries/codemirror/addon/search/search.js"&gt;&lt;/script&gt;
    &lt;script src="resources/editor/libraries/codemirror/addon/search/searchcursor.js"&gt;&lt;/script&gt;
    &lt;script src="resources/editor/libraries/codemirror/addon/dialog/dialog.js"&gt;&lt;/script&gt;
    &lt;script src="resources/editor/libraries/codemirror/addon/hint/show-hint.js"&gt;&lt;/script&gt;
    &lt;script src="resources/editor/libraries/codemirror/addon/hint/xml-hint.js"&gt;&lt;/script&gt;
    &lt;script src="resources/editor/libraries/codemirror/addon/hint/html-hint.js"&gt;&lt;/script&gt;
    &lt;script src="resources/editor/libraries/codemirror/addon/hint/css-hint.js"&gt;&lt;/script&gt;
    &lt;script src="resources/editor/libraries/codemirror/addon/hint/javascript-hint.js"&gt;&lt;/script&gt;
    &lt;script src="resources/editor/libraries/codemirror/addon/search/match-highlighter.js"&gt;&lt;/script&gt;
    &lt;script src="resources/editor/libraries/codemirror/htmlhint.js"&gt;&lt;/script&gt;
    &lt;script src="resources/editor/libraries/codemirror/csslint.js"&gt;&lt;/script&gt;
    &lt;script src="resources/editor/libraries/codemirror/jshint.js"&gt;&lt;/script&gt;
    &lt;script src="resources/editor/libraries/codemirror/addon/lint/lint.js"&gt;&lt;/script&gt;
    &lt;script src="resources/editor/libraries/codemirror/addon/lint/html-lint.js"&gt;&lt;/script&gt;
    &lt;script src="resources/editor/libraries/codemirror/addon/lint/css-lint.js"&gt;&lt;/script&gt;
    &lt;script src="resources/editor/libraries/codemirror/addon/lint/javascript-lint.js"&gt;&lt;/script&gt;
    &lt;script src="resources/editor/libraries/codemirror/inlet.min.js"&gt;&lt;/script&gt;
    &lt;script src="resources/editor/libraries/codemirror/emmet.js"&gt;&lt;/script&gt;
    &lt;script src="resources/editor/libraries/codemirror/addon/search/jump-to-line.js"&gt;&lt;/script&gt;
    &lt;script src="resources/editor/libraries/codemirror/markdown.js"&gt;&lt;/script&gt;
    &lt;script src="resources/editor/libraries/codemirror/continuelist.js"&gt;&lt;/script&gt;
    &lt;script src="resources/editor/libraries/codemirror/mode/ruby/ruby.js"&gt;&lt;/script&gt;
    &lt;script src="resources/editor/libraries/codemirror/mode/haml/haml.js"&gt;&lt;/script&gt;
    &lt;script src="resources/editor/libraries/codemirror/mode/jade/jade.js"&gt;&lt;/script&gt;
    &lt;script src="resources/editor/libraries/codemirror/mode/sass/sass.js"&gt;&lt;/script&gt;
    &lt;script src="resources/editor/libraries/codemirror/mode/livescript/livescript.js"&gt;&lt;/script&gt;
    &lt;script src="resources/editor/libraries/codemirror/mode/coffeescript/coffeescript.js"&gt;&lt;/script&gt;
    &lt;script src="resources/editor/libraries/codemirror/coffee-script.js"&gt;&lt;/script&gt;
    &lt;script src="resources/editor/libraries/codemirror/coffeelint.js"&gt;&lt;/script&gt;
    &lt;script src="resources/editor/libraries/codemirror/addon/lint/coffeescript-lint.js"&gt;&lt;/script&gt;
    &lt;script src="resources/editor/libraries/codemirror/mode/stylus/stylus.js"&gt;&lt;/script&gt;</textarea>
                      <textarea class="codemirror1 hide"></textarea>
                      <textarea class="codemirror2 hide"></textarea>
                      <textarea class="codemirror3 hide"></textarea>
                      <textarea class="codemirror4 hide"></textarea>
                      <textarea class="codemirror5 hide"></textarea>
                      <textarea class="codemirror6 hide"></textarea>
                      <textarea class="codemirror7 hide"></textarea>
                      <textarea class="codemirror8 hide"></textarea>
                      <textarea class="codemirror9 hide"></textarea>
                      <textarea class="codemirror10 hide"></textarea>
                      <textarea class="codemirror11 hide"></textarea>
                      <textarea class="codemirror12 hide"></textarea>
                      <textarea class="codemirror13 hide"></textarea>
                      <textarea class="codemirror14 hide"></textarea>
                      <textarea class="codemirror15 hide"></textarea>
                      <textarea class="codemirror16 hide"></textarea>
                      <textarea class="codemirror17 hide"></textarea>
                      <textarea class="codemirror18 hide"></textarea>
                      <textarea class="codemirror19 hide"></textarea>
                      <textarea class="codemirror20 hide"></textarea>
                      <textarea class="codemirror21 hide"></textarea>
                      <textarea class="codemirror22 hide"></textarea>
                      <textarea class="codemirror23 hide"></textarea>
                      <textarea class="codemirror24 hide"></textarea>
                      <textarea class="codemirror25 hide"></textarea>
                      <textarea class="codemirror26 hide"></textarea>
                      <textarea class="codemirror27 hide"></textarea>
                      <textarea class="codemirror28 hide"></textarea>
                      <textarea class="codemirror29 hide"></textarea>
                      <textarea class="codemirror30 hide"></textarea>
                      <textarea class="codemirror31 hide"></textarea>
                      <textarea class="codemirror32 hide"></textarea>
                      <textarea class="codemirror33 hide"></textarea>
                      <textarea class="codemirror34 hide"></textarea>
                      <textarea class="codemirror35 hide"></textarea>
                      <textarea class="codemirror36 hide"></textarea>
                      <textarea class="codemirror37 hide"></textarea>
                      <textarea class="codemirror38 hide"></textarea>
                      <textarea class="codemirror39 hide"></textarea>
                      <textarea class="codemirror40 hide"></textarea>
                      <textarea class="codemirror41 hide"></textarea>
                      <textarea class="codemirror42 hide"></textarea>
                      <textarea class="codemirror43 hide"></textarea>
                      <textarea class="codemirror44 hide"></textarea>
                      <textarea class="codemirror45 hide"></textarea>
                      <textarea class="codemirror46 hide"></textarea>
                      <textarea class="codemirror47 hide"></textarea>
                      <textarea class="codemirror48 hide"></textarea>
                      <textarea class="codemirror49 hide"></textarea>
                      <textarea class="codemirror50 hide"></textarea>
                      <textarea class="codemirror51 hide"></textarea>
                      <textarea class="codemirror52 hide"></textarea>
                      <textarea class="codemirror53 hide"></textarea>
                      <textarea class="codemirrorzip jszipcode hide"></textarea>
                    </div>
                  </li>
                  <li>
                    <a>
                      <input data-action="check" class="check" type="checkbox" id="createjs" />
                      <label for="createjs">Create JS</label>
                    </a>
                    <div class="hide">
                      <textarea class="libsources hide">    &lt;script src="resources/editor/libraries/createjs/createjs.min.js"&gt;&lt;/script&gt;
    &lt;script src="resources/editor/libraries/createjs/easeljs.min.js"&gt;&lt;/script&gt;
    &lt;script src="resources/editor/libraries/createjs/tweenjs.min.js"&gt;&lt;/script&gt;
    &lt;script src="resources/editor/libraries/createjs/soundjs.min.js"&gt;&lt;/script&gt;
    &lt;script src="resources/editor/libraries/createjs/preloadjs.min.js"&gt;&lt;/script&gt;</textarea>
                      <textarea class="createjs createjs1 hide"></textarea>
                      <textarea class="createjs createjs2 hide"></textarea>
                      <textarea class="createjs createjs3 hide"></textarea>
                      <textarea class="createjs createjs4 hide"></textarea>
                      <textarea class="createjs createjs5 hide"></textarea>
                      <textarea class="createjszip jszipcode hide"></textarea>
                    </div>
                  </li>
                  <li>&nbsp;</li>
                  <li class="ldd-heading">D</li>
                  <li>
                    <a>
                      <input data-action="check" class="check" type="checkbox" id="d3" />
                      <label for="d3">D3</label>
                    </a>
                    <div class="hide">
                      <textarea class="libsources hide">    &lt;script src="resources/editor/libraries/d3/d3.js"&gt;&lt;/script&gt;"&gt;</textarea>
                      <textarea class="d3 hide"></textarea>
                      <textarea class="d3zip jszipcode hide"></textarea>
                    </div>
                  </li>
                  <li>
                    <a>
                      <input data-action="check" class="check" type="checkbox" id="dojo" />
                      <label for="dojo">Dojo</label>
                    </a>
                    <div class="hide">
                      <textarea class="libsources hide">    &lt;script src="resources/editor/libraries/dojo/dojo.js"&gt;&lt;/script&gt;</textarea>
                      <textarea class="dojo hide"></textarea>
                      <textarea class="dojozip jszipcode hide"></textarea>
                    </div>
                  </li>
                  <li>&nbsp;</li>
                  <li class="ldd-heading">F</li>
                  <li>
                    <a>
                      <input data-action="check" class="check" type="checkbox" id="fabricjs" />
                      <label for="fabricjs">Fabric JS (1.3.0)</label>
                    </a>
                    <div class="hide">
                      <textarea class="libsources hide">    &lt;script src="resources/editor/libraries/fabric/fabric.min.js"&gt;&lt;/script&gt;</textarea>
                      <textarea class="fabricjs hide"></textarea>
                      <textarea class="fabricjszip jszipcode hide"></textarea>
                    </div>
                  </li>
                  <li class="ldd-heading">J</li>
                  <li>
                    <a>
                      <input data-action="check" class="check" type="checkbox" id="jquery" />
                      <label for="jquery">jQuery (2.2.2)</label>
                    </a>
                    <span class="new">&nbsp; Popular !</span>
                    <div class="hide">
                      <textarea class="libsources hide">    &lt;script src="resources/editor/libraries/jquery/jquery.js"&gt;&lt;/script&gt;</textarea>
                      <textarea class="jquery hide"></textarea>
                      <textarea class="jqueryzip jszipcode hide"></textarea>
                    </div>
                  </li>
                  <li>
                    <a>
                      <input data-action="check" class="check" type="checkbox" id="jqueryui" />
                      <label for="jqueryui">jQuery UI (1.10.4)</label>
                    </a>
                    <div class="hide">
                      <textarea class="libsources hide">    &lt;link rel="stylesheet" href="resources/editor/libraries/jqueryui/jqueryui.css" /&gt;
    &lt;script src="resources/editor/libraries/jqueryui/jqueryui.min.js"&gt;&lt;/script&gt;
    &lt;script src="resources/editor/libraries/jqueryui/jquery.ui.touch-punch.min.js"&gt;&lt;/script&gt;</textarea>
                      <textarea class="jqueryui jqueryui1 hide"></textarea>
                      <textarea class="jqueryui jqueryui2 hide"></textarea>
                      <textarea class="jqueryui jqueryui3 hide"></textarea>
                      <textarea class="jqueryuizip jszipcode hide"></textarea>
                    </div>
                  </li>
                  <li>
                    <a>
                      <input data-action="check" class="check" type="checkbox" id="jquerytools" />
                      <label for="jquerytools">jQuery Tools (1.2.6)</label>
                    </a>
                    <div class="hide">
                      <textarea class="libsources hide">    &lt;script src="resources/editor/libraries/jquerytools/jquery.tools.min.js"&gt;&lt;/script&gt;</textarea>
                      <textarea class="jquerytools hide"></textarea>
                      <textarea class="jquerytoolszip jszipcode hide"></textarea>
                    </div>
                  </li>
                  <li>
                    <a>
                      <input data-action="check" class="check" type="checkbox" id="jqxsplitter" />
                      <label for="jqxsplitter">jqxSplitter (3.8.2)</label>
                    </a>
                    <div class="hide">
                      <textarea class="libsources hide">    &lt;link rel="stylesheet" href="resources/editor/libraries/jqwidgets/styles/jqx.base.css"&gt;
    &lt;link rel="stylesheet" href="resources/editor/libraries/jqwidgets/styles/jqx.android.css"&gt;
    &lt;link rel="stylesheet" href="resources/editor/libraries/jqwidgets/styles/jqx.arctic.css"&gt;
    &lt;link rel="stylesheet" href="resources/editor/libraries/jqwidgets/styles/jqx.black.css"&gt;
    &lt;link rel="stylesheet" href="resources/editor/libraries/jqwidgets/styles/jqx.blackberry.css"&gt;
    &lt;link rel="stylesheet" href="resources/editor/libraries/jqwidgets/styles/jqx.bootstrap.css"&gt;
    &lt;link rel="stylesheet" href="resources/editor/libraries/jqwidgets/styles/jqx.classic.css"&gt;
    &lt;link rel="stylesheet" href="resources/editor/libraries/jqwidgets/styles/jqx.darkblue.css"&gt;
    &lt;link rel="stylesheet" href="resources/editor/libraries/jqwidgets/styles/jqx.energyblue.css"&gt;
    &lt;link rel="stylesheet" href="resources/editor/libraries/jqwidgets/styles/jqx.fresh.css"&gt;
    &lt;link rel="stylesheet" href="resources/editor/libraries/jqwidgets/styles/jqx.highcontrast.css"&gt;
    &lt;link rel="stylesheet" href="resources/editor/libraries/jqwidgets/styles/jqx.metro.css"&gt;
    &lt;link rel="stylesheet" href="resources/editor/libraries/jqwidgets/styles/jqx.metrodark.css"&gt;
    &lt;link rel="stylesheet" href="resources/editor/libraries/jqwidgets/styles/jqx.mobile.css"&gt;
    &lt;link rel="stylesheet" href="resources/editor/libraries/jqwidgets/styles/jqx.office.css"&gt;
    &lt;link rel="stylesheet" href="resources/editor/libraries/jqwidgets/styles/jqx.orange.css"&gt;
    &lt;link rel="stylesheet" href="resources/editor/libraries/jqwidgets/styles/jqx.shinyblack.css"&gt;
    &lt;link rel="stylesheet" href="resources/editor/libraries/jqwidgets/styles/jqx.summer.css"&gt;
    &lt;link rel="stylesheet" href="resources/editor/libraries/jqwidgets/styles/jqx.ui-darkness.css"&gt;
    &lt;link rel="stylesheet" href="resources/editor/libraries/jqwidgets/styles/jqx.ui-le-frog.css"&gt;
    &lt;link rel="stylesheet" href="resources/editor/libraries/jqwidgets/styles/jqx.ui-lightness.css"&gt;
    &lt;link rel="stylesheet" href="resources/editor/libraries/jqwidgets/styles/jqx.ui-overcast.css"&gt;
    &lt;link rel="stylesheet" href="resources/editor/libraries/jqwidgets/styles/jqx.ui-redmond.css"&gt;
    &lt;link rel="stylesheet" href="resources/editor/libraries/jqwidgets/styles/jqx.ui-smoothness.css"&gt;
    &lt;link rel="stylesheet" href="resources/editor/libraries/jqwidgets/styles/jqx.ui-start.css"&gt;
    &lt;link rel="stylesheet" href="resources/editor/libraries/jqwidgets/styles/jqx.ui-sunny.css"&gt;
    &lt;link rel="stylesheet" href="resources/editor/libraries/jqwidgets/styles/jqx.web.css"&gt;
    &lt;link rel="stylesheet" href="resources/editor/libraries/jqwidgets/styles/jqx.windowsphone.css"&gt;
    &lt;script src="resources/editor/libraries/jqwidgets/jqxcore.js"&gt;&lt;/script&gt;
    &lt;script src="resources/editor/libraries/jqwidgets/jqxsplitter.js"&gt;&lt;/script&gt;</textarea>
                      <textarea class="jqwidgets1 hide"></textarea>
                      <textarea class="jqwidgets2 hide"></textarea>
                      <textarea class="jqwidgets3 hide"></textarea>
                      <textarea class="jqwidgets4 hide"></textarea>
                      <textarea class="jqwidgets5 hide"></textarea>
                      <textarea class="jqwidgets6 hide"></textarea>
                      <textarea class="jqwidgets7 hide"></textarea>
                      <textarea class="jqwidgets8 hide"></textarea>
                      <textarea class="jqwidgets9 hide"></textarea>
                      <textarea class="jqwidgets10 hide"></textarea>
                      <textarea class="jqwidgets11 hide"></textarea>
                      <textarea class="jqwidgets12 hide"></textarea>
                      <textarea class="jqwidgets13 hide"></textarea>
                      <textarea class="jqwidgets14 hide"></textarea>
                      <textarea class="jqwidgets15 hide"></textarea>
                      <textarea class="jqwidgets16 hide"></textarea>
                      <textarea class="jqwidgets17 hide"></textarea>
                      <textarea class="jqwidgets18 hide"></textarea>
                      <textarea class="jqwidgets19 hide"></textarea>
                      <textarea class="jqwidgets20 hide"></textarea>
                      <textarea class="jqwidgets21 hide"></textarea>
                      <textarea class="jqwidgets22 hide"></textarea>
                      <textarea class="jqwidgets23 hide"></textarea>
                      <textarea class="jqwidgets24 hide"></textarea>
                      <textarea class="jqwidgets25 hide"></textarea>
                      <textarea class="jqwidgets26 hide"></textarea>
                      <textarea class="jqwidgets27 hide"></textarea>
                      <textarea class="jqwidgets28 hide"></textarea>
                      <textarea class="jqwidgets29 hide"></textarea>
                      <textarea class="jqwidgets30 hide"></textarea>
                      <textarea class="jqxsplitterzip jszipcode hide"></textarea>
                    </div>
                  </li>
                  <li>
                    <a>
                      <input data-action="check" class="check" type="checkbox" id="jszip" />
                      <label for="jszip">JSZip (2.4.0)</label>
                    </a>
                    <span class="new">&nbsp; Popular !</span>
                    <div class="hide">
                      <textarea class="libsources hide">    &lt;script src="resources/editor/libraries/jszip/jszip.min.js"&gt;&lt;/script&gt;
    &lt;script src="resources/editor/libraries/jszip/jszip-utils.js"&gt;&lt;/script&gt;
    &lt;script src="resources/editor/libraries/jszip/FileSaver.js"&gt;&lt;/script&gt;
    &lt;script src="resources/editor/libraries/jszip/Blob.js"&gt;&lt;/script&gt;</textarea>
                      <textarea class="jszip jszip1 hide"></textarea>
                      <textarea class="jszip jszip2 hide"></textarea>
                      <textarea class="jszip jszip3 hide"></textarea>
                      <textarea class="jszip jszip4 hide"></textarea>
                      <textarea class="jszipzip jszipcode hide"></textarea>
                    </div>
                  </li>
                </ul>
                <ul>
                  <li>&nbsp;</li>
                  <li class="ldd-heading no-border">K</li>
                  <li>
                    <a>
                      <input data-action="check" class="check" type="checkbox" id="kinetic" />
                      <label for="kinetic">Kinetic JS (4.7.3)</label>
                    </a>
                    <div class="hide">
                      <textarea class="libsources hide">    &lt;script src="resources/editor/libraries/kinetic/kinetic.js"&gt;&lt;/script&gt;</textarea>
                      <textarea class="kinetic hide"></textarea>
                      <textarea class="kineticzip jszipcode hide"></textarea>
                    </div>
                  </li>
                  <li>
                    <a>
                      <input data-action="check" class="check" type="checkbox" id="knockout" />
                      <label for="knockout">Knockout JS (3.0.0)</label>
                    </a>
                    <div class="hide">
                      <textarea class="libsources hide">    &lt;script src="resources/editor/libraries/knockout/knockout.js"&gt;&lt;/script&gt;</textarea>
                      <textarea class="knockout hide"></textarea>
                      <textarea class="knockoutzip jszipcode hide"></textarea>
                    </div>
                  </li>
                  <li>&nbsp;</li>
                  <li class="ldd-heading">M</li>
                  <li>
                    <a>
                      <input data-action="check" class="check" type="checkbox" id="modernizer" />
                      <label for="modernizer">Modernizer (2.8.3)</label>
                    </a>
                    <div class="hide">
                      <textarea class="libsources hide">    &lt;script src="resources/editor/libraries/modernizer/modernizer.js"&gt;&lt;/script&gt;</textarea>
                      <textarea class="modernizer hide"></textarea>
                      <textarea class="modernizerzip jszipcode hide"></textarea>
                    </div>
                  </li>
                  <li>
                    <a>
                      <input data-action="check" class="check" type="checkbox" id="mootools" />
                      <label for="mootools">MooTools</label>
                    </a>
                    <div class="hide">
                      <textarea class="libsources hide">    &lt;script src="resources/editor/libraries/mootools/mootools-yui-compressed.js"&gt;&lt;/script&gt;</textarea>
                      <textarea class="mootools hide"></textarea>
                      <textarea class="mootoolszip jszipcode hide"></textarea>
                    </div>
                  </li>
                  <li>&nbsp;</li>
                  <li class="ldd-heading">N</li>
                  <li>
                    <a>
                      <input data-action="check" class="check" type="checkbox" id="normalize" />
                      <label for="normalize">Normalize (3.0.1)</label>
                    </a>
                    <span class="new">&nbsp; Popular !</span>
                    <div class="hide">
                      <textarea class="libsources hide">    &lt;link rel="stylesheet" href="resources/editor/libraries/normalize/normalize.css" /&gt;</textarea>
                      <textarea class="normalize hide"></textarea>
                      <textarea class="normalizezip jszipcode hide"></textarea>
                    </div>
                  </li>
                  <li>&nbsp;</li>
                  <li class="ldd-heading">P</li>
                  <li>
                    <a>
                      <input data-action="check" class="check" type="checkbox" id="paperjs" />
                      <label for="paperjs">Paper JS (0.9.9)</label>
                    </a>
                    <div class="hide">
                      <textarea class="libsources hide">    &lt;script src="resources/editor/libraries/paperjs/paperjs.js"&gt;&lt;/script&gt;</textarea>
                      <textarea class="paperjs hide"></textarea>
                      <textarea class="paperjszip jszipcode hide"></textarea>
                    </div>
                  </li>
                  <li>
                    <a>
                      <input data-action="check" class="check" type="checkbox" id="polyui" />
                      <label for="polyui">Poly UI Kit</label>
                    </a>
                    <div class="hide">
                      <textarea class="libsources hide">    &lt;link rel="stylesheet" href="resources/editor/libraries/polyui/polyui.css"&gt;</textarea>
                      <textarea class="polyui hide"></textarea>
                      <textarea class="polyuizip jszipcode hide"></textarea>
                    </div>
                  </li>
                  <li>
                    <a>
                      <input data-action="check" class="check" type="checkbox" id="prefixfree" />
                      <label for="prefixfree">Prefix-free (1.0.7)</label>
                    </a>
                    <div class="hide">
                      <textarea class="libsources hide">    &lt;script src="resources/editor/libraries/prefixfree/prefixfree.min.js"&gt;&lt;/script&gt;</textarea>
                      <textarea class="prefixfree hide"></textarea>
                      <textarea class="prefixfreezip jszipcode hide"></textarea>
                    </div>
                  </li>
                  <li>
                    <a>
                      <input data-action="check" class="check" type="checkbox" id="processingjs" />
                      <label for="processingjs">Processing JS (1.4.1)</label>
                    </a>
                    <div class="hide">
                      <textarea class="libsources hide">    &lt;script src="resources/editor/libraries/processingjs/processingjs.js"&gt;&lt;/script&gt;</textarea>
                      <textarea class="processingjs hide"></textarea>
                      <textarea class="processingjsszip jszipcode hide"></textarea>
                    </div>
                  </li>
                  <li>
                    <a>
                      <input data-action="check" class="check" type="checkbox" id="prototypejs" />
                      <label for="prototypejs">Prototype JS (1.7.1)</label>
                    </a>
                    <div class="hide">
                      <textarea class="libsources hide">    &lt;script src="resources/editor/libraries/prototypejs/prototypejs.js"&gt;&lt;/script&gt;</textarea>
                      <textarea class="prototypejs hide"></textarea>
                      <textarea class="prototypejszip jszipcode hide"></textarea>
                    </div>
                  </li>
                  <li>&nbsp;</li>
                  <li class="ldd-heading">Q</li>
                  <li>
                    <a>
                      <input data-action="check" class="check" type="checkbox" id="qooxdoo" />
                      <label for="qooxdoo">Qooxdoo (3.0.1)</label>
                    </a>
                    <div class="hide">
                      <textarea class="libsources hide">    &lt;script src="resources/editor/libraries/qooxdoo/qooxdoo.js"&gt;&lt;/script&gt;</textarea>
                      <textarea class="qooxdoo hide"></textarea>
                      <textarea class="qooxdooszip jszipcode hide"></textarea>
                    </div>
                  </li>
                </ul>
                <ul>
                  <li class="ldd-heading">R</li>
                  <li>
                    <a>
                      <input data-action="check" class="check" type="checkbox" id="raphael" />
                      <label for="raphael">Raphael JS (2.1.0)</label>
                    </a>
                    <div class="hide">
                      <textarea class="libsources hide">    &lt;script src="resources/editor/libraries/raphael/raphael.js"&gt;&lt;/script&gt;</textarea>
                      <textarea class="raphael hide"></textarea>
                      <textarea class="raphaelzip jszipcode hide"></textarea>
                    </div>
                  </li>
                  <li>
                    <a>
                      <input data-action="check" class="check" type="checkbox" id="requirejs" />
                      <label for="requirejs">Require JS (2.1.16)</label>
                    </a>
                    <div class="hide">
                      <textarea class="libsources hide">    &lt;script src="resources/editor/libraries/require/require.js"&gt;&lt;/script&gt;</textarea>
                      <textarea class="requirejs hide"></textarea>
                      <textarea class="requirejszip jszipcode hide"></textarea>
                    </div>
                  </li>
                  <li>&nbsp;</li>
                  <li class="ldd-heading">S</li>
                  <li>
                    <a>
                      <input data-action="check" class="check" type="checkbox" id="showdown" />
                      <label for="showdown">Showdown (0.4.0)</label>
                    </a>
                    <div class="hide">
                      <textarea class="libsources hide">    &lt;script src="resources/editor/libraries/showdown/Showdown.min.js"&gt;&lt;/script&gt;</textarea>
                      <textarea class="showdown hide"></textarea>
                      <textarea class="showdownzip jszipcode hide"></textarea>
                    </div>
                  </li>
                  <li>
                    <a>
                      <input data-action="check" class="check" type="checkbox" id="scriptaculous" />
                      <label for="scriptaculous">Script.aculo.us (1.9.0)</label>
                    </a>
                    <div class="hide">
                      <textarea class="libsources hide">    &lt;script src="resources/editor/libraries/scriptaculous/scriptaculous.js"&gt;&lt;/script&gt;</textarea>
                      <textarea class="scriptaculous hide"></textarea>
                      <textarea class="scriptaculouszip jszipcode hide"></textarea>
                    </div>
                  </li>
                  <li>
                    <a>
                      <input data-action="check" class="check" type="checkbox" id="snapsvg" />
                      <label for="snapsvg">Snap SVG (0.4.1)</label>
                    </a>
                    <div class="hide">
                      <textarea class="libsources hide">    &lt;script src="resources/editor/libraries/snap-svg/snap-svg.js"&gt;&lt;/script&gt;</textarea>
                      <textarea class="snapsvg hide"></textarea>
                      <textarea class="snapsvgzip jszipcode hide"></textarea>
                    </div>
                  </li>
                  <li>
                    <a>
                      <input data-action="check" class="check" type="checkbox" id="svgjs" />
                      <label for="svgjs">SVG JS (2.0.5)</label>
                    </a>
                    <div class="hide">
                      <textarea class="libsources hide">    &lt;script src="resources/editor/libraries/svg-js/svg-js.js"&gt;&lt;/script&gt;</textarea>
                      <textarea class="svgjs hide"></textarea>
                      <textarea class="svgjszip jszipcode hide"></textarea>
                    </div>
                  </li>
                  <li>&nbsp;</li>
                  <li class="ldd-heading">T</li>
                  <li>
                    <a>
                      <input data-action="check" class="check" type="checkbox" id="threejs" />
                      <label for="threejs">Three JS</label>
                    </a>
                    <div class="hide">
                      <textarea class="libsources hide">    &lt;script src="resources/editor/libraries/threejs/three.min.js"&gt;&lt;/script&gt;</textarea>
                      <textarea class="threejs hide"></textarea>
                      <textarea class="threejszip jszipcode hide"></textarea>
                    </div>
                  </li>
                  <li>&nbsp;</li>
                  <li class="ldd-heading">U</li>
                  <li>
                    <a>
                      <input data-action="check" class="check" type="checkbox" id="underscorejs" />
                      <label for="underscorejs">Underscore JS (1.8.3)</label>
                    </a>
                    <div class="hide">
                      <textarea class="libsources hide">    &lt;script src="resources/editor/libraries/underscore/underscore.js"&gt;&lt;/script&gt;</textarea>
                      <textarea class="underscorejs hide"></textarea>
                      <textarea class="underscorejszip jszipcode hide"></textarea>
                    </div>
                  </li>
                  <li>&nbsp;</li>
                  <li class="ldd-heading">W</li>
                  <li>
                    <a>
                      <input data-action="check" class="check" type="checkbox" id="webfontloader" />
                      <label for="webfontloader">Web Font Loader (1.4.10)</label>
                    </a>
                    <div class="hide">
                      <textarea class="libsources hide">    &lt;script src="resources/editor/libraries/webfont/webfont.js"&gt;&lt;/script&gt;</textarea>
                      <textarea class="webfontloader hide"></textarea>
                      <textarea class="webfontloaderzip jszipcode hide"></textarea>
                    </div>
                  </li>
                  <li>&nbsp;</li>
                  <li class="ldd-heading">Y</li>
                  <li>
                    <a>
                      <input data-action="check" class="check" type="checkbox" id="yui" />
                      <label for="yui">YUI (3.13.0)</label>
                    </a>
                    <div class="hide">
                      <textarea class="libsources hide">    &lt;script src="resources/editor/libraries/yui/yui.js"&gt;&lt;/script&gt;</textarea>
                      <textarea class="yui hide"></textarea>
                      <textarea class="yuizip jszipcode hide"></textarea>
                    </div>
                  </li>
                  <li>&nbsp;</li>
                  <li class="ldd-heading">Z</li>
                  <li>
                    <a>
                      <input data-action="check" class="check" type="checkbox" id="zepto" />
                      <label for="zepto">Zepto (1.1.6)</label>
                    </a>
                    <div class="hide">
                      <textarea class="libsources hide">    &lt;script src="resources/editor/libraries/zepto/zepto.js"&gt;&lt;/script&gt;</textarea>
                      <textarea class="zepto hide"></textarea>
                      <textarea class="zeptozip jszipcode hide"></textarea>
                    </div>
                  </li>
                </ul>
              </div>
            </li>
          </ul>
        </div>
      </div>
      <label id="collaborate" class="skip">
        <i class="fa fa-group" title="Colaborar"></i>
      </label>
      <label for="download" class="pointer">
        <i class="fa fa-save" title="Salvar"></i>
      </label>
     <!-- novo botão
       
      <label for="compartilhar" class="pointer">
        <i class="fa fa-compartilhar" title="Compartilhar"></i>
      </label>
    -->
      <!-- If image has loaded adjust dialog size -->
      <input type="radio" id="imagehasloaded" class="invisible">
      <div class="dialog download-dialog fl">
        <div id="holder" class="txtcenter">
          Drag and drop image 
          <a href="javascript:void(0)" class="fn nomar call">
            <label for="load" class="pointer">here</label>
          </a>...
        </div>

        <div class="txtcenter hide">
          <input type="file" id="load" accept="image/jpeg, image/png" />
          <br><br>
        </div>

        <div class="fill watch hide">
          <canvas class="call pointer" data-action="n16" width="16" height="16"></canvas>
          <canvas class="call pointer" data-action="n32" width="32" height="32"></canvas>
          <canvas class="call pointer" data-action="n64" width="64" height="64"></canvas>
          <canvas class="call pointer" data-action="holder" width="128" height="128"></canvas>
          <br><br>
        </div>

        <ul>
          <!--<li>
            <a href="https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=BSYGA2RB5ZJCC" target="_blank">
              Donate to the kodeWeave project
            </a>
          </li>
          <li>
            <a href="http://build.phonegap.com/" target="_blank">
              Export for mobile devices
            </a>
          </li>
          <li class="watch hide">
            <a data-action="download-as-win-app">
              Export Windows 64bit App (NW.js)
            </a>
          </li>
          <li class="watch hide">
            <a data-action="download-as-win32-app">
              Export Windows 32bit App (NW.js)
            </a>
          </li>
          <li class="watch hide">
            <a data-action="download-as-mac-app">
              Export as Mac App (NW.js)
            </a>
          </li>
          <li class="watch hide">
            <a data-action="download-as-lin-app">
              Export as Linux 64bit App (NW.js)
            </a>
          </li>
          <li class="watch hide">
            <a data-action="download-as-lin32-app">
              Export as Linux 32bit App (NW.js)
            </a>
          </li>
          <li class="watch hide">
            <a data-action="download-as-chrome-app">
              Export as Chrome App
            </a>
          </li>
          <li class="watch hide">
            <a data-action="download-as-chrome-ext">
              Export as Chrome Extension
            </a>
          </li>
          -->
          <li>
            <a data-action="download-zip" title="Ctrl+S">
              Download as .zip
            </a>
          </li>
          <li>
            <a data-action="save-gist">
              Save weave
            </a>
          </li>
        </ul>
      </div>

      <!-- Code Section -->
      <div id="charmenu">
        <a id="restartapp"><span class="fa fa-refresh" title="Atualizar"></span></a>
        <a id="undo"><span class="fa fa-undo" title="Desfazer"></span></a>
        <a id="redo"><span class="fa fa-repeat" title="Refazer"></span></a>
        <!--<a id="tabindent">+ tab</a>
        <a id="taboutdent">- tab</a>
        -->
        <span class="md-chars hide">
          <a id="lorem">lorem</a>
          <a id="bold"><span class="fa fa-bold"></span></a>
          <a id="italic"><span class="fa fa-italic"></span></a>
          <a id="strike"><span class="fa fa-strikethrough"></span></a>
          <a id="anchor"><span class="fa fa-globe"></span></a>
          <a id="quote"><span class="fa fa-quote-left"></span></a>
          <a id="code"><span class="fa fa-code"></span></a>
          <a id="img"><span class="fa fa-picture-o"></span></a>
          <a id="list-ol"><span class="fa fa-list-ol"></span></a>
          <a id="list-ul"><span class="fa fa-list-ul"></span></a>
          <a id="h1">h1</a>
          <a id="h2">h2</a>
          <a id="h3">h3</a>
          <a id="h4">h4</a>
          <a id="h5">h5</a>
          <a id="h6">h6</a>
          <a id="hr"><span class="fa fa-ellipsis-h"></span></a>
        </span>
      <!-- <span class="main-editor-chars">
          <a id="zeninit">zen</a>
          <a id="charsym1">&lt;&gt;</a>
          <a id="charsym2">{}</a>
          <a id="charsym3">""</a>
          <a id="charsym4">''</a>
          <a data-add="sym">+</a>
          <a data-add="sym">-</a>
          <a data-add="sym">.</a>
          <a id="charsym5">()</a>
          <a data-add="sym">:</a>
          <a data-add="sym">;</a>
          <a data-add="sym">_</a>
          <a id="charsym6">[]</a>
          <a data-add="sym">|</a>
          <a data-add="sym">/</a>
          <a data-add="sym">\</a>
          <a data-add="sym">?</a>
          <a data-add="sym">*</a>
          <a data-add="sym">\n</a>
          <a data-add="sym">%</a>
          <a data-add="sym">@</a>
          <a data-add="sym">=</a>
          <a data-add="sym">#</a>
          <a data-add="sym">,</a>
          <a data-add="sym">!</a>
          <a data-add="sym">^</a>
        </span>
          <a data-add="sym">&amp;</a>
          <a data-add="sym">$</a>
          <a data-add="sym">¢</a>
          <a data-add="sym">£</a>
          <a data-add="sym">¥</a>
          <a data-add="sym">€</a>
          <a data-add="sym">©</a>
          <a data-add="sym">®</a>
          <a data-add="sym">™</a>
        <span class="main-editor-chars">
          <a id="function">function() {}</a>
        </span>
      -->
      </div>

      <!-- Float Right -->
      <label for="open-demos" class="hide-demos fr pointer">
        <img title="profile image" class="img-responsive icon-user-projeto" src="../tcc/eu.jpg">
         <a href="#">
                <security:authentication 
                    property="principal" 
                        var="usuario" />
                Usu�rio: ${usuarioLogado.login}
        </a>
        
      </label>
      <label for="open-demos" class="hide-demos fr pointer">
      		<a href="logout">Sair do sistema</a>
      </label>
     
      <div class="dialog demos-dialog fr">
        <div class="adddemos-tablets">
          <ul class="ldd-menu">
            <li>
              <div class="ldd-submenu">
                <ul style="border-left:none;">
                  <li class="ldd-heading">A</li>
                  <li><a data-action="alphabetizer">alphabetizer</a></li>
                  <li><a data-action="angular">angular JS demo</a></li>
                  <li><a data-action="applicator">applicator</a></li>
                  <li>&nbsp;</li>
                  <li class="ldd-heading">C</li>
                  <li><a data-action="charactermap">character map</a></li>
                  <li><a data-action="codeeditor">code editor</a></li>
                  <li><a data-action="convertforvalues">convert for values</a></li>
                  <li>&nbsp;</li>
                  <li class="ldd-heading">D</li>
                  <li><a data-action="dateclock">date and time</a></li>
                  <li><a data-action="detectorientation">detect orientation</a></li>
                  <li><a data-action="osdisplay">display operating system</a></li>
                  <li>&nbsp;</li>
                  <li class="ldd-heading">K</li>
                  <li><a data-action="keylogger">keylogger</a></li>
                  <li>&nbsp;</li>
                </ul>
                <ul>
                  <li class="ldd-heading">M</li>
                  <li><a data-action="markdowneditor">markdown editor</a></li>
                  <li>&nbsp;</li>
                  <li class="ldd-heading">N</li>
                  <li><a data-action="newdocument">new document</a></li>
                  <li>&nbsp;</li>
                  <li class="ldd-heading">P</li>
                  <li><a data-action="packagezipfiles">package zip files</a></li>
                  <li><a data-action="passwordgen">password generator</a></li>
                  <li><a data-action="pdfembed">pdf embed</a></li>
                  <li><a data-action="pictureviewer">picture viewer</a></li>
                  <li><a data-action="polyui">poly ui kit</a></li>
                  <li>&nbsp;</li>
                  <li class="ldd-heading">S</li>
                  <li><a data-action="simpleslideshow">simple slideshow</a></li>
                  <li><a data-action="splitter">splitter</a></li>
                  <li>&nbsp;</li>
                </ul>
              </div>
            </li>
          </ul>
        </div>
      </div>

      <!-- DataURL Frame -->
      <label for="dataurl" class="dataurlbg"></label>
      <div class="dataurl">
        <div class="invisible">
          <input type="file" id="inputdataurl">
        </div>

        <div class="grid">
          <div class="grid__col--12">
            <a id="dataurlholder" class="block fn txtcenter pointer" style="margin-top: 1em;">
              <label for="inputdataurl" class="call pointer">
                Click here or Drag and Drop an image here...
              </label>
            </a>
          </div>
        </div>

        <div class="grid">
          <div class="grid__col--12 checkdataurl txtcenter hide">
            <p align="center" style="margin-right: 31px;">
              <input type="text" class="form__input txtbox" data-url="dataurlimgurl">
            </p>
            <img class="nomarb" data-action="dataurloutput" style="width: 70%;">
            <a class="btn--default block fn" data-action="dataURLtoEditor">Insert To Editor</a>
          </div>
        </div>
      </div>
    </header>

    <!-- Editor/Preview -->
    <input type="checkbox" id="selectEditor" class="invisible">
    <form method="post" id="editors">
      <div id="splitContainer">
        <div>
          <div id="leftSplitter">
            <div>
              <div class="editor-container show-editor html-editor">
                <div id="htmlEditor"></div>
                <div id="mdEditor" class="invisible"></div>
              </div>
              <a class="fullscreen-html-toggle unfill">
                <span class="fa fa-expand" id="fullscreen-html" title="Expandir"></span>
              </a>
              <a class="savefile savehtml">
                <span class="fa fa-download" title="Download"></span>
              </a>
              <a class="savefile savemd invisible">
                <span class="fa fa-download"></span>
              </a>
              <a class="settings htmlSetting">
                <span class="fa fa-gear" title="Pre-Processador"></span>
              </a>
              <label for="selectEditor" class="selectEditor pointer">
                <img class="pickEditor pointer" src="resources/editor/assets/md-small.svg">
              </label>
            </div>
            <div>
              <div class="editor-container css-editor">
                <div id="cssEditor"></div>
              </div>
              <a class="fullscreen-css-toggle unfill">
                <span class="fa fa-expand" id="fullscreen-css" title="Expandir"></span>
              </a>
              <a class="savefile savecss">
                <span class="fa fa-download" title="Download"></span>
              </a>
               <a class="settings cssSetting">
                <span class="fa fa-gear" title="Pre-Processador"></span>
              </a> 
            </div>
          </div>
        </div>
        <div>
          <div id="rightSplitter">
            <div>
              <div class="editor-container js-editor">
                <div id="jsEditor"></div>
              </div>
              <a class="fullscreen-js-toggle unfill">
                <span class="fa fa-expand" id="fullscreen-js" title="Expandir"></span>
              </a>
              <a class="savefile savejs">
                <span class="fa fa-download" title="Download"></span>
              </a>
              <a class="settings jsSetting">
                <span class="fa fa-gear" title="Pre-Processador"></span>
              </a>
            </div>
            <div>
              <div class="editor-container preview-editor"></div>
              <a class="preview-mode-toggle unfill">
                <span class="fa fa-expand" id="preview-mode" title="Expandir"></span>
              </a>
            </div>
          </div>
        </div>
      </div>
    </form>

    <!-- Chrome Application Dialog -->
    <div class="dialog-bg column hide" data-action="chromeappdialog">
      <div>
        <nav>
          <div class="grid chromeappwindow">
            <form class="form">
              <textarea class="form__input" data-action="app-descr" placeholder="Description" rows="7"></textarea>

              <h4>
                Offline:
              </h4>

              <p class="onoffswitch">
                <input type="checkbox" name="onoffswitch" class="offline-mode" id="myonoffswitch" checked>
                <label class="onoffswitch-label" for="myonoffswitch">
                  <span class="onoffswitch-inner"></span>
                  <span class="onoffswitch-switch"></span>
                </label>
              </p>

              <h4>
                Frameless:
              </h4>

              <p class="theframeswitch">
                <input type="checkbox" name="frameswitch" class="frame-mode" id="myframeswitch">
                <label class="frameswitch-label" for="myframeswitch">
                  <span class="frameswitch-inner"></span>
                  <span class="frameswitch-switch"></span>
                </label>
              </p>
            </form>

            <div class="txtcenter">
              <a class="btn--default" data-action="app-confirm">Confirm</a>
              <a class="btn--warning" data-action="app-cancel">Cancel</a>
            </div>
          </div>
        </nav>
      </div>
    </div>
    <!-- Chrome Extension Dialog -->
    <div class="dialog-bg column hide" data-action="chromeextdialog">
      <div>
        <nav>
          <div class="grid chromeappwindow">
            <textarea class="form__input" data-action="ext-descr" placeholder="Description" rows="7"></textarea>

            <div class="txtcenter">
              <a class="btn--default" data-action="ext-confirm">Confirm</a>
              <a class="btn--warning" data-action="ext-cancel">Cancel</a>
            </div>
          </div>
        </nav>
      </div>
    </div>
    
    <!-- Preprocessors Dialog -->
    <div class="dialog-bg column preprocessordialog hide" data-action="preprocessors">
      <div>
        <nav>
          <div class="grid preprocessors">
            <div class="txtcenter">
              <h1>Choose your preprocessor!</h1>

              <h4 class="preprocessor html-preprocessor">HTML Preprocessor</h4>
              <div class="preprocessor html-preprocessor">
                <select id="html-preprocessor">
                  <option value="none">None</option>
                  <option value="jade">Jade</option>
                </select>
              </div>
              <p>
                <a class="btn--default preprocessor html-preprocessor confirm-preprocessor html-preprocessor-convert" data-action="html-preprocessor">Convert</a>
                <a class="btn--info preprocessor html-preprocessor confirm-preprocessor" data-action="html-preprocessor">Close</a>
              </p>

              <h4 class="preprocessor css-preprocessor">CSS Preprocessor</h4>
              <div class="preprocessor css-preprocessor">
                <select id="css-preprocessor">
                  <option value="none">None</option>
<!--
                  <option value="less">LESS</option>
                  <option value="scss">SCSS</option>
                  <option value="sass">Sass</option>
-->
                  <option value="stylus">Stylus</option>
                </select>
              </div>
              <p>
                <a class="btn--default preprocessor css-preprocessor confirm-preprocessor css-preprocessor-convert" data-action="css-preprocessor">Convert</a>
                <a class="btn--info preprocessor css-preprocessor confirm-preprocessor" data-action="css-preprocessor">Close</a>
              </p> 

              <h4 class="preprocessor js-preprocessor">JavaScript Preprocessor</h4>
              <div class="preprocessor js-preprocessor">
                <select id="js-preprocessor">
                  <option value="none">None</option>
                  <option value="coffeescript">CoffeeScript</option>
                </select>

                <div class="jsvalidator" style="padding: 0 0 5em 0;">
                  <h4 class="headtxt iblock fl">
                    Validator
                  </h4>
                  <h4 class="iblock fr">&nbsp;
                    <span class="jsvalidationswitch iblock tr">
                      <input type="checkbox" name="jsvalidationswitch" class="jsvalidationswitch-checkbox" id="myjsvalidationswitch" checked>
                      <label class="jsvalidationswitch-label" for="myjsvalidationswitch">
                        <span class="jsvalidationswitch-inner"></span>
                        <span class="jsvalidationswitch-switch"></span>
                      </label>
                    </span>
                  </h4>
                </div>
              </div>
              <p style="margin: 0;">
                <a class="btn--default preprocessor js-preprocessor confirm-preprocessor js-preprocessor-convert" data-action="js-preprocessor">Convert</a>
                <a class="btn--info preprocessor js-preprocessor confirm-preprocessor" data-action="js-preprocessor">Close</a>
              </p>
            </div>
          </div>
        </nav>
      </div>
    </div>

    <!-- Share to social networks dialog -->
    <div class="dialog-bg column hide" data-action="socialdialog">
      <div>
        <nav>
          <div class="grid socialdialog">
            <div class="grid__col-12 txtcenter socialbtns">
              <h1>Share your weave with your friends!</h1>
              <h4 class="nomar" style="color: #82CA28;">Link:</h4>
              <input class="txtbox block" data-output="projectURL" />
            
              <h4 class="nomar" style="color: #82CA28;">Embed:</h4>
              <input class="txtbox block" data-output="embedProject" />
              
              <p>
                <input type="checkbox" id="mdurl" checked="true" data-target="editorURL">
                <label for="mdurl">MD</label>
                <input type="checkbox" id="htmlurl" checked="true" data-target="editorURL">
                <label for="htmlurl">HTML</label>
                <input type="checkbox" id="cssurl" checked="true" data-target="editorURL">
                <label for="cssurl">CSS</label>
                <input type="checkbox" id="jsurl" checked="true" data-target="editorURL">
                <label for="jsurl">JS</label>
                <input type="checkbox" id="resulturl" checked="true" data-target="editorURL">
                <label for="resulturl">Result</label><br>
                
                <input type="checkbox" id="transparentembed" data-target="editorURL">
                <label for="transparentembed">Transparent</label>
                <input type="checkbox" id="darkembed" data-target="editorURL">
                <label for="darkembed">Dark</label>
                <input type="checkbox" id="editembed" data-target="editorURL">
                <label for="editembed">Edit</label>
              </p>
              
              <p id="clearSharePreview"></p>

              <a class="share-facebook" target="_blank">
                <i class="fa fa-facebook-square"></i>
              </a>
              <a class="share-twitter" target="_blank">
                <i class="fa fa-twitter-square"></i>
              </a>
              <a class="share-gplus" target="_blank">
                <i class="fa fa-google-plus-square"></i>
              </a>
              <a class="share-instagram" target="_blank">
                <i class="fa fa-instagram"></i>
              </a>
              <a target="_blank" href="https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&amp;hosted_button_id=BSYGA2RB5ZJCC">
                <i class="fa fa-cc-paypal"></i>
              </a>
              <p>
                <p>
                  <a class="btn--warning" data-action="social-cancel">Cancel</a>
                </p>
              </p>
            </div>
          </div>
        </nav>
      </div>
    </div>
    
    <!-- Walkthrough Navigation Dialog 
    <input type="radio" id="close-walkthrough" class="hide" name="walkthrough-group">

    <label for="close-walkthrough" class="walkthrough-dialogbg pointer"></label>
    <div class="walkthrough-dialog">
      <input type="radio" id="tab1" class="hide" name="walkthrough-group" checked>
      <!-- <input type="radio" id="tab2" class="hide" name="walkthrough-group"> 
      <input type="radio" id="tab3" class="hide" name="walkthrough-group">

      <div class="walkthrough-menu">
        <!-- <label for="tab1">Using kodeWeave</label> 
        <label for="tab1">How To Use kodeWeave</label>
        <!-- <label for="tab2">Exportation</label> 
        <label for="tab3">Feed</label>
        <a href="https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=BSYGA2RB5ZJCC" target="_blank">
          <label>Donate</label>
        </a>

        <label for="close-walkthrough" class="walkthrough-close">
          <span class="fa fa-times-circle-o"></span>
        </label>
      </div>

      <!-- Tab Content 
      <div id="walkthrough" class="walkthrough-content">
        <iframe width="100%" height="360" src="https://www.youtube.com/embed/cZLlx2KfPD8" frameborder="0" allowfullscreen></iframe>
      </div>
      <!--
      <div id="exportation" class="walkthrough-content">
        <iframe width="100%" height="360" src="https://www.youtube.com/embed/cZLlx2KfPD8" frameborder="0" allowfullscreen></iframe>
      </div>
      
      <div id="feed" class="walkthrough-content">
        <a class="twitter-timeline" href="https://twitter.com/kodeweave_app">Tweets by kodeweave_app</a>
        <script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>
        <style>.walkthrough-content iframe[id*="twitter-widget"] {float: none; width: 100%!important;}</style>
      </div>
    </div>
    -->
   
    <script src="resources/editor/libraries/jqwidgets/jqxcore.js"></script>
    <script src="resources/editor/libraries/jqwidgets/jqxsplitter.js"></script>
    <script src="resources/editor/lib/shortcut.js"></script>
    <script src="resources/editor/lib/inlet.min.js"></script>
    <script src="resources/editor/kodeweave.min.js"></script>
    
    <script>
      (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
      (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
      m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
      })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

      ga('create', 'UA-75970821-1', 'auto');
      ga('send', 'pageview');
    </script>
  </body>
</html>
