<?xml version="1.0"?>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
<meta content="Loggerhead/1.18.2 Python/2.7.3 Bazaar/2.6.0 Paste/1.7.5.1 PasteDeploy/1.3.4 SimpleTAL/4.3 Pygments/1.6 simplejson/3.1.3" name="generator" />
<title>~python-mode-devs/python-mode/python-mode : contents of extensions/highlight-indentation.el at revision 1612</title>
<link href="/static/css/global.css" rel="stylesheet" />
<link href="/static/images/favicon.png" rel="shortcut icon" />

<script type="text/javascript">
var global_path = '/~python-mode-devs/python-mode/python-mode/';
var collapsed_icon_path = '/static/images/treeCollapsed.png';
var expanded_icon_path = '/static/images/treeExpanded.png';
</script>
<script src="/static/javascript/yui/build/yui/yui-min.js" type="text/javascript"></script>
<script src="/static/javascript/yui/build/oop/oop-min.js" type="text/javascript"></script>
<script src="/static/javascript/yui/build/event/event-min.js" type="text/javascript"></script>
<script src="/static/javascript/yui/build/attribute/attribute-min.js" type="text/javascript"></script>
<script src="/static/javascript/yui/build/base/base-min.js" type="text/javascript"></script>
<script src="/static/javascript/yui/build/dom/dom-min.js" type="text/javascript"></script>
<script src="/static/javascript/yui/build/node/node-min.js" type="text/javascript"></script>
<script src="/static/javascript/yui/build/anim/anim-min.js" type="text/javascript"></script>
<script src="/static/javascript/yui/build/io/io-base-min.js" type="text/javascript"></script>
<script src="/static/javascript/custom.js" type="text/javascript"></script>

<link href="/static/css/view.css" media="all" type="text/css" rel="stylesheet" />
<link href="/static/css/highlight.css" media="all" type="text/css" rel="stylesheet" />

</head>
<body class="public">



<div class="black-link">
<a href="https://code.launchpad.net/~python-mode-devs/python-mode/python-mode">
← Back to branch summary
</a>
</div>


<h1 class="branch-name">
~python-mode-devs/python-mode/python-mode
</h1>

<ul id="menuTabs">


<li><a href="/~python-mode-devs/python-mode/python-mode/changes" title="Changes">Changes</a></li>
<li><a href="/~python-mode-devs/python-mode/python-mode/files" title="Files" id="on">Files</a></li>

</ul>

<div id="loggerheadCont">
<div id="search_terms"></div>

<div id="breadcrumbs">

<a href="https://code.launchpad.net/~python-mode-devs/python-mode/python-mode">~python-mode-devs/python-mode/python-mode</a>


<span>: <span class="breadcrumb">
/<a href="/~python-mode-devs/python-mode/python-mode/files/1612/extensions">extensions</a>/highlight-indentation.el
</span> (revision 1612)</span>
</div>

<div>

<ul id="submenuTabs">
<li id="first">
<a href="/~python-mode-devs/python-mode/python-mode/files/1612">browse files</a>
</li>
<li>
<a href="/~python-mode-devs/python-mode/python-mode/annotate/head:/extensions/highlight-indentation.el">view with revision information</a>
</li>

<li>
<a href="/~python-mode-devs/python-mode/python-mode/revision/1612">view revision</a>
</li>
<li>
<a href="/~python-mode-devs/python-mode/python-mode/changes?filter_file_id=highlightindentation-20121006191412-18sgr88g18snkkif-1">view changes to this file</a>
</li>
<li id="last">
<a href="/~python-mode-devs/python-mode/python-mode/download/head:/highlightindentation-20121006191412-18sgr88g18snkkif-1/highlight-indentation.el">download file</a>
</li>
</ul>
<div class="view">
<table id="logentries">

