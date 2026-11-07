--
-- AllBinary Open License Version 1
-- Copyright (c) 2011 AllBinary
-- 
-- By agreeing to this license you and any business entity you represent are
-- legally bound to the AllBinary Open License Version 1 legal agreement.
-- 
-- You may obtain the AllBinary Open License Version 1 legal agreement from
-- AllBinary or the root directory of AllBinary's AllBinary Platform repository.
-- 
-- Created By: Travis Berthelot
--  
--  Generated Code Do Not Modify


with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.data.tree.dom.DomNodeHelper_Package; use org.allbinary.data.tree.dom.DomNodeHelper_Package;
with org.allbinary.data.tree.dom.DomSearchHelper_Package; use org.allbinary.data.tree.dom.DomSearchHelper_Package;
with org.allbinary.data.tree.dom.ModDomHelper_Package; use org.allbinary.data.tree.dom.ModDomHelper_Package;
with org.allbinary.input.KeySingletonFactory_Package; use org.allbinary.input.KeySingletonFactory_Package;
with org.allbinary.input.KeyUtil_Package; use org.allbinary.input.KeyUtil_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Document_Package_References;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.w3c.dom.Node_Package_References;
with org.w3c.dom.NodeList_Package; use org.w3c.dom.NodeList_Package;
with org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInputJPanel_Package; use org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInputJPanel_Package;
with org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInputJPanel_Package_References;
with org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInputData_Package; use org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInputData_Package;
with org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardInputAutomationProcessor_Package; use org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardInputAutomationProcessor_Package;
with org.allbinary.input.automation.actions.script.condition.processors.BasicProfileActionScriptProcessor_Package;
with org.allbinary.input.automation.actions.script.condition.CustomTreeNodeInterface_Package;
with org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInputData_Package;
with org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInputJPanel_Package;
with org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardInputAutomationProcessor_Package;
with org.allbinary.input.automation.actions.script.condition.processors.input.ProfileActionScriptInputInterface_Package;
with org.allbinary.input.automation.actions.script.ProfileActionScriptItem_Package;
with org.allbinary.input.automation.actions.script.ProfileActionScriptItemInterface_Package;
with org.allbinary.input.automation.actions.script.condition.processors.ProfileActionScriptProcessorInterface_Package;

