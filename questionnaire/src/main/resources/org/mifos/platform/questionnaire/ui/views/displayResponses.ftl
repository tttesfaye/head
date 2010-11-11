[#ftl]
[#--
* Copyright (c) 2005-2010 Grameen Foundation USA
*  All rights reserved.
*
*  Licensed under the Apache License, Version 2.0 (the "License");
*  you may not use this file except in compliance with the License.
*  You may obtain a copy of the License at
*
*      http://www.apache.org/licenses/LICENSE-2.0
*
*  Unless required by applicable law or agreed to in writing, software
*  distributed under the License is distributed on an "AS IS" BASIS,
*  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or
*  implied. See the License for the specific language governing
*  permissions and limitations under the License.
*
*  See also http://www.apache.org/licenses/LICENSE-2.0.html for an
*  explanation of the license and how it is applied.
--]
[#include "layout.ftl"]
[@clientLeftPane]
    <STYLE TYPE="text/css"><!-- @import url(pages/questionnaire/css/questionnaire.css); --></STYLE>
    <script src="pages/questionnaire/js/display.js" type="text/javascript"></script>
    <span id="page.id" title="display_question_group_responses"></span>
    [#if Session.urlMap??]
        [#assign breadcrumb = Session.urlMap/]
        [@mifos.crumbpairs breadcrumb "false"/]
    [/#if]
    <div class="content_panel">
        <h1>
            [@spring.message "questionnaire.view.question.group.responses"/]
        </h1>
        <form action="viewAndEditQuestionnaire.ftl?execution=${flowExecutionKey}" id="displayResponsesForm"
              name="displayResponsesForm" method="post">
            <input type="submit" id="_eventId_questionnaire" name="_eventId_questionnaire" value="" style="visibility:hidden"/>
                [#list questionGroupInstanceDetails as questionGroupInstanceDetail]
                <fieldset id="questionGroup.sections" class="bluetableborderFull marginTop15">
                    [#if questionGroupInstanceDetail.questionGroupDetail.active && questionGroupInstanceDetail.questionGroupDetail.editable]
                        <span class="topRight">
                            <a href="editQuestionnaire#" questionGroupInstanceDetailIndex="${questionGroupInstanceDetail_index}">[@spring.message "questionnaire.edit"/]</a>
                        </span>
                    [/#if]
                    [#list questionGroupInstanceDetail.questionGroupDetail.sectionDetails as sectionDetail]
                    <span class="paddingleft10 fontnormalbold">${sectionDetail.name}</span>
                    <ol>
                        [#list sectionDetail.questions as sectionQuestionDetail]
                        <li>
                            <label>[#if sectionQuestionDetail.mandatory]<span class="red">*</span>[/#if]
                            ${sectionQuestionDetail.text}:</label>[#if sectionQuestionDetail.multiSelectQuestion && sectionQuestionDetail.values?size > 1]
                        <ol>
                            [#list sectionQuestionDetail.values as answer]
                            <li>
                                ${answer}
                            </li>
                            [/#list]
                        </ol>
                        [#else]
                            ${sectionQuestionDetail.answer}
                        [/#if]
                        </li>
                        [/#list]
                    </ol>
                    [/#list]
                </fieldset>
                [/#list]
            <div class="buttonWidth">
                <input id="_eventId_cancel" name="_eventId_cancel" type="submit" class="buttn" value="[@spring.message "questionnaire.back.to.previous"/]"/>
            </div>
        </form>
    </div>
[/@clientLeftPane]