<tr>
<td class="viewLine">
<pre><a id="L1" href="#L1">1</a>
<a id="L2" href="#L2">2</a>
<a id="L3" href="#L3">3</a>
<a id="L4" href="#L4">4</a>
<a id="L5" href="#L5">5</a>
<a id="L6" href="#L6">6</a>
<a id="L7" href="#L7">7</a>
<a id="L8" href="#L8">8</a>
<a id="L9" href="#L9">9</a>
<a id="L10" href="#L10">10</a>
<a id="L11" href="#L11">11</a>
<a id="L12" href="#L12">12</a>
<a id="L13" href="#L13">13</a>
<a id="L14" href="#L14">14</a>
<a id="L15" href="#L15">15</a>
<a id="L16" href="#L16">16</a>
<a id="L17" href="#L17">17</a>
<a id="L18" href="#L18">18</a>
<a id="L19" href="#L19">19</a>
<a id="L20" href="#L20">20</a>
<a id="L21" href="#L21">21</a>
<a id="L22" href="#L22">22</a>
<a id="L23" href="#L23">23</a>
<a id="L24" href="#L24">24</a>
<a id="L25" href="#L25">25</a>
<a id="L26" href="#L26">26</a>
<a id="L27" href="#L27">27</a>
<a id="L28" href="#L28">28</a>
<a id="L29" href="#L29">29</a>
<a id="L30" href="#L30">30</a>
<a id="L31" href="#L31">31</a>
<a id="L32" href="#L32">32</a>
<a id="L33" href="#L33">33</a>
<a id="L34" href="#L34">34</a>
<a id="L35" href="#L35">35</a>
<a id="L36" href="#L36">36</a>
<a id="L37" href="#L37">37</a>
<a id="L38" href="#L38">38</a>
<a id="L39" href="#L39">39</a>
<a id="L40" href="#L40">40</a>
<a id="L41" href="#L41">41</a>
<a id="L42" href="#L42">42</a>
<a id="L43" href="#L43">43</a>
<a id="L44" href="#L44">44</a>
<a id="L45" href="#L45">45</a>
<a id="L46" href="#L46">46</a>
<a id="L47" href="#L47">47</a>
<a id="L48" href="#L48">48</a>
<a id="L49" href="#L49">49</a>
<a id="L50" href="#L50">50</a>
<a id="L51" href="#L51">51</a>
<a id="L52" href="#L52">52</a>
<a id="L53" href="#L53">53</a>
<a id="L54" href="#L54">54</a>
<a id="L55" href="#L55">55</a>
<a id="L56" href="#L56">56</a>
<a id="L57" href="#L57">57</a>
<a id="L58" href="#L58">58</a>
<a id="L59" href="#L59">59</a>
<a id="L60" href="#L60">60</a>
<a id="L61" href="#L61">61</a>
<a id="L62" href="#L62">62</a>
<a id="L63" href="#L63">63</a>
<a id="L64" href="#L64">64</a>
<a id="L65" href="#L65">65</a>
<a id="L66" href="#L66">66</a>
<a id="L67" href="#L67">67</a>
<a id="L68" href="#L68">68</a>
<a id="L69" href="#L69">69</a>
<a id="L70" href="#L70">70</a>
<a id="L71" href="#L71">71</a>
<a id="L72" href="#L72">72</a>
<a id="L73" href="#L73">73</a>
<a id="L74" href="#L74">74</a>
<a id="L75" href="#L75">75</a>
<a id="L76" href="#L76">76</a>
<a id="L77" href="#L77">77</a>
<a id="L78" href="#L78">78</a>
<a id="L79" href="#L79">79</a>
<a id="L80" href="#L80">80</a>
<a id="L81" href="#L81">81</a>
<a id="L82" href="#L82">82</a>
<a id="L83" href="#L83">83</a>
<a id="L84" href="#L84">84</a>
<a id="L85" href="#L85">85</a>
<a id="L86" href="#L86">86</a>
<a id="L87" href="#L87">87</a>
<a id="L88" href="#L88">88</a>
<a id="L89" href="#L89">89</a>
<a id="L90" href="#L90">90</a>
<a id="L91" href="#L91">91</a>
<a id="L92" href="#L92">92</a>
<a id="L93" href="#L93">93</a>
<a id="L94" href="#L94">94</a>
<a id="L95" href="#L95">95</a>
<a id="L96" href="#L96">96</a>
<a id="L97" href="#L97">97</a>
<a id="L98" href="#L98">98</a>
<a id="L99" href="#L99">99</a>
<a id="L100" href="#L100">100</a>
<a id="L101" href="#L101">101</a>
<a id="L102" href="#L102">102</a>
<a id="L103" href="#L103">103</a>
</pre>
</td>
<td class="viewCont">
<pre><span class="pyg-c1">;;; highlight-indentation.el --- Function for highlighting indentation</span>
<span class="pyg-c1">;; Original Author: Anton Johansson &lt;anton.johansson@gmail.com&gt; - http://antonj.se</span>
<span class="pyg-c1">;; Created: Dec 15 23:42:04 2010</span>
<span class="pyg-c1">;; URL: https://github.com/antonj/Highlight-Indentation-for-Emacs</span>