package body org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInput_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package DomNodeHelper_Package renames Standard.org.allbinary.data.tree.dom.DomNodeHelper_Package;
   package DomSearchHelper_Package renames Standard.org.allbinary.data.tree.dom.DomSearchHelper_Package;
   package ModDomHelper_Package renames Standard.org.allbinary.data.tree.dom.ModDomHelper_Package;
   package KeySingletonFactory_Package renames Standard.org.allbinary.input.KeySingletonFactory_Package;
   package KeyUtil_Package renames Standard.org.allbinary.input.KeyUtil_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package CommonLabels_Package renames Standard.org.allbinary.string_Id.CommonLabels_Package;
   package NodeList_Package renames Standard.org.w3c.dom.NodeList_Package;
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   function "=" (Left, Right : LogUtil_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype Document_Access is org.w3c.dom.Document_Package_References.Document_Access;
   function "=" (Left, Right : Document_Access) return Boolean renames org.w3c.dom.Document_Package_References."=";
   subtype Document_Access_Array is org.w3c.dom.Document_Package_References.Document_Access_Array;
   function "=" (Left, Right : Document_Access_Array) return Boolean renames org.w3c.dom.Document_Package_References."=";
   subtype Document_Access_Array_Access is org.w3c.dom.Document_Package_References.Document_Access_Array_Access;
   function "=" (Left, Right : Document_Access_Array_Access) return Boolean renames org.w3c.dom.Document_Package_References."=";
   subtype Document_Access_Array_Access_Array is org.w3c.dom.Document_Package_References.Document_Access_Array_Access_Array;
   function "=" (Left, Right : Document_Access_Array_Access_Array) return Boolean renames org.w3c.dom.Document_Package_References."=";
   subtype Document_Access_Array_Access_Array_Access is org.w3c.dom.Document_Package_References.Document_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Document_Access_Array_Access_Array_Access) return Boolean renames org.w3c.dom.Document_Package_References."=";
   subtype Node_Access is org.w3c.dom.Node_Package_References.Node_Access;
   function "=" (Left, Right : Node_Access) return Boolean renames org.w3c.dom.Node_Package_References."=";
   subtype Node_Access_Array is org.w3c.dom.Node_Package_References.Node_Access_Array;
   function "=" (Left, Right : Node_Access_Array) return Boolean renames org.w3c.dom.Node_Package_References."=";
   subtype Node_Access_Array_Access is org.w3c.dom.Node_Package_References.Node_Access_Array_Access;
   function "=" (Left, Right : Node_Access_Array_Access) return Boolean renames org.w3c.dom.Node_Package_References."=";
   subtype Node_Access_Array_Access_Array is org.w3c.dom.Node_Package_References.Node_Access_Array_Access_Array;
   function "=" (Left, Right : Node_Access_Array_Access_Array) return Boolean renames org.w3c.dom.Node_Package_References."=";
   subtype Node_Access_Array_Access_Array_Access is org.w3c.dom.Node_Package_References.Node_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Node_Access_Array_Access_Array_Access) return Boolean renames org.w3c.dom.Node_Package_References."=";
   subtype KeyboardActionScriptInputJPanel_Access is org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInputJPanel_Package_References.KeyboardActionScriptInputJPanel_Access;
   function "=" (Left, Right : KeyboardActionScriptInputJPanel_Access) return Boolean renames org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInputJPanel_Package_References."=";
   subtype KeyboardActionScriptInputJPanel_Access_Array is org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInputJPanel_Package_References.KeyboardActionScriptInputJPanel_Access_Array;
   function "=" (Left, Right : KeyboardActionScriptInputJPanel_Access_Array) return Boolean renames org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInputJPanel_Package_References."=";
   subtype KeyboardActionScriptInputJPanel_Access_Array_Access is org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInputJPanel_Package_References.KeyboardActionScriptInputJPanel_Access_Array_Access;
   function "=" (Left, Right : KeyboardActionScriptInputJPanel_Access_Array_Access) return Boolean renames org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInputJPanel_Package_References."=";
   subtype KeyboardActionScriptInputJPanel_Access_Array_Access_Array is org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInputJPanel_Package_References.KeyboardActionScriptInputJPanel_Access_Array_Access_Array;
   function "=" (Left, Right : KeyboardActionScriptInputJPanel_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInputJPanel_Package_References."=";
   subtype KeyboardActionScriptInputJPanel_Access_Array_Access_Array_Access is org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInputJPanel_Package_References.KeyboardActionScriptInputJPanel_Access_Array_Access_Array_Access;
   function "=" (Left, Right : KeyboardActionScriptInputJPanel_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInputJPanel_Package_References."=";
   procedure Initialize_Fields (This : in out KeyboardActionScriptInput'Class) is
   begin
      null;
      This.KeyboardActionScriptInput_Field_logUtil := LogUtil_Package.getInstance;
      This.keyArray := new Integer_Array'(0 => KeySingletonFactory_Package.getInstance (KeyEvent_Package.VK_0));
      
      This.press := False;
      This.release := False;
      This.delayBetweenKeys := 0;
   end Initialize_Fields;


   procedure Initialize (This : in out KeyboardActionScriptInput'Class; node_Param : access Node_Package.Node'Class) is
      node : constant Node_Access := Node_Access (node_Param);
      actionNode : Node_Access;
      nodeList : NodeList_Access;
      vector : BasicArrayList_Access;
      childNode : Node_Access;
      value : Unbounded_String;
      time : Unbounded_String;
      keyString : Unbounded_String;
      index : Integer;
   begin
        BasicProfileActionScriptInput_Package.Initialize (This, NAME, node);
        Initialize_Fields (This);
        This.KeyboardActionScriptInput_Field_logUtil.putF (This.commonStrings.START, KeyboardActionScriptInput_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
        actionNode := DomSearchHelper_Package.getNode (KeyboardActionScriptInputData_Package.NAME, node.getChildNodes);
        if (actionNode) /= (null) then
            nodeList := actionNode.getChildNodes;
            vector := BasicArrayList_Access (BasicArrayListD_Package.Create);
            for index in 0 .. (nodeList.getLength) - 1 loop
                childNode := nodeList.item (index);
                if childNode.getNodeName.startsWith (KeyboardActionScriptInputData_Package.KEY) then
                    keyString := DomNodeHelper_Package.getTextNodeValue (childNode);
                    vector.add (Integer'Value (To_String (keyString)));
                elsif (childNode.getNodeName.compareTo (KeyboardActionScriptInputData_Package.DELAY_BETWEEN_KEYS)) = (0) then
                    time := DomNodeHelper_Package.getTextNodeValue (childNode);
                    KeyboardActionScriptInput'Class (This).setDelayBetweenKeys (Integer (Integer'Value (To_String (time))));
                elsif (childNode.getNodeName.compareTo (KeyboardActionScriptInputData_Package.PRESS)) = (0) then
                    value := DomNodeHelper_Package.getTextNodeValue (childNode);
                    KeyboardActionScriptInput'Class (This).setPress (Java_Equals_Ignore_Case (value, To_Unbounded_String ("true")));
                elsif (childNode.getNodeName.compareTo (KeyboardActionScriptInputData_Package.RELEASE)) = (0) then
                    value := DomNodeHelper_Package.getTextNodeValue (childNode);
                    KeyboardActionScriptInput'Class (This).setRelease (Java_Equals_Ignore_Case (value, To_Unbounded_String ("true")));
                else
                    Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Action Script Input Unknown Node")));
                end if;
            end loop;
            KeyboardActionScriptInput'Class (This).setKeyArray (Integer_Array_Access (vector.toArrayType (new Integer_Array'(0 .. (vector.size) - 1 => 0))));
        else
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Action Script Input Node Null")));
        end if;
        KeyboardActionScriptInput'Class (This).setAllowsChildren (False);
        if (not (KeyboardActionScriptInput'Class (This).isPress)) and then (not (KeyboardActionScriptInput'Class (This).isRelease)) then
            KeyboardActionScriptInput'Class (This).setNormal;
        end if;
        This.keyboardActionScriptInputJPanel := KeyboardActionScriptInputJPanel_Package.Create (KeyboardActionScriptInput_Access'(This'Unchecked_Access));
   end Initialize;

   function Create (node_Param : access Node_Package.Node'Class) return KeyboardActionScriptInput_Access is
      This : constant KeyboardActionScriptInput_Access := new KeyboardActionScriptInput;
   begin
      KeyboardActionScriptInput_Package.Initialize (This.all, node_Param);
      return This;
   end Create;

   procedure Initialize (This : in out KeyboardActionScriptInput'Class) is
   begin
        BasicProfileActionScriptInput_Package.Initialize (This, NAME);
        Initialize_Fields (This);
        if (not (KeyboardActionScriptInput'Class (This).isPress)) and then (not (KeyboardActionScriptInput'Class (This).isRelease)) then
            KeyboardActionScriptInput'Class (This).setNormal;
        end if;
        KeyboardActionScriptInput'Class (This).setAllowsChildren (False);
        KeyboardActionScriptInput'Class (This).setTime (120);
        This.keyboardActionScriptInputJPanel := KeyboardActionScriptInputJPanel_Package.Create (KeyboardActionScriptInput_Access'(This'Unchecked_Access));
   end Initialize;

   function Create return KeyboardActionScriptInput_Access is
      This : constant KeyboardActionScriptInput_Access := new KeyboardActionScriptInput;
   begin
      KeyboardActionScriptInput_Package.Initialize (This.all);
      return This;
   end Create;

   function getDelayBetweenKeys (This : in out KeyboardActionScriptInput) return Integer is
   begin
        return This.delayBetweenKeys;
   end getDelayBetweenKeys;

   procedure setDelayBetweenKeys (This : in out KeyboardActionScriptInput; delayBetweenKeys : Integer) is
   begin
        This.delayBetweenKeys := delayBetweenKeys;
   end setDelayBetweenKeys;

   function isPress (This : in out KeyboardActionScriptInput) return Boolean is
   begin
        return This.press;
   end isPress;

   procedure setPress (This : in out KeyboardActionScriptInput; press : Boolean) is
   begin
        This.press := press;
   end setPress;

   function isRelease (This : in out KeyboardActionScriptInput) return Boolean is
   begin
        return This.release;
   end isRelease;

   procedure setRelease (This : in out KeyboardActionScriptInput; release : Boolean) is
   begin
        This.release := release;
   end setRelease;

   function isNormal (This : in out KeyboardActionScriptInput) return Boolean is
   begin
        return (KeyboardActionScriptInput'Class (This).isRelease) and then (KeyboardActionScriptInput'Class (This).isPress);
   end isNormal;

   procedure setNormal (This : in out KeyboardActionScriptInput) is
   begin
        KeyboardActionScriptInput'Class (This).setPress (True);
        KeyboardActionScriptInput'Class (This).setRelease (True);
   end setNormal;

   function getKeyArray (This : in out KeyboardActionScriptInput) return Integer_Array_Access is
   begin
        return This.keyArray;
   end getKeyArray;

   procedure setKeyArray (This : in out KeyboardActionScriptInput; keyArray : Integer_Array_Access) is
   begin
        if (keyArray) /= (null) then
            This.KeyboardActionScriptInput_Field_logUtil.putF ((CommonLabels_Package.getInstance.START) + (keyArray'Length), KeyboardActionScriptInput_Access'(This'Unchecked_Access), To_Unbounded_String ("setKeyArray"));
        end if;
        This.keyArray := keyArray;
   end setKeyArray;

   procedure showDialog (This : in out KeyboardActionScriptInput) is
   begin
        This.keyboardActionScriptInputJPanel.getKeyActionJDialog.setVisible (True);
   end showDialog;

   function getText (This : in out KeyboardActionScriptInput) return Unbounded_String is
   begin
        return KeyboardActionScriptInput'Class (This).getText (KeyboardActionScriptInput'Class (This).getKeyArray);
   end getText;

   procedure setText (This : in out KeyboardActionScriptInput; text : Unbounded_String) is
      integerArray : Integer_Array_Access;
   begin
        This.KeyboardActionScriptInput_Field_logUtil.putF (Java_Image (CommonLabels_Package.getInstance.START) & text, KeyboardActionScriptInput_Access'(This'Unchecked_Access), To_Unbounded_String ("setText"));
        integerArray := KeyboardActionScriptInput'Class (This).integerArrayValue (text);
        KeyboardActionScriptInput'Class (This).setKeyArray (integerArray);
   end setText;

   function getText (integerArray : Integer_Array_Access) return Unbounded_String is
      index : Integer;
      stringBuffer : StringMaker_Access;
      nextInteger : Integer;
   begin
        index := 0;
        stringBuffer := StringMaker_Package.Create;
        while (index) < (integerArray'Length) loop
            nextInteger := integerArray (index);
            if KeyUtil_Package.isNormallyDisplayed (nextInteger) then
                stringBuffer.append (KeyEvent_Package.getKeyText (nextInteger));
            else
                stringBuffer.append (To_Unbounded_String ("&#") & Java_Image (nextInteger) & To_Unbounded_String (";"));
            end if;
            index := index + 1;
        end loop;
        return stringBuffer.toString;
   end getText;

   function integerArrayValue (This : in out KeyboardActionScriptInput; text : Unbounded_String) return Integer_Array_Access is
      vector : BasicArrayList_Access;
      index : Integer;
      aChar : Character;
      endIndex : Integer;
      nextCharString : Unbounded_String;
      integerArray : Integer_Array_Access;
   begin
        This.KeyboardActionScriptInput_Field_logUtil.putF (Java_Image (CommonLabels_Package.getInstance.START) & text, KeyboardActionScriptInput_Access'(This'Unchecked_Access), To_Unbounded_String ("integerArrayValue"));
        vector := BasicArrayList_Access (BasicArrayListD_Package.Create);
        index := 0;
        while (index) < (Ada.Strings.Unbounded.Length (text)) loop
            aChar := Element (text, (index) + 1);
            if (Integer (Character'Pos (aChar))) = (Integer (Character'Pos ('&'))) then
                if (Element (text, ((index) + (1)) + 1)) = ('#') then
                    endIndex := Java_Index_Of (text, Java_Image (';'), (index) + (1));
                    if (endIndex) /= (-(1)) then
                        nextCharString := Unbounded_Slice (text, ((index) + (2)) + 1, endIndex);
                        This.KeyboardActionScriptInput_Field_logUtil.putF (Java_Image (CommonLabels_Package.getInstance.NEXT) & To_Unbounded_String (" Char String: ") & nextCharString, KeyboardActionScriptInput_Access'(This'Unchecked_Access), To_Unbounded_String ("integerArrayValue"));
                        vector.add (Integer'Value (To_String (Unbounded_Slice (nextCharString, (index) + 1, Ada.Strings.Unbounded.Length (nextCharString)))));
                        index := ((index) + (Ada.Strings.Unbounded.Length (nextCharString))) + (3);
                        goto Continue_N69509;
                    end if;
                end if;
            end if;
            vector.add (KeySingletonFactory_Package.getHashtable.get (To_Unbounded_String (Java_Image (aChar))));
            index := index + 1;
            <<Continue_N69509>> null;
        end loop;
        integerArray := Integer_Array_Access (vector.toArrayType (new Integer_Array'(0 .. (vector.size) - 1 => 0)));
        return integerArray;
   end integerArrayValue;

   function toHashMap (This : in out KeyboardActionScriptInput) return HashMap_Access is
      hashMap : HashMap_Access;
      index : Integer;
   begin
        hashMap := StdUtil_Package.getInstance.createHashMap;
        for index in 0 .. (KeyboardActionScriptInput'Class (This).getKeyArray'Length) - 1 loop
            hashMap.put (Java_Box (KeyboardActionScriptInputData_Package.KEY & Java_Image (index)), Java_Box (To_Unbounded_String (Java_Image (KeyboardActionScriptInput'Class (This).getKeyArray (index)))));
        end loop;
        hashMap.put (Java_Box (KeyboardActionScriptInputData_Package.DELAY_BETWEEN_KEYS), Java_Box (To_Unbounded_String (Java_Image (KeyboardActionScriptInput'Class (This).getDelayBetweenKeys))));
        hashMap.put (Java_Box (KeyboardActionScriptInputData_Package.PRESS), Java_Box (To_Unbounded_String (Java_Image (KeyboardActionScriptInput'Class (This).isPress))));
        hashMap.put (Java_Box (KeyboardActionScriptInputData_Package.RELEASE), Java_Box (To_Unbounded_String (Java_Image (KeyboardActionScriptInput'Class (This).isRelease))));
        This.KeyboardActionScriptInput_Field_logUtil.putF (To_Unbounded_String ("HashMap: ") & hashMap.toString, KeyboardActionScriptInput_Access'(This'Unchecked_Access), To_Unbounded_String ("toHashMap()"));
        return hashMap;
   end toHashMap;

   --  throws Exception
   function toXmlNode (This : in out KeyboardActionScriptInput; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
      node : Node_Access;
   begin
        node := BasicProfileActionScriptInput_Package.BasicProfileActionScriptInput (This).toXmlNode (document);
        node.appendChild (ModDomHelper_Package.createNodeWithValueNodes (document, KeyboardActionScriptInputData_Package.NAME, KeyboardActionScriptInput'Class (This).toHashMap));
        return node;
   end toXmlNode;

   --  throws Exception
   procedure process (This : in out KeyboardActionScriptInput; frame : Long_Long_Integer) is
   begin
        KeyboardInputAutomationProcessor_Package.process (KeyboardActionScriptInput_Access'(This'Unchecked_Access));
   end process;

   procedure log (This : in out KeyboardActionScriptInput) is
   begin
        This.KeyboardActionScriptInput_Field_logUtil.putF (KeyboardActionScriptInput'Class (This).toString, KeyboardActionScriptInput_Access'(This'Unchecked_Access), To_Unbounded_String ("log"));
   end log;

   function toString (This : in out KeyboardActionScriptInput) return Unbounded_String is
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (BasicProfileActionScriptInput_Package.BasicProfileActionScriptInput (This).toString);
        stringBuffer.append (To_Unbounded_String (" Text: "));
        stringBuffer.append (KeyboardActionScriptInput'Class (This).getText);
        stringBuffer.append (To_Unbounded_String (" isPress: "));
        stringBuffer.appendboolean (KeyboardActionScriptInput'Class (This).isPress);
        stringBuffer.append (To_Unbounded_String (" isRelease: "));
        stringBuffer.appendboolean (KeyboardActionScriptInput'Class (This).isRelease);
        stringBuffer.append (To_Unbounded_String (" Between Key Delay: "));
        stringBuffer.appendint (KeyboardActionScriptInput'Class (This).getDelayBetweenKeys);
        return stringBuffer.toString;
   end toString;

   procedure getText (integerArray : Integer_Array_Access) is
      Java_Result : constant Unbounded_String := getText (integerArray => integerArray);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getText;

   procedure integerArrayValue (This : in out KeyboardActionScriptInput; text : Unbounded_String) is
      Java_Result : constant Integer_Array_Access := KeyboardActionScriptInput'Class (This).integerArrayValue (text => text);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end integerArrayValue;

   procedure toXmlNode (This : in out KeyboardActionScriptInput; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := KeyboardActionScriptInput'Class (This).toXmlNode (document_Param => document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

begin
   null;
   NAME := To_Unbounded_String ("Keyboard");

end org.allbinary.input.automation.actions.script.condition.processors.input.KeyboardActionScriptInput_Package;


