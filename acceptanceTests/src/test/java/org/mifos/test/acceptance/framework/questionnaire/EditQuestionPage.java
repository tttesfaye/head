/*
 * Copyright Grameen Foundation USA
 * All rights reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or
 * implied. See the License for the specific language governing
 * permissions and limitations under the License.
 *
 * See also http://www.apache.org/licenses/LICENSE-2.0.html for an
 * explanation of the license and how it is applied.
 */
package org.mifos.test.acceptance.framework.questionnaire;

import com.thoughtworks.selenium.Selenium;

public class EditQuestionPage extends CreateQuestionRootPage {

    public EditQuestionPage(Selenium selenium) {
        super(selenium);
        verifyPage("editQuestion");
    }

    public QuestionDetailPage activate() {
        selenium.click("id=currentQuestion.active0");
        selenium.click("id=_eventId_update");
        waitForPageToLoad();
        return new QuestionDetailPage(selenium);
    }

    public QuestionDetailPage deactivate() {
        selenium.click("id=currentQuestion.active1");
        selenium.click("id=_eventId_update");
        waitForPageToLoad();
        return new QuestionDetailPage(selenium);
    }

    public QuestionDetailPage update(CreateQuestionParameters createQuestionParameters) {
        enterDetails(createQuestionParameters);
        selenium.click("id=_eventId_update");
        waitForPageToLoad();
        return new QuestionDetailPage(selenium);
    }
}