<span class="pyg-c1">;; This program is free software; you can redistribute it and/or</span>
<span class="pyg-c1">;; modify it under the terms of the GNU General Public License as</span>
<span class="pyg-c1">;; published by the Free Software Foundation; either version 2 of</span>
<span class="pyg-c1">;; the License, or (at your option) any later version.</span>
<span class="pyg-c1">;;</span>
<span class="pyg-c1">;; This program is distributed in the hope that it will be</span>
<span class="pyg-c1">;; useful, but WITHOUT ANY WARRANTY; without even the implied</span>
<span class="pyg-c1">;; warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR</span>
<span class="pyg-c1">;; PURPOSE.  See the GNU General Public License for more details.</span>
<span class="pyg-c1">;;</span>
<span class="pyg-c1">;;; Commentary:</span>
<span class="pyg-c1">;; Customize `highlight-indent-face&#39; to suit your theme.</span>

<span class="pyg-c1">;;; Code:</span>

<span class="pyg-p">(</span><span class="pyg-nv">defcustom</span> <span class="pyg-nv">highlight-indentation</span>  <span class="pyg-no">nil</span>
 <span class="pyg-s">&quot;If level of indentation should be displayed at start.</span>
<span class="pyg-s">Toggle buffer local status via `M-x highlight-indentation&#39; during session. &quot;</span>

<span class="pyg-ss">:type</span> <span class="pyg-ss">&#39;boolean</span>
<span class="pyg-ss">:group</span> <span class="pyg-ss">&#39;python</span><span class="pyg-p">)</span>
<span class="pyg-p">(</span><span class="pyg-nv">make-variable-buffer-local</span> <span class="pyg-ss">&#39;highlight-indentation</span><span class="pyg-p">)</span>

<span class="pyg-p">(</span><span class="pyg-nb">defvar</span> <span class="pyg-nv">highlight-indent-active</span> <span class="pyg-no">nil</span><span class="pyg-p">)</span>
<span class="pyg-p">(</span><span class="pyg-nv">make-variable-buffer-local</span> <span class="pyg-ss">&#39;highlight-indent-active</span><span class="pyg-p">)</span>

<span class="pyg-p">(</span><span class="pyg-nv">defface</span> <span class="pyg-nv">highlight-indent-face</span>
  <span class="pyg-o">&#39;</span><span class="pyg-p">((((</span><span class="pyg-nc">class</span> <span class="pyg-nv">color</span><span class="pyg-p">)</span> <span class="pyg-p">(</span><span class="pyg-nv">background</span> <span class="pyg-nv">dark</span><span class="pyg-p">))</span>
     <span class="pyg-p">(</span><span class="pyg-ss">:background</span> <span class="pyg-s">&quot;grey33&quot;</span><span class="pyg-p">))</span>
    <span class="pyg-p">(((</span><span class="pyg-nc">class</span> <span class="pyg-nv">color</span><span class="pyg-p">)</span> <span class="pyg-p">(</span><span class="pyg-nv">background</span> <span class="pyg-nv">light</span><span class="pyg-p">))</span>
     <span class="pyg-p">(</span><span class="pyg-ss">:background</span> <span class="pyg-s">&quot;grey&quot;</span><span class="pyg-p">)))</span>
  <span class="pyg-s">&quot;Basic face for highlighting indentation guides.&quot;</span><span class="pyg-p">)</span>

