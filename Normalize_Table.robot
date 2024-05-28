<?xml version="1.0" encoding="UTF-8" ?>
<object class="Robot" serializationversion="2">
  <prologue>
    <saved-by-versions>
      <version>9.7.6</version>
      <version>11.5.0.1</version>
    </saved-by-versions>
    <file-type>robot</file-type>
    <comment/>
    <icon/>
    <tags/>
    <typed-variables/>
    <parameters/>
    <requires-simple-input>false</requires-simple-input>
    <return-variables/>
    <store-in-database-variables/>
    <referenced-types/>
    <triggers/>
    <sub-robots/>
    <device-mappings/>
    <referenced-snippets/>
    <browser-engine>WEBKIT</browser-engine>
  </prologue>
  <property name="variables" class="Variables"/>
  <property name="proxyServerConfiguration" class="ProxyServerConfiguration" serializationversion="0"/>
  <property name="httpClientType" class="HttpClientType">
    <property name="enum-name" class="String">WEBKIT</property>
  </property>
  <property name="ntlmAuthentication" class="NTLMAuthenticationType">
    <property name="enum-name" class="String">STANDARD</property>
  </property>
  <property name="usePre96DefaultWaiting" class="Boolean">false</property>
  <property name="maxWaitForTimeout" class="Integer">10000</property>
  <property name="waitRealTime" class="Boolean">false</property>
  <property name="privateHTTPCacheEnabled" class="Boolean">true</property>
  <property name="privateHTTPCacheSize" class="Integer">2048</property>
  <property name="comment">
    <null/>
  </property>
  <property name="tags" class="RobotTagList"/>
  <property name="humanProcessingTime">
    <null/>
  </property>
  <property name="executionMode" class="ExecutionMode">
    <property name="enum-name" class="String">DIRECT</property>
  </property>
  <property name="avoidExternalReExecution" class="Boolean">false</property>
  <property name="transitionGraph" class="Body">
    <blockBeginStep class="BlockBeginStep" id="0"/>
    <steps class="ArrayList">
      <object class="Transition" serializationversion="3" id="1">
        <property name="name" class="String">README</property>
        <property name="stepAction" class="DoNothing"/>
        <property name="elementFinders" class="ElementFinders" id="2"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment" class="String">Normalize Table 利用の条件
＜概要＞
rowspan と colspan が使用されている場所に、新たなセルを導入することで表を正常化します。
( colSpan/rowSpan が、CSS ではなくHTML のソースの一部である場合に動作します)

＜前提＞
・Webページが表示されていること。
・Webページ上のTagを指定すること。

＜改訂履歴＞
・2017.08.16 version 9.7_0</property>
        <property name="enabled" class="Boolean">true</property>
        <property name="changedProperties" class="java.util.HashSet">
          <element class="String" id="3">name</element>
        </property>
      </object>
      <object class="Transition" serializationversion="3" id="4">
        <property name="name" class="String">Load Sample Page</property>
        <property name="stepAction" class="LoadPage2">
          <property name="urlProvider" class="kapow.robot.plugin.common.stepaction.urlprovider2.ValueURLProvider2">
            <property name="URL" class="String">library://others/web/index.html</property>
          </property>
          <property name="browserConfigurationSpecification" class="BrowserConfigurationSpecificationWebKit" serializationversion="27">
            <property name="SSLUsage" class="com.kapowtech.net.ssl.SSLUsage" id="5">
              <property name="enum-name" class="String">TLS_Insecure</property>
            </property>
            <property name="ancestorProvider" class="BrowserConfigurationSpecificationAncestorProviderForStep"/>
          </property>
        </property>
        <property name="elementFinders" idref="2"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment">
          <null/>
        </property>
        <property name="enabled" class="Boolean">true</property>
        <property name="changedProperties" class="java.util.HashSet">
          <element idref="3"/>
        </property>
      </object>
      <object class="Transition" serializationversion="3" id="6">
        <property name="name" class="String">Normalize Table</property>
        <property name="stepAction" class="kapow.robot.plugin.common.stepaction.NormalizeTableStepAction"/>
        <property name="elementFinders" class="ElementFinders">
          <object class="DefaultNamedElementAwareDOMElementFinder" serializationversion="4">
            <property name="nodePath" class="kapow.robot.plugin.common.support.expression.stringexpr.ValueStringExpression">
              <property name="value" class="String">.*.div.div.div.div.table</property>
            </property>
            <property name="attributeName" class="String">class</property>
            <property name="attributeValue" class="kapow.robot.plugin.common.support.predicate.unary.string.FixedStringPredicate">
              <property name="text" class="String">data</property>
            </property>
          </object>
        </property>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment" class="String">&lt;設定内容&gt;
Finders: 修正するtableタグを指定</property>
        <property name="enabled" class="Boolean">true</property>
        <property name="changedProperties" class="java.util.HashSet"/>
      </object>
      <object class="Transition" serializationversion="3" id="7">
        <property name="name" class="String">→表を修正します</property>
        <property name="stepAction" class="DoNothing"/>
        <property name="elementFinders" idref="2"/>
        <property name="errorHandler" class="ErrorHandler" serializationversion="0"/>
        <property name="comment" class="String">空港ゆうパックの基本運賃
１２０サイズ超欄を分割します
</property>
        <property name="enabled" class="Boolean">true</property>
        <property name="changedProperties" class="java.util.HashSet">
          <element idref="3"/>
        </property>
      </object>
      <object class="End" id="8"/>
    </steps>
    <blockEndStep class="BlockEndStep"/>
    <edges class="ArrayList">
      <object class="TransitionEdge">
        <from idref="0"/>
        <to idref="1"/>
        <name/>
        <comment/>
      </object>
      <object class="TransitionEdge">
        <from idref="1"/>
        <to idref="4"/>
        <name/>
        <comment/>
      </object>
      <object class="TransitionEdge">
        <from idref="4"/>
        <to idref="6"/>
        <name/>
        <comment/>
      </object>
      <object class="TransitionEdge">
        <from idref="6"/>
        <to idref="7"/>
        <name/>
        <comment/>
      </object>
      <object class="TransitionEdge">
        <from idref="7"/>
        <to idref="8"/>
        <name/>
        <comment/>
      </object>
    </edges>
  </property>
  <property name="browserConfigurationSpecification" class="BrowserConfigurationSpecificationWebKit" serializationversion="27">
    <property name="SSLUsage" idref="5"/>
  </property>
</object>
