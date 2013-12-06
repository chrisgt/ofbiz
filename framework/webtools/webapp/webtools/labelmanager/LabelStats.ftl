<#--
Licensed to the Apache Software Foundation (ASF) under one
or more contributor license agreements.  See the NOTICE file
distributed with this work for additional information
regarding copyright ownership.  The ASF licenses this file
to you under the Apache License, Version 2.0 (the
"License"); you may not use this file except in compliance
with the License.  You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing,
software distributed under the License is distributed on an
"AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
KIND, either express or implied.  See the License for the
specific language governing permissions and limitations
under the License.
-->

<div class="screenlet">
  <div class="screenlet-title-bar">
    <ul>
      <#--<li class="h3">${uiLabelMap.WebtoolsLabelManagerLabelStats}</li>-->
      <li class="h3">${uiLabelMap.WebtoolsLabelManagerLabelStats}</li>
    </ul>
    <br class="clear"/>
  </div>
  <div class="screenlet-body">
    <table class="basic-table" cellspacing="0">
      <tr>
        <td class="label">${uiLabelMap.WebtoolsLabelManagerNumLabels}</td>
        <td>${labelsCount?if_exists}</td>
      </tr>
      <tr>
        <td class="label">${uiLabelMap.WebtoolsLabelManagerNumLangs}</td>
        <td>${langsCount?if_exists}</td>
      </tr>
    </table>
  </div>
    <table class="basic-table" cellspacing="0">
      <#assign entries = localesCount.entrySet()>
      <#list entries as entry>
        <tr>
          <td class="label">${entry.getKey()}</td>
          <#assign count = entry.getValue()>
          <#assign percent = count / labelsCount * 100>
          <td>${percent?string("0.##")} % (${count}/${labelsCount})</td>
        </tr>
      </#list>
    </table>
</div>