<span class="pyg-p">(</span><span class="pyg-nv">setq-default</span> <span class="pyg-nv">highlight-indent-offset</span> <span class="pyg-mi">4</span><span class="pyg-p">)</span>

<span class="pyg-p">(</span><span class="pyg-nb">defvar</span> <span class="pyg-nv">ruby-indent-level</span> <span class="pyg-no">nil</span><span class="pyg-p">)</span>
<span class="pyg-c1">;; lp:1067928</span>
<span class="pyg-c1">;; (defvar nxml-child-indent nil)</span>

<span class="pyg-p">(</span><span class="pyg-nb">defun</span> <span class="pyg-nv">highlight-indentation-on</span> <span class="pyg-p">()</span>
  <span class="pyg-s">&quot;Make sure `highlight-indentation&#39; is on. &quot;</span>
  <span class="pyg-p">(</span><span class="pyg-nv">interactive</span><span class="pyg-p">)</span>
  <span class="pyg-p">(</span><span class="pyg-nb">set</span> <span class="pyg-p">(</span><span class="pyg-nv">make-local-variable</span> <span class="pyg-ss">&#39;highlight-indent-active</span><span class="pyg-p">)</span> <span class="pyg-no">nil</span><span class="pyg-p">)</span>
  <span class="pyg-p">(</span><span class="pyg-nv">highlight-indentation</span><span class="pyg-p">)</span>
  <span class="pyg-p">(</span><span class="pyg-nb">when</span> <span class="pyg-p">(</span><span class="pyg-nv">called-interactively-p</span> <span class="pyg-ss">&#39;any</span><span class="pyg-p">)</span>
    <span class="pyg-p">(</span><span class="pyg-nv">message</span> <span class="pyg-s">&quot;highlight-indentation ON&quot;</span><span class="pyg-p">)))</span>

<span class="pyg-p">(</span><span class="pyg-nb">defun</span> <span class="pyg-nv">highlight-indentation-off</span> <span class="pyg-p">()</span>
  <span class="pyg-s">&quot;Make sure `highlight-indentation&#39; is off. &quot;</span>
  <span class="pyg-p">(</span><span class="pyg-nv">interactive</span><span class="pyg-p">)</span>
  <span class="pyg-p">(</span><span class="pyg-nb">set</span> <span class="pyg-p">(</span><span class="pyg-nv">make-local-variable</span> <span class="pyg-ss">&#39;highlight-indent-active</span><span class="pyg-p">)</span> <span class="pyg-no">t</span><span class="pyg-p">)</span>
  <span class="pyg-p">(</span><span class="pyg-nv">highlight-indentation</span><span class="pyg-p">)</span>
  <span class="pyg-p">(</span><span class="pyg-nb">when</span> <span class="pyg-p">(</span><span class="pyg-nv">called-interactively-p</span> <span class="pyg-ss">&#39;any</span><span class="pyg-p">)</span>
    <span class="pyg-p">(</span><span class="pyg-nv">message</span> <span class="pyg-s">&quot;highlight-indentation OFF&quot;</span><span class="pyg-p">)))</span>

<span class="pyg-p">(</span><span class="pyg-nb">defun</span> <span class="pyg-nv">highlight-indentation</span> <span class="pyg-p">(</span><span class="pyg-k">&amp;optional</span> <span class="pyg-nv">indent-width</span><span class="pyg-p">)</span>
  <span class="pyg-s">&quot;Toggle highlight indentation.</span>
<span class="pyg-s">Optional argument INDENT-WIDTH specifies which indentation</span>
<span class="pyg-s">level (spaces only) should be highlighted, if omitted</span>
<span class="pyg-s">indent-width will be guessed from current major-mode&quot;</span>
  <span class="pyg-p">(</span><span class="pyg-nv">interactive</span> <span class="pyg-s">&quot;P&quot;</span><span class="pyg-p">)</span>
  <span class="pyg-p">(</span><span class="pyg-k">let</span> <span class="pyg-p">((</span><span class="pyg-nv">re</span> <span class="pyg-p">(</span><span class="pyg-nb">format</span> <span class="pyg-s">&quot;\\( \\) \\{%s\\}&quot;</span> <span class="pyg-p">(</span><span class="pyg-nb">-</span> <span class="pyg-nv">highlight-indent-offset</span> <span class="pyg-mi">1</span><span class="pyg-p">))))</span>
    <span class="pyg-p">(</span><span class="pyg-k">if</span> <span class="pyg-p">(</span><span class="pyg-nb">not</span> <span class="pyg-nv">highlight-indent-active</span><span class="pyg-p">)</span>
        <span class="pyg-p">(</span><span class="pyg-k">progn</span> <span class="pyg-c1">;; Toggle on</span>
          <span class="pyg-p">(</span><span class="pyg-nb">set</span> <span class="pyg-p">(</span><span class="pyg-nv">make-local-variable</span> <span class="pyg-ss">&#39;highlight-indent-offset</span><span class="pyg-p">)</span>
               <span class="pyg-p">(</span><span class="pyg-k">if</span> <span class="pyg-nv">indent-width</span>
                   <span class="pyg-nv">indent-width</span>
                 <span class="pyg-c1">;; Set indentation offset according to major mode</span>
                 <span class="pyg-p">(</span><span class="pyg-nb">cond</span> <span class="pyg-p">((</span><span class="pyg-nb">and</span> <span class="pyg-p">(</span><span class="pyg-nb">eq</span> <span class="pyg-nv">major-mode</span> <span class="pyg-ss">&#39;python-mode</span><span class="pyg-p">)(</span><span class="pyg-nb">boundp</span> <span class="pyg-ss">&#39;py-indent-offset</span><span class="pyg-p">))</span> 
                        <span class="pyg-nv">py-indent-offset</span><span class="pyg-p">)</span>
                       <span class="pyg-c1">;; support both python.el</span>
                       <span class="pyg-p">((</span><span class="pyg-nb">or</span> <span class="pyg-p">(</span><span class="pyg-nb">eq</span> <span class="pyg-nv">major-mode</span> <span class="pyg-ss">&#39;python-mode</span><span class="pyg-p">)(</span><span class="pyg-nb">eq</span> <span class="pyg-nv">major-mode</span> <span class="pyg-ss">&#39;python</span><span class="pyg-p">))</span>
                        <span class="pyg-nv">python-indent</span><span class="pyg-p">)</span>
                       <span class="pyg-p">((</span><span class="pyg-nb">eq</span> <span class="pyg-nv">major-mode</span> <span class="pyg-ss">&#39;ruby-mode</span><span class="pyg-p">)</span>
                        <span class="pyg-nv">ruby-indent-level</span><span class="pyg-p">)</span>
                       <span class="pyg-p">((</span><span class="pyg-nb">eq</span> <span class="pyg-nv">major-mode</span> <span class="pyg-ss">&#39;nxml-mode</span><span class="pyg-p">)</span>
                        <span class="pyg-nv">nxml-child-indent</span><span class="pyg-p">)</span>
                       <span class="pyg-p">((</span><span class="pyg-nv">local-variable-p</span> <span class="pyg-ss">&#39;c-basic-offset</span><span class="pyg-p">)</span>
                        <span class="pyg-nv">c-basic-offset</span><span class="pyg-p">)</span>
                       <span class="pyg-p">(</span><span class="pyg-no">t</span>
                        <span class="pyg-p">(</span><span class="pyg-nv">default-value</span> <span class="pyg-ss">&#39;highlight-indent-offset</span><span class="pyg-p">)))))</span>
          <span class="pyg-p">(</span><span class="pyg-nb">set</span> <span class="pyg-p">(</span><span class="pyg-nv">make-local-variable</span> <span class="pyg-ss">&#39;highlight-indent-active</span><span class="pyg-p">)</span> <span class="pyg-no">t</span><span class="pyg-p">)</span>
          <span class="pyg-p">(</span><span class="pyg-k">if</span> <span class="pyg-p">(</span><span class="pyg-nv">featurep</span> <span class="pyg-ss">&#39;xemacs</span><span class="pyg-p">)</span>
              <span class="pyg-p">(</span><span class="pyg-nv">font-lock-add-keywords</span> <span class="pyg-no">nil</span> <span class="pyg-o">`</span><span class="pyg-p">((</span><span class="pyg-o">,</span><span class="pyg-nv">re</span> <span class="pyg-p">(</span><span class="pyg-mi">1</span> <span class="pyg-ss">&#39;paren-face-match</span><span class="pyg-p">))))</span>
            <span class="pyg-p">(</span><span class="pyg-nv">font-lock-add-keywords</span> <span class="pyg-no">nil</span> <span class="pyg-o">`</span><span class="pyg-p">((</span><span class="pyg-o">,</span><span class="pyg-nv">re</span> <span class="pyg-p">(</span><span class="pyg-mi">1</span> <span class="pyg-ss">&#39;highlight-indent-face</span><span class="pyg-p">)))))</span>
          <span class="pyg-p">(</span><span class="pyg-nv">message</span> <span class="pyg-p">(</span><span class="pyg-nb">format</span> <span class="pyg-s">&quot;highlight-indentation with indent-width %s&quot;</span>
                           <span class="pyg-nv">highlight-indent-offset</span><span class="pyg-p">)))</span>
      <span class="pyg-c1">;; Toggle off</span>
      <span class="pyg-p">(</span><span class="pyg-nb">set</span> <span class="pyg-p">(</span><span class="pyg-nv">make-local-variable</span> <span class="pyg-ss">&#39;highlight-indent-active</span><span class="pyg-p">)</span> <span class="pyg-no">nil</span><span class="pyg-p">)</span>
      <span class="pyg-p">(</span><span class="pyg-k">if</span> <span class="pyg-p">(</span><span class="pyg-nv">featurep</span> <span class="pyg-ss">&#39;xemacs</span><span class="pyg-p">)</span>
          <span class="pyg-p">(</span><span class="pyg-nv">font-lock-remove-keywords</span> <span class="pyg-no">nil</span> <span class="pyg-o">`</span><span class="pyg-p">((</span><span class="pyg-o">,</span><span class="pyg-nv">re</span> <span class="pyg-p">(</span><span class="pyg-mi">1</span> <span class="pyg-ss">&#39;paren-face-match</span><span class="pyg-p">))))</span>
        <span class="pyg-p">(</span><span class="pyg-nv">font-lock-remove-keywords</span> <span class="pyg-no">nil</span> <span class="pyg-o">`</span><span class="pyg-p">((</span><span class="pyg-o">,</span><span class="pyg-nv">re</span> <span class="pyg-p">(</span><span class="pyg-mi">1</span> <span class="pyg-ss">&#39;highlight-indent-face</span><span class="pyg-p">)))))</span>
      <span class="pyg-p">(</span><span class="pyg-nv">message</span> <span class="pyg-s">&quot;highlight-indentation OFF&quot;</span><span class="pyg-p">))</span>
    <span class="pyg-p">(</span><span class="pyg-nv">font-lock-fontify-buffer</span><span class="pyg-p">)))</span>

<span class="pyg-p">(</span><span class="pyg-nb">provide</span> <span class="pyg-ss">&#39;highlight-indentation</span><span class="pyg-p">)</span>

<span class="pyg-c1">;;; highlight-indentation.el ends here</span>
</pre>
</td>
</tr>
</table>
</div>
</div>
<p id="footer" class="fl">
Loggerhead is a web-based interface for <a href="http://bazaar-vcs.org/">Bazaar</a> branches
<br />
Version: 1.18.2<span>, Revision: 17086</span>
</p>
</div>
</body>
</html>