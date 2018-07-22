<?xml version="1.0"?>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta content="text/html; charset=utf-8" http-equiv="Content-Type" />
<meta content="Loggerhead/1.18.2 Python/2.7.3 Bazaar/2.6.0 Paste/1.7.5.1 PasteDeploy/1.3.4 SimpleTAL/4.3 Pygments/1.6 simplejson/3.1.3" name="generator" />
<title>~python-mode-devs/python-mode/python-mode : contents of extensions/column-marker.el at revision 1612</title>
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
/<a href="/~python-mode-devs/python-mode/python-mode/files/1612/extensions">extensions</a>/column-marker.el
</span> (revision 1612)</span>
</div>

<div>

<ul id="submenuTabs">
<li id="first">
<a href="/~python-mode-devs/python-mode/python-mode/files/1612">browse files</a>
</li>
<li>
<a href="/~python-mode-devs/python-mode/python-mode/annotate/head:/extensions/column-marker.el">view with revision information</a>
</li>

<li>
<a href="/~python-mode-devs/python-mode/python-mode/revision/1612">view revision</a>
</li>
<li>
<a href="/~python-mode-devs/python-mode/python-mode/changes?filter_file_id=columnmarker.el-20121006191403-gzguh5tr6ve5ztld-1">view changes to this file</a>
</li>
<li id="last">
<a href="/~python-mode-devs/python-mode/python-mode/download/head:/columnmarker.el-20121006191403-gzguh5tr6ve5ztld-1/column-marker.el">download file</a>
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
<a id="L104" href="#L104">104</a>
<a id="L105" href="#L105">105</a>
<a id="L106" href="#L106">106</a>
<a id="L107" href="#L107">107</a>
<a id="L108" href="#L108">108</a>
<a id="L109" href="#L109">109</a>
<a id="L110" href="#L110">110</a>
<a id="L111" href="#L111">111</a>
<a id="L112" href="#L112">112</a>
<a id="L113" href="#L113">113</a>
<a id="L114" href="#L114">114</a>
<a id="L115" href="#L115">115</a>
<a id="L116" href="#L116">116</a>
<a id="L117" href="#L117">117</a>
<a id="L118" href="#L118">118</a>
<a id="L119" href="#L119">119</a>
<a id="L120" href="#L120">120</a>
<a id="L121" href="#L121">121</a>
<a id="L122" href="#L122">122</a>
<a id="L123" href="#L123">123</a>
<a id="L124" href="#L124">124</a>
<a id="L125" href="#L125">125</a>
<a id="L126" href="#L126">126</a>
<a id="L127" href="#L127">127</a>
<a id="L128" href="#L128">128</a>
<a id="L129" href="#L129">129</a>
<a id="L130" href="#L130">130</a>
<a id="L131" href="#L131">131</a>
<a id="L132" href="#L132">132</a>
<a id="L133" href="#L133">133</a>
<a id="L134" href="#L134">134</a>
<a id="L135" href="#L135">135</a>
<a id="L136" href="#L136">136</a>
<a id="L137" href="#L137">137</a>
<a id="L138" href="#L138">138</a>
<a id="L139" href="#L139">139</a>
<a id="L140" href="#L140">140</a>
<a id="L141" href="#L141">141</a>
<a id="L142" href="#L142">142</a>
<a id="L143" href="#L143">143</a>
<a id="L144" href="#L144">144</a>
<a id="L145" href="#L145">145</a>
<a id="L146" href="#L146">146</a>
<a id="L147" href="#L147">147</a>
<a id="L148" href="#L148">148</a>
<a id="L149" href="#L149">149</a>
<a id="L150" href="#L150">150</a>
<a id="L151" href="#L151">151</a>
<a id="L152" href="#L152">152</a>
<a id="L153" href="#L153">153</a>
<a id="L154" href="#L154">154</a>
<a id="L155" href="#L155">155</a>
<a id="L156" href="#L156">156</a>
<a id="L157" href="#L157">157</a>
<a id="L158" href="#L158">158</a>
<a id="L159" href="#L159">159</a>
<a id="L160" href="#L160">160</a>
<a id="L161" href="#L161">161</a>
<a id="L162" href="#L162">162</a>
<a id="L163" href="#L163">163</a>
<a id="L164" href="#L164">164</a>
<a id="L165" href="#L165">165</a>
<a id="L166" href="#L166">166</a>
<a id="L167" href="#L167">167</a>
<a id="L168" href="#L168">168</a>
<a id="L169" href="#L169">169</a>
<a id="L170" href="#L170">170</a>
<a id="L171" href="#L171">171</a>
<a id="L172" href="#L172">172</a>
<a id="L173" href="#L173">173</a>
<a id="L174" href="#L174">174</a>
<a id="L175" href="#L175">175</a>
<a id="L176" href="#L176">176</a>
<a id="L177" href="#L177">177</a>
<a id="L178" href="#L178">178</a>
<a id="L179" href="#L179">179</a>
<a id="L180" href="#L180">180</a>
<a id="L181" href="#L181">181</a>
<a id="L182" href="#L182">182</a>
<a id="L183" href="#L183">183</a>
<a id="L184" href="#L184">184</a>
<a id="L185" href="#L185">185</a>
<a id="L186" href="#L186">186</a>
<a id="L187" href="#L187">187</a>
<a id="L188" href="#L188">188</a>
<a id="L189" href="#L189">189</a>
<a id="L190" href="#L190">190</a>
<a id="L191" href="#L191">191</a>
<a id="L192" href="#L192">192</a>
<a id="L193" href="#L193">193</a>
<a id="L194" href="#L194">194</a>
<a id="L195" href="#L195">195</a>
<a id="L196" href="#L196">196</a>
<a id="L197" href="#L197">197</a>
<a id="L198" href="#L198">198</a>
<a id="L199" href="#L199">199</a>
<a id="L200" href="#L200">200</a>
<a id="L201" href="#L201">201</a>
<a id="L202" href="#L202">202</a>
<a id="L203" href="#L203">203</a>
<a id="L204" href="#L204">204</a>
<a id="L205" href="#L205">205</a>
<a id="L206" href="#L206">206</a>
<a id="L207" href="#L207">207</a>
<a id="L208" href="#L208">208</a>
<a id="L209" href="#L209">209</a>
<a id="L210" href="#L210">210</a>
<a id="L211" href="#L211">211</a>
<a id="L212" href="#L212">212</a>
<a id="L213" href="#L213">213</a>
<a id="L214" href="#L214">214</a>
<a id="L215" href="#L215">215</a>
<a id="L216" href="#L216">216</a>
<a id="L217" href="#L217">217</a>
<a id="L218" href="#L218">218</a>
<a id="L219" href="#L219">219</a>
<a id="L220" href="#L220">220</a>
<a id="L221" href="#L221">221</a>
<a id="L222" href="#L222">222</a>
<a id="L223" href="#L223">223</a>
<a id="L224" href="#L224">224</a>
<a id="L225" href="#L225">225</a>
<a id="L226" href="#L226">226</a>
<a id="L227" href="#L227">227</a>
<a id="L228" href="#L228">228</a>
<a id="L229" href="#L229">229</a>
<a id="L230" href="#L230">230</a>
<a id="L231" href="#L231">231</a>
<a id="L232" href="#L232">232</a>
<a id="L233" href="#L233">233</a>
<a id="L234" href="#L234">234</a>
<a id="L235" href="#L235">235</a>
<a id="L236" href="#L236">236</a>
<a id="L237" href="#L237">237</a>
<a id="L238" href="#L238">238</a>
<a id="L239" href="#L239">239</a>
<a id="L240" href="#L240">240</a>
<a id="L241" href="#L241">241</a>
<a id="L242" href="#L242">242</a>
<a id="L243" href="#L243">243</a>
<a id="L244" href="#L244">244</a>
<a id="L245" href="#L245">245</a>
<a id="L246" href="#L246">246</a>
<a id="L247" href="#L247">247</a>
<a id="L248" href="#L248">248</a>
<a id="L249" href="#L249">249</a>
<a id="L250" href="#L250">250</a>
<a id="L251" href="#L251">251</a>
<a id="L252" href="#L252">252</a>
<a id="L253" href="#L253">253</a>
<a id="L254" href="#L254">254</a>
<a id="L255" href="#L255">255</a>
<a id="L256" href="#L256">256</a>
<a id="L257" href="#L257">257</a>
<a id="L258" href="#L258">258</a>
<a id="L259" href="#L259">259</a>
</pre>
</td>
<td class="viewCont">
<pre><span class="pyg-c1">;;; column-marker.el --- Highlight certain character columns</span>
<span class="pyg-c1">;; </span>
<span class="pyg-c1">;; Filename: column-marker.el</span>
<span class="pyg-c1">;; Description: Highlight certain character columns</span>
<span class="pyg-c1">;; Author: Rick Bielawski &lt;rbielaws@i1.net&gt;</span>
<span class="pyg-c1">;; Maintainer: Rick Bielawski &lt;rbielaws@i1.net&gt;</span>
<span class="pyg-c1">;; Created: Tue Nov 22 10:26:03 2005</span>
<span class="pyg-c1">;; Version: </span>
<span class="pyg-c1">;; Last-Updated: Fri Jan 22 11:28:48 2010 (-0800)</span>
<span class="pyg-c1">;;           By: dradams</span>
<span class="pyg-c1">;;     Update #: 312</span>
<span class="pyg-c1">;; Keywords: tools convenience highlight</span>
<span class="pyg-c1">;; Compatibility: GNU Emacs 21, GNU Emacs 22, GNU Emacs 23</span>
<span class="pyg-c1">;; </span>
<span class="pyg-c1">;; Features that might be required by this library:</span>
<span class="pyg-c1">;;</span>
<span class="pyg-c1">;;   None</span>
<span class="pyg-c1">;;</span>
<span class="pyg-c1">;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;</span>
<span class="pyg-c1">;; </span>
<span class="pyg-c1">;;; Commentary: </span>
<span class="pyg-c1">;; </span>
<span class="pyg-c1">;; Highlights the background at a given character column.</span>
<span class="pyg-c1">;; </span>
<span class="pyg-c1">;; Commands `column-marker-1&#39;, `column-marker-2&#39;, and</span>
<span class="pyg-c1">;; `column-marker-3&#39; each highlight a given column (using different</span>
<span class="pyg-c1">;; background colors, by default).</span>
<span class="pyg-c1">;;</span>
<span class="pyg-c1">;; - With no prefix argument, each highlights the current column</span>
<span class="pyg-c1">;;   (where the cursor is).</span>
<span class="pyg-c1">;;</span>
<span class="pyg-c1">;; - With a non-negative numeric prefix argument, each highlights that</span>
<span class="pyg-c1">;;   column.</span>
<span class="pyg-c1">;;</span>
<span class="pyg-c1">;; - With plain `C-u&#39; (no number), each turns off its highlighting.</span>
<span class="pyg-c1">;;</span>
<span class="pyg-c1">;; - With `C-u C-u&#39;, each turns off all column highlighting.</span>
<span class="pyg-c1">;;</span>
<span class="pyg-c1">;; If two commands highlight the same column, the last-issued</span>
<span class="pyg-c1">;; highlighting command shadows the other - only the last-issued</span>
<span class="pyg-c1">;; highlighting is seen.  If that &quot;topmost&quot; highlighting is then</span>
<span class="pyg-c1">;; turned off, the other highlighting for that column then shows</span>
<span class="pyg-c1">;; through.</span>
<span class="pyg-c1">;;</span>
<span class="pyg-c1">;; Examples:</span>
<span class="pyg-c1">;;</span>
<span class="pyg-c1">;; M-x column-marker-1 highlights the column where the cursor is, in</span>
<span class="pyg-c1">;; face `column-marker-1&#39;.</span>
<span class="pyg-c1">;;</span>
<span class="pyg-c1">;; C-u 70 M-x column-marker-2 highlights column 70 in face</span>
<span class="pyg-c1">;; `column-marker-2&#39;.</span>
<span class="pyg-c1">;;</span>
<span class="pyg-c1">;; C-u 70 M-x column-marker-3 highlights column 70 in face</span>
<span class="pyg-c1">;; `column-marker-3&#39;.  The face `column-marker-2&#39; highlighting no</span>
<span class="pyg-c1">;; longer shows.</span>
<span class="pyg-c1">;;</span>
<span class="pyg-c1">;; C-u M-x column-marker-3 turns off highlighting for column-marker-3,</span>
<span class="pyg-c1">;; so face `column-marker-2&#39; highlighting shows again for column 70.</span>
<span class="pyg-c1">;;</span>
<span class="pyg-c1">;; C-u C-u M-x column-marker-1 (or -2 or -3) erases all column</span>
<span class="pyg-c1">;; highlighting.</span>
<span class="pyg-c1">;;</span>
<span class="pyg-c1">;; These commands use `font-lock-fontify-buffer&#39;, so syntax</span>
<span class="pyg-c1">;; highlighting (`font-lock-mode&#39;) must be turned on.  There might be</span>
<span class="pyg-c1">;; a performance impact during refontification.</span>
<span class="pyg-c1">;;</span>
<span class="pyg-c1">;;</span>
<span class="pyg-c1">;; Installation: Place this file on your load path, and put this in</span>
<span class="pyg-c1">;; your init file (`.emacs&#39;):</span>
<span class="pyg-c1">;;</span>
<span class="pyg-c1">;; (require &#39;column-marker)</span>
<span class="pyg-c1">;;</span>
<span class="pyg-c1">;; Other init file suggestions (examples):</span>
<span class="pyg-c1">;;</span>
<span class="pyg-c1">;; ;; Highlight column 80 in foo mode.</span>
<span class="pyg-c1">;; (add-hook &#39;foo-mode-hook (lambda () (interactive) (column-marker-1 80)))</span>
<span class="pyg-c1">;;</span>
<span class="pyg-c1">;; ;; Use `C-c m&#39; interactively to highlight with face `column-marker-1&#39;.</span>
<span class="pyg-c1">;; (global-set-key [?\C-c ?m] &#39;column-marker-1)</span>
<span class="pyg-c1">;;</span>
<span class="pyg-c1">;;</span>
<span class="pyg-c1">;; Please report any bugs!</span>
<span class="pyg-c1">;;</span>
<span class="pyg-c1">;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;</span>
<span class="pyg-c1">;; </span>
<span class="pyg-c1">;;; Change log:</span>
<span class="pyg-c1">;;</span>
<span class="pyg-c1">;; 2009/12/10 dadams</span>
<span class="pyg-c1">;;     column-marker-internal: Quote the face.  Thx to Johan Bockgård.</span>
<span class="pyg-c1">;; 2009/12/09 dadams</span>
<span class="pyg-c1">;;     column-marker-find: fset a symbol to the function, and return the symbol.</span>
<span class="pyg-c1">;; 2008/01/21 dadams</span>
<span class="pyg-c1">;;     Renamed faces by dropping suffix &quot;-face&quot;.</span>
<span class="pyg-c1">;; 2006/08/18 dadams</span>
<span class="pyg-c1">;;     column-marker-create: Add newlines to doc-string sentences.</span>
<span class="pyg-c1">;; 2005/12/31 dadams</span>
<span class="pyg-c1">;;     column-marker-create: Add marker to column-marker-vars inside the defun,</span>
<span class="pyg-c1">;;       so it is done in the right buffer, updating column-marker-vars buffer-locally.</span>
<span class="pyg-c1">;;     column-marker-find: Corrected comment.  Changed or to progn for clarity.</span>
<span class="pyg-c1">;; 2005/12/29 dadams</span>
<span class="pyg-c1">;;     Updated wrt new version of column-marker.el (multi-column characters).</span>
<span class="pyg-c1">;;     Corrected stray occurrences of column-marker-here to column-marker-1.</span>
<span class="pyg-c1">;;     column-marker-vars: Added make-local-variable.</span>
<span class="pyg-c1">;;     column-marker-create: Changed positive to non-negative.</span>
<span class="pyg-c1">;;     column-marker-internal: Turn off marker when col is negative, not &lt; 1.</span>
<span class="pyg-c1">;; 2005-12-29 RGB</span>
<span class="pyg-c1">;;     column-marker.el now supports multi-column characters.</span>
<span class="pyg-c1">;; 2005/11/21 dadams</span>
<span class="pyg-c1">;;     Combined static and dynamic. </span>
<span class="pyg-c1">;;     Use separate faces for each marker.  Different interactive spec.</span>
<span class="pyg-c1">;; 2005/10/19 RGB</span>
<span class="pyg-c1">;;     Initial release of column-marker.el.</span>
<span class="pyg-c1">;;</span>
<span class="pyg-c1">;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;</span>
<span class="pyg-c1">;;</span>
<span class="pyg-c1">;; This program is free software; you can redistribute it and/or modify</span>
<span class="pyg-c1">;; it under the terms of the GNU General Public License as published by</span>
<span class="pyg-c1">;; the Free Software Foundation; either version 2, or (at your option)</span>
<span class="pyg-c1">;; any later version.</span>

<span class="pyg-c1">;; This program is distributed in the hope that it will be useful,</span>
<span class="pyg-c1">;; but WITHOUT ANY WARRANTY; without even the implied warranty of</span>
<span class="pyg-c1">;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the</span>
<span class="pyg-c1">;; GNU General Public License for more details.</span>

<span class="pyg-c1">;; You should have received a copy of the GNU General Public License</span>
<span class="pyg-c1">;; along with this program; see the file COPYING.  If not, write to</span>
<span class="pyg-c1">;; the Free Software Foundation, Inc., 51 Franklin Street, Fifth</span>
<span class="pyg-c1">;; Floor, Boston, MA 02110-1301, USA.</span>
<span class="pyg-c1">;;</span>
<span class="pyg-c1">;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;</span>
<span class="pyg-c1">;; </span>
<span class="pyg-c1">;;; Code:</span>

<span class="pyg-c1">;;;;;;;;;;;;;;;;;;;;;;</span>


<span class="pyg-p">(</span><span class="pyg-nv">defface</span> <span class="pyg-nv">column-marker-1</span> <span class="pyg-o">&#39;</span><span class="pyg-p">((</span><span class="pyg-no">t</span> <span class="pyg-p">(</span><span class="pyg-ss">:background</span> <span class="pyg-s">&quot;gray&quot;</span><span class="pyg-p">)))</span>
  <span class="pyg-s">&quot;Face used for a column marker.  Usually a background color.&quot;</span>
  <span class="pyg-ss">:group</span> <span class="pyg-ss">&#39;faces</span><span class="pyg-p">)</span>

<span class="pyg-p">(</span><span class="pyg-nb">defvar</span> <span class="pyg-nv">column-marker-1-face</span> <span class="pyg-ss">&#39;column-marker-1</span>
    <span class="pyg-s">&quot;Face used for a column marker.  Usually a background color.</span>
<span class="pyg-s">Changing this directly affects only new markers.&quot;</span><span class="pyg-p">)</span>

<span class="pyg-p">(</span><span class="pyg-nv">defface</span> <span class="pyg-nv">column-marker-2</span> <span class="pyg-o">&#39;</span><span class="pyg-p">((</span><span class="pyg-no">t</span> <span class="pyg-p">(</span><span class="pyg-ss">:background</span> <span class="pyg-s">&quot;cyan3&quot;</span><span class="pyg-p">)))</span>
  <span class="pyg-s">&quot;Face used for a column marker.  Usually a background color.&quot;</span>
  <span class="pyg-ss">:group</span> <span class="pyg-ss">&#39;faces</span><span class="pyg-p">)</span>

<span class="pyg-p">(</span><span class="pyg-nb">defvar</span> <span class="pyg-nv">column-marker-2-face</span> <span class="pyg-ss">&#39;column-marker-2</span>
    <span class="pyg-s">&quot;Face used for a column marker.  Usually a background color.</span>
<span class="pyg-s">Changing this directly affects only new markers.&quot;</span> <span class="pyg-p">)</span>

<span class="pyg-p">(</span><span class="pyg-nv">defface</span> <span class="pyg-nv">column-marker-3</span> <span class="pyg-o">&#39;</span><span class="pyg-p">((</span><span class="pyg-no">t</span> <span class="pyg-p">(</span><span class="pyg-ss">:background</span> <span class="pyg-s">&quot;orchid3&quot;</span><span class="pyg-p">)))</span>
  <span class="pyg-s">&quot;Face used for a column marker.  Usually a background color.&quot;</span>
  <span class="pyg-ss">:group</span> <span class="pyg-ss">&#39;faces</span><span class="pyg-p">)</span>

<span class="pyg-p">(</span><span class="pyg-nb">defvar</span> <span class="pyg-nv">column-marker-3-face</span> <span class="pyg-ss">&#39;column-marker-3</span>
    <span class="pyg-s">&quot;Face used for a column marker.  Usually a background color.</span>
<span class="pyg-s">Changing this directly affects only new markers.&quot;</span> <span class="pyg-p">)</span>

<span class="pyg-p">(</span><span class="pyg-nb">defvar</span> <span class="pyg-nv">column-marker-vars</span> <span class="pyg-p">()</span>
  <span class="pyg-s">&quot;List of all internal column-marker variables&quot;</span><span class="pyg-p">)</span>
<span class="pyg-p">(</span><span class="pyg-nv">make-variable-buffer-local</span> <span class="pyg-ss">&#39;column-marker-vars</span><span class="pyg-p">)</span> <span class="pyg-c1">; Buffer local in all buffers.</span>

<span class="pyg-p">(</span><span class="pyg-nb">defmacro</span> <span class="pyg-nv">column-marker-create</span> <span class="pyg-p">(</span><span class="pyg-nv">var</span> <span class="pyg-k">&amp;optional</span> <span class="pyg-nv">face</span><span class="pyg-p">)</span>
  <span class="pyg-s">&quot;Define a column marker named VAR.</span>
<span class="pyg-s">FACE is the face to use.  If nil, then face `column-marker-1&#39; is used.&quot;</span>
  <span class="pyg-p">(</span><span class="pyg-k">setq</span> <span class="pyg-nv">face</span> <span class="pyg-p">(</span><span class="pyg-nb">or</span> <span class="pyg-nv">face</span> <span class="pyg-ss">&#39;column-marker-1</span><span class="pyg-p">))</span>
  <span class="pyg-o">`</span><span class="pyg-p">(</span><span class="pyg-k">progn</span>
     <span class="pyg-c1">;; define context variable ,VAR so marker can be removed if desired</span>
     <span class="pyg-p">(</span><span class="pyg-nb">defvar</span> <span class="pyg-o">,</span><span class="pyg-nv">var</span> <span class="pyg-p">()</span>
       <span class="pyg-s">&quot;Buffer local. Used internally to store column marker spec.&quot;</span><span class="pyg-p">)</span>
     <span class="pyg-c1">;; context must be buffer local since font-lock is </span>
     <span class="pyg-p">(</span><span class="pyg-nv">make-variable-buffer-local</span> <span class="pyg-ss">&#39;,var</span><span class="pyg-p">)</span>
     <span class="pyg-c1">;; Define wrapper function named ,VAR to call `column-marker-internal&#39;</span>
     <span class="pyg-p">(</span><span class="pyg-nb">defun</span> <span class="pyg-o">,</span><span class="pyg-nv">var</span> <span class="pyg-p">(</span><span class="pyg-nv">arg</span><span class="pyg-p">)</span>
       <span class="pyg-o">,</span><span class="pyg-p">(</span><span class="pyg-nv">concat</span> <span class="pyg-s">&quot;Highlight column with face `&quot;</span> <span class="pyg-p">(</span><span class="pyg-nb">symbol-name</span> <span class="pyg-nv">face</span><span class="pyg-p">)</span>
                <span class="pyg-s">&quot;&#39;.\nWith no prefix argument, highlight current column.\n&quot;</span>
                <span class="pyg-s">&quot;With non-negative numeric prefix arg, highlight that column number.\n&quot;</span>
                <span class="pyg-s">&quot;With plain `C-u&#39; (no number), turn off this column marker.\n&quot;</span>
                <span class="pyg-s">&quot;With `C-u C-u&#39; or negative prefix arg, turn off all column-marker highlighting.&quot;</span><span class="pyg-p">)</span>
       <span class="pyg-p">(</span><span class="pyg-nv">interactive</span> <span class="pyg-s">&quot;P&quot;</span><span class="pyg-p">)</span>
       <span class="pyg-p">(</span><span class="pyg-nb">unless</span> <span class="pyg-p">(</span><span class="pyg-nv">memq</span> <span class="pyg-ss">&#39;,var</span> <span class="pyg-nv">column-marker-vars</span><span class="pyg-p">)</span> <span class="pyg-p">(</span><span class="pyg-nb">push</span> <span class="pyg-ss">&#39;,var</span> <span class="pyg-nv">column-marker-vars</span><span class="pyg-p">))</span>
       <span class="pyg-p">(</span><span class="pyg-nb">cond</span> <span class="pyg-p">((</span><span class="pyg-nb">null</span> <span class="pyg-nv">arg</span><span class="pyg-p">)</span>          <span class="pyg-c1">; Default: highlight current column.</span>
              <span class="pyg-p">(</span><span class="pyg-nv">column-marker-internal</span> <span class="pyg-ss">&#39;,var</span> <span class="pyg-p">(</span><span class="pyg-nb">1+</span> <span class="pyg-p">(</span><span class="pyg-nv">current-column</span><span class="pyg-p">))</span> <span class="pyg-o">,</span><span class="pyg-nv">face</span><span class="pyg-p">))</span>
             <span class="pyg-p">((</span><span class="pyg-nb">consp</span> <span class="pyg-nv">arg</span><span class="pyg-p">)</span>
              <span class="pyg-p">(</span><span class="pyg-k">if</span> <span class="pyg-p">(</span><span class="pyg-nb">=</span> <span class="pyg-mi">4</span> <span class="pyg-p">(</span><span class="pyg-nb">car</span> <span class="pyg-nv">arg</span><span class="pyg-p">))</span>
                  <span class="pyg-p">(</span><span class="pyg-nv">column-marker-internal</span> <span class="pyg-ss">&#39;,var</span> <span class="pyg-no">nil</span><span class="pyg-p">)</span> <span class="pyg-c1">; `C-u&#39;: Remove this column highlighting.</span>
                <span class="pyg-p">(</span><span class="pyg-nb">dolist</span> <span class="pyg-p">(</span><span class="pyg-nv">var</span> <span class="pyg-nv">column-marker-vars</span><span class="pyg-p">)</span>
                  <span class="pyg-p">(</span><span class="pyg-nv">column-marker-internal</span> <span class="pyg-nv">var</span> <span class="pyg-no">nil</span><span class="pyg-p">))))</span> <span class="pyg-c1">; `C-u C-u&#39;: Remove all column highlighting.</span>
             <span class="pyg-p">((</span><span class="pyg-nb">and</span> <span class="pyg-p">(</span><span class="pyg-nb">integerp</span> <span class="pyg-nv">arg</span><span class="pyg-p">)</span> <span class="pyg-p">(</span><span class="pyg-nb">&gt;=</span> <span class="pyg-nv">arg</span> <span class="pyg-mi">0</span><span class="pyg-p">))</span> <span class="pyg-c1">; `C-u 70&#39;: Highlight that column.</span>
              <span class="pyg-p">(</span><span class="pyg-nv">column-marker-internal</span> <span class="pyg-ss">&#39;,var</span> <span class="pyg-p">(</span><span class="pyg-nb">1+</span> <span class="pyg-p">(</span><span class="pyg-nv">prefix-numeric-value</span> <span class="pyg-nv">arg</span><span class="pyg-p">))</span> <span class="pyg-o">,</span><span class="pyg-nv">face</span><span class="pyg-p">))</span>
             <span class="pyg-p">(</span><span class="pyg-no">t</span>           <span class="pyg-c1">; `C-u -40&#39;: Remove all column highlighting.</span>
              <span class="pyg-p">(</span><span class="pyg-nb">dolist</span> <span class="pyg-p">(</span><span class="pyg-nv">var</span> <span class="pyg-nv">column-marker-vars</span><span class="pyg-p">)</span>
                <span class="pyg-p">(</span><span class="pyg-nv">column-marker-internal</span> <span class="pyg-nv">var</span> <span class="pyg-no">nil</span><span class="pyg-p">)))))))</span>

<span class="pyg-p">(</span><span class="pyg-nb">defun</span> <span class="pyg-nv">column-marker-find</span> <span class="pyg-p">(</span><span class="pyg-nv">col</span><span class="pyg-p">)</span>
  <span class="pyg-s">&quot;Defines a function to locate a character in column COL.</span>
<span class="pyg-s">Returns the function symbol, named `column-marker-move-to-COL&#39;.&quot;</span>
  <span class="pyg-p">(</span><span class="pyg-k">let</span> <span class="pyg-p">((</span><span class="pyg-nv">fn-symb</span>  <span class="pyg-p">(</span><span class="pyg-nb">intern</span> <span class="pyg-p">(</span><span class="pyg-nb">format</span> <span class="pyg-s">&quot;column-marker-move-to-%d&quot;</span> <span class="pyg-nv">col</span><span class="pyg-p">))))</span>
    <span class="pyg-p">(</span><span class="pyg-nv">fset</span> <span class="pyg-o">`,</span><span class="pyg-nv">fn-symb</span>
          <span class="pyg-o">`</span><span class="pyg-p">(</span><span class="pyg-k">lambda</span> <span class="pyg-p">(</span><span class="pyg-nv">end</span><span class="pyg-p">)</span>
             <span class="pyg-p">(</span><span class="pyg-k">let</span> <span class="pyg-p">((</span><span class="pyg-nv">start</span> <span class="pyg-p">(</span><span class="pyg-nv">point</span><span class="pyg-p">)))</span>
               <span class="pyg-p">(</span><span class="pyg-nb">when</span> <span class="pyg-p">(</span><span class="pyg-nb">&gt;</span> <span class="pyg-nv">end</span> <span class="pyg-p">(</span><span class="pyg-nv">point-max</span><span class="pyg-p">))</span> <span class="pyg-p">(</span><span class="pyg-k">setq</span> <span class="pyg-nv">end</span> <span class="pyg-p">(</span><span class="pyg-nv">point-max</span><span class="pyg-p">)))</span>

               <span class="pyg-c1">;; Try to keep `move-to-column&#39; from going backward, though it still can.</span>
               <span class="pyg-p">(</span><span class="pyg-nb">unless</span> <span class="pyg-p">(</span><span class="pyg-nb">&lt;</span> <span class="pyg-p">(</span><span class="pyg-nv">current-column</span><span class="pyg-p">)</span> <span class="pyg-o">,</span><span class="pyg-nv">col</span><span class="pyg-p">)</span> <span class="pyg-p">(</span><span class="pyg-nv">forward-line</span> <span class="pyg-mi">1</span><span class="pyg-p">))</span>

               <span class="pyg-c1">;; Again, don&#39;t go backward.  Try to move to correct column.</span>
               <span class="pyg-p">(</span><span class="pyg-nb">when</span> <span class="pyg-p">(</span><span class="pyg-nb">&lt;</span> <span class="pyg-p">(</span><span class="pyg-nv">current-column</span><span class="pyg-p">)</span> <span class="pyg-o">,</span><span class="pyg-nv">col</span><span class="pyg-p">)</span> <span class="pyg-p">(</span><span class="pyg-nv">move-to-column</span> <span class="pyg-o">,</span><span class="pyg-nv">col</span><span class="pyg-p">))</span>

               <span class="pyg-c1">;; If not at target column, try to move to it.</span>
               <span class="pyg-p">(</span><span class="pyg-nv">while</span> <span class="pyg-p">(</span><span class="pyg-nb">and</span> <span class="pyg-p">(</span><span class="pyg-nb">&lt;</span> <span class="pyg-p">(</span><span class="pyg-nv">current-column</span><span class="pyg-p">)</span> <span class="pyg-o">,</span><span class="pyg-nv">col</span><span class="pyg-p">)</span> <span class="pyg-p">(</span><span class="pyg-nb">&lt;</span> <span class="pyg-p">(</span><span class="pyg-nv">point</span><span class="pyg-p">)</span> <span class="pyg-nv">end</span><span class="pyg-p">)</span>
                           <span class="pyg-p">(</span><span class="pyg-nb">=</span> <span class="pyg-mi">0</span> <span class="pyg-p">(</span><span class="pyg-nb">+</span> <span class="pyg-p">(</span><span class="pyg-nv">forward-line</span> <span class="pyg-mi">1</span><span class="pyg-p">)</span> <span class="pyg-p">(</span><span class="pyg-nv">current-column</span><span class="pyg-p">))))</span> <span class="pyg-c1">; Should be bol.</span>
                 <span class="pyg-p">(</span><span class="pyg-nv">move-to-column</span> <span class="pyg-o">,</span><span class="pyg-nv">col</span><span class="pyg-p">))</span>

               <span class="pyg-c1">;; If at target column, not past end, and not prior to start,</span>
               <span class="pyg-c1">;; then set match data and return t.  Otherwise go to start</span>
               <span class="pyg-c1">;; and return nil.</span>
               <span class="pyg-p">(</span><span class="pyg-k">if</span> <span class="pyg-p">(</span><span class="pyg-nb">and</span> <span class="pyg-p">(</span><span class="pyg-nb">=</span> <span class="pyg-o">,</span><span class="pyg-nv">col</span> <span class="pyg-p">(</span><span class="pyg-nv">current-column</span><span class="pyg-p">))</span> <span class="pyg-p">(</span><span class="pyg-nb">&lt;=</span> <span class="pyg-p">(</span><span class="pyg-nv">point</span><span class="pyg-p">)</span> <span class="pyg-nv">end</span><span class="pyg-p">)</span> <span class="pyg-p">(</span><span class="pyg-nb">&gt;</span> <span class="pyg-p">(</span><span class="pyg-nv">point</span><span class="pyg-p">)</span> <span class="pyg-nv">start</span><span class="pyg-p">))</span>
                   <span class="pyg-p">(</span><span class="pyg-k">progn</span> <span class="pyg-p">(</span><span class="pyg-nv">set-match-data</span> <span class="pyg-p">(</span><span class="pyg-nb">list</span> <span class="pyg-p">(</span><span class="pyg-nb">1-</span> <span class="pyg-p">(</span><span class="pyg-nv">point</span><span class="pyg-p">))</span> <span class="pyg-p">(</span><span class="pyg-nv">point</span><span class="pyg-p">)))</span>
                          <span class="pyg-no">t</span><span class="pyg-p">)</span>            <span class="pyg-c1">; Return t.</span>
                 <span class="pyg-p">(</span><span class="pyg-nv">goto-char</span> <span class="pyg-nv">start</span><span class="pyg-p">)</span>
                 <span class="pyg-no">nil</span><span class="pyg-p">))))</span>                <span class="pyg-c1">; Return nil.</span>
    <span class="pyg-nv">fn-symb</span><span class="pyg-p">))</span>

<span class="pyg-p">(</span><span class="pyg-nb">defun</span> <span class="pyg-nv">column-marker-internal</span> <span class="pyg-p">(</span><span class="pyg-nv">sym</span> <span class="pyg-nv">col</span> <span class="pyg-k">&amp;optional</span> <span class="pyg-nv">face</span><span class="pyg-p">)</span>
  <span class="pyg-s">&quot;SYM is the symbol for holding the column marker context.</span>
<span class="pyg-s">COL is the column in which a marker should be set.</span>
<span class="pyg-s">Supplying nil or 0 for COL turns off the marker.</span>
<span class="pyg-s">FACE is the face to use.  If nil, then face `column-marker-1&#39; is used.&quot;</span>
  <span class="pyg-p">(</span><span class="pyg-k">setq</span> <span class="pyg-nv">face</span> <span class="pyg-p">(</span><span class="pyg-nb">or</span> <span class="pyg-nv">face</span> <span class="pyg-ss">&#39;column-marker-1</span><span class="pyg-p">))</span>
  <span class="pyg-p">(</span><span class="pyg-nb">when</span> <span class="pyg-p">(</span><span class="pyg-nb">symbol-value</span> <span class="pyg-nv">sym</span><span class="pyg-p">)</span>   <span class="pyg-c1">; Remove any previously set column marker</span>
    <span class="pyg-p">(</span><span class="pyg-nv">font-lock-remove-keywords</span> <span class="pyg-no">nil</span> <span class="pyg-p">(</span><span class="pyg-nb">symbol-value</span> <span class="pyg-nv">sym</span><span class="pyg-p">))</span>
    <span class="pyg-p">(</span><span class="pyg-nb">set</span> <span class="pyg-nv">sym</span> <span class="pyg-no">nil</span><span class="pyg-p">))</span>
  <span class="pyg-p">(</span><span class="pyg-nb">when</span> <span class="pyg-p">(</span><span class="pyg-nb">or</span> <span class="pyg-p">(</span><span class="pyg-nb">listp</span> <span class="pyg-nv">col</span><span class="pyg-p">)</span> <span class="pyg-p">(</span><span class="pyg-nb">&lt;</span> <span class="pyg-nv">col</span> <span class="pyg-mi">0</span><span class="pyg-p">))</span> <span class="pyg-p">(</span><span class="pyg-k">setq</span> <span class="pyg-nv">col</span> <span class="pyg-no">nil</span><span class="pyg-p">))</span> <span class="pyg-c1">; Allow nonsense stuff to turn off the marker</span>
  <span class="pyg-p">(</span><span class="pyg-nb">when</span> <span class="pyg-nv">col</span>                             <span class="pyg-c1">; Generate a new column marker</span>
    <span class="pyg-p">(</span><span class="pyg-nb">set</span> <span class="pyg-nv">sym</span> <span class="pyg-o">`</span><span class="pyg-p">((</span><span class="pyg-o">,</span><span class="pyg-p">(</span><span class="pyg-nv">column-marker-find</span> <span class="pyg-nv">col</span><span class="pyg-p">)</span> <span class="pyg-p">(</span><span class="pyg-mi">0</span> <span class="pyg-ss">&#39;,face</span> <span class="pyg-nv">prepend</span> <span class="pyg-no">t</span><span class="pyg-p">))))</span>
    <span class="pyg-p">(</span><span class="pyg-nv">font-lock-add-keywords</span> <span class="pyg-no">nil</span> <span class="pyg-p">(</span><span class="pyg-nb">symbol-value</span> <span class="pyg-nv">sym</span><span class="pyg-p">)</span> <span class="pyg-no">t</span><span class="pyg-p">))</span>
  <span class="pyg-p">(</span><span class="pyg-nv">font-lock-fontify-buffer</span><span class="pyg-p">))</span>

<span class="pyg-c1">;; If you need more markers you can create your own similarly.</span>
<span class="pyg-c1">;; All markers can be in use at once, and each is buffer-local,</span>
<span class="pyg-c1">;; so there is no good reason to define more unless you need more</span>
<span class="pyg-c1">;; markers in a single buffer.</span>
<span class="pyg-p">(</span><span class="pyg-nv">column-marker-create</span> <span class="pyg-nv">column-marker-1</span> <span class="pyg-nv">column-marker-1-face</span><span class="pyg-p">)</span>
<span class="pyg-p">(</span><span class="pyg-nv">column-marker-create</span> <span class="pyg-nv">column-marker-2</span> <span class="pyg-nv">column-marker-2-face</span><span class="pyg-p">)</span>
<span class="pyg-p">(</span><span class="pyg-nv">column-marker-create</span> <span class="pyg-nv">column-marker-3</span> <span class="pyg-nv">column-marker-3-face</span><span class="pyg-p">)</span>

<span class="pyg-c1">;;;###autoload</span>
<span class="pyg-p">(</span><span class="pyg-nv">autoload</span> <span class="pyg-ss">&#39;column-marker-1</span> <span class="pyg-s">&quot;column-marker&quot;</span> <span class="pyg-s">&quot;Highlight a column.&quot;</span> <span class="pyg-no">t</span><span class="pyg-p">)</span>

<span class="pyg-c1">;;;;;;;;;;;;;;;;;;</span>

<span class="pyg-p">(</span><span class="pyg-nb">provide</span> <span class="pyg-ss">&#39;column-marker</span><span class="pyg-p">)</span>

<span class="pyg-c1">;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;</span>
<span class="pyg-c1">;;; column-marker.el ends here</span>
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