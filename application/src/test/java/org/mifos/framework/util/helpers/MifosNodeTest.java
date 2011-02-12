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

package org.mifos.framework.util.helpers;

import java.util.HashMap;

import junit.framework.Assert;
import junit.framework.TestCase;

public class MifosNodeTest extends TestCase {

    public void testMifosNode() {
        HashMap<String, String> nodes = new HashMap<String, String>();
        nodes.put("key", "value");
        MifosNode mifosNode = new MifosNode(nodes);
       Assert.assertEquals("value", mifosNode.getElement("key"));
       Assert.assertEquals("org.mifos.framework.util.helpers.Node", mifosNode.toString());
        mifosNode = new MifosNode();
        mifosNode.setNodes(nodes);
       Assert.assertEquals(1, mifosNode.getNodes().size());
    }
}
