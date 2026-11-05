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
with org.allbinary.data.tree.dom.DomNodeHelper_Package; use org.allbinary.data.tree.dom.DomNodeHelper_Package;
with org.allbinary.data.tree.dom.DomSearchHelper_Package; use org.allbinary.data.tree.dom.DomSearchHelper_Package;
with org.allbinary.data.tree.dom.ModDomHelper_Package; use org.allbinary.data.tree.dom.ModDomHelper_Package;
with org.allbinary.input.automation.actions.script.condition.processors.BasicProfileActionScriptProcessor_Package; use org.allbinary.input.automation.actions.script.condition.processors.BasicProfileActionScriptProcessor_Package;
with org.allbinary.input.automation.robot.InputRobotFactory_Package; use org.allbinary.input.automation.robot.InputRobotFactory_Package;
with org.allbinary.input.automation.robot.InputRobotInterface_Package; use org.allbinary.input.automation.robot.InputRobotInterface_Package;
with org.allbinary.input.automation.robot.InputRobotInterface_Package_References;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Document_Package_References;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.w3c.dom.Node_Package_References;
with org.allbinary.input.automation.actions.script.condition.processors.input.GenericProfileActionScriptInputData_Package; use org.allbinary.input.automation.actions.script.condition.processors.input.GenericProfileActionScriptInputData_Package;
with org.allbinary.input.automation.actions.script.condition.CustomTreeNodeInterface_Package;
with org.allbinary.input.automation.actions.script.condition.processors.input.GenericProfileActionScriptInputData_Package;
with org.allbinary.input.automation.actions.script.ProfileActionScriptItem_Package;
with org.allbinary.input.automation.actions.script.ProfileActionScriptItemInterface_Package;
with org.allbinary.input.automation.actions.script.condition.processors.ProfileActionScriptProcessorInterface_Package;

package body org.allbinary.input.automation.actions.script.condition.processors.input.BasicProfileActionScriptInput_Package is

   package DomNodeHelper_Package renames Standard.org.allbinary.data.tree.dom.DomNodeHelper_Package;
   package DomSearchHelper_Package renames Standard.org.allbinary.data.tree.dom.DomSearchHelper_Package;
   package ModDomHelper_Package renames Standard.org.allbinary.data.tree.dom.ModDomHelper_Package;
   package InputRobotFactory_Package renames Standard.org.allbinary.input.automation.robot.InputRobotFactory_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package ABHashtable_Package renames Standard.org.allbinary.util.ABHashtable_Package;
   subtype InputRobotInterface_Access is org.allbinary.input.automation.robot.InputRobotInterface_Package_References.InputRobotInterface_Access;
   function "=" (Left, Right : InputRobotInterface_Access) return Boolean renames org.allbinary.input.automation.robot.InputRobotInterface_Package_References."=";
   subtype InputRobotInterface_Access_Array is org.allbinary.input.automation.robot.InputRobotInterface_Package_References.InputRobotInterface_Access_Array;
   function "=" (Left, Right : InputRobotInterface_Access_Array) return Boolean renames org.allbinary.input.automation.robot.InputRobotInterface_Package_References."=";
   subtype InputRobotInterface_Access_Array_Access is org.allbinary.input.automation.robot.InputRobotInterface_Package_References.InputRobotInterface_Access_Array_Access;
   function "=" (Left, Right : InputRobotInterface_Access_Array_Access) return Boolean renames org.allbinary.input.automation.robot.InputRobotInterface_Package_References."=";
   subtype InputRobotInterface_Access_Array_Access_Array is org.allbinary.input.automation.robot.InputRobotInterface_Package_References.InputRobotInterface_Access_Array_Access_Array;
   function "=" (Left, Right : InputRobotInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.robot.InputRobotInterface_Package_References."=";
   subtype InputRobotInterface_Access_Array_Access_Array_Access is org.allbinary.input.automation.robot.InputRobotInterface_Package_References.InputRobotInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : InputRobotInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.robot.InputRobotInterface_Package_References."=";
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
   procedure Initialize_Fields (This : in out BasicProfileActionScriptInput'Class) is
   begin
      null;
      This.BasicProfileActionScriptInput_Field_logUtil := LogUtil_Package.getInstance;
      This.inputRobotInterface := null;
      This.time := 0;
   end Initialize_Fields;


   procedure Initialize (This : in out BasicProfileActionScriptInput'Class; label : Unbounded_String; node_Param : access Node_Package.Node'Class) is
      node : constant Node_Access := Node_Access (node_Param);
      actionNode : Node_Access;
      inputTypeString : Unbounded_String;
      timeNode : Node_Access;
      delayString : Unbounded_String;
   begin
        BasicProfileActionScriptProcessor_Package.Initialize (This, label, node);
        Initialize_Fields (This);
        This.BasicProfileActionScriptInput_Field_logUtil.putF (Java_Image (This.commonStrings.START) & label, BasicProfileActionScriptInput_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
        actionNode := DomSearchHelper_Package.getNode (GenericProfileActionScriptInputData_Package.TYPE_Id, node.getChildNodes);
        inputTypeString := DomNodeHelper_Package.getTextNodeValue (actionNode);
        timeNode := DomSearchHelper_Package.getNodeNoThrow (GenericProfileActionScriptInputData_Package.DELAY_Id, node.getChildNodes);
        if (timeNode) /= (null) then
            delayString := DomNodeHelper_Package.getTextNodeValue (timeNode);
            BasicProfileActionScriptInput'Class (This).setTime (To_Unbounded_String (Java_Image (delayString)).intValue);
        else
            BasicProfileActionScriptInput'Class (This).setTime (0);
        end if;
        BasicProfileActionScriptInput'Class (This).setInputRobotInterface (InputRobotFactory_Package.getInstance.get (inputTypeString));
   end Initialize;

   function Create (label : Unbounded_String; node_Param : access Node_Package.Node'Class) return BasicProfileActionScriptInput_Access is
      This : constant BasicProfileActionScriptInput_Access := new BasicProfileActionScriptInput;
   begin
      BasicProfileActionScriptInput_Package.Initialize (This.all, label, node_Param);
      return This;
   end Create;

   procedure Initialize (This : in out BasicProfileActionScriptInput'Class; label : Unbounded_String) is
      inputRobotFactory : InputRobotFactory_Access;
      hashtable : ABHashtable_Access;
      set : Java_Object_Access;
      iterator : Iterator_Access;
   begin
        BasicProfileActionScriptProcessor_Package.Initialize (This, label);
        Initialize_Fields (This);
        This.BasicProfileActionScriptInput_Field_logUtil.putF (Java_Image (This.commonStrings.START) & label, BasicProfileActionScriptInput_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
        inputRobotFactory := InputRobotFactory_Package.getInstance;
        hashtable := ABHashtable_Access (inputRobotFactory.get);
        set := hashtable.keySet;
        iterator := set.iterator;
        BasicProfileActionScriptInput'Class (This).setInputRobotInterface (inputRobotFactory.get (Java_Unbox (iterator.next)));
        BasicProfileActionScriptInput'Class (This).setTime (0);
   end Initialize;

   function Create (label : Unbounded_String) return BasicProfileActionScriptInput_Access is
      This : constant BasicProfileActionScriptInput_Access := new BasicProfileActionScriptInput;
   begin
      BasicProfileActionScriptInput_Package.Initialize (This.all, label);
      return This;
   end Create;

   function getTime (This : in out BasicProfileActionScriptInput) return Integer is
   begin
        return This.time;
   end getTime;

   procedure setTime (This : in out BasicProfileActionScriptInput; time : Integer) is
   begin
        This.time := time;
   end setTime;

   function BasicProfileActionScriptInput_toHashMap (This : in out BasicProfileActionScriptInput) return HashMap_Access is
      hashMap : HashMap_Access;
   begin
        hashMap := StdUtil_Package.getInstance.createHashMap;
        hashMap.put (Java_Box (GenericProfileActionScriptInputData_Package.TYPE_Id), Java_Box (BasicProfileActionScriptInput'Class (This).getInputRobotInterface.getName));
        hashMap.put (Java_Box (GenericProfileActionScriptInputData_Package.DELAY_Id), Java_Box (To_Unbounded_String (Java_Image (BasicProfileActionScriptInput'Class (This).getTime))));
        This.BasicProfileActionScriptInput_Field_logUtil.putF (To_Unbounded_String ("HashMap: ") & hashMap.toString, BasicProfileActionScriptInput_Access'(This'Unchecked_Access), To_Unbounded_String ("toHashMap()"));
        return hashMap;
   end BasicProfileActionScriptInput_toHashMap;

   --  throws Exception
   function toXmlNode (This : in out BasicProfileActionScriptInput; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
      node : Node_Access;
   begin
        node := ModDomHelper_Package.createNodeWithValueNodes (document, GenericProfileActionScriptInputData_Package.NAME, BasicProfileActionScriptInput'Class (This).BasicProfileActionScriptInput_toHashMap);
        return node;
   end toXmlNode;

   procedure setInputRobotInterface (This : in out BasicProfileActionScriptInput; inputRobotInterface_Param : access InputRobotInterface_Package.InputRobotInterface'Class) is
      inputRobotInterface : constant InputRobotInterface_Access := InputRobotInterface_Access (inputRobotInterface_Param);
   begin
        This.inputRobotInterface := inputRobotInterface;
   end setInputRobotInterface;

   function getInputRobotInterface (This : in out BasicProfileActionScriptInput) return InputRobotInterface_Access is
   begin
        return This.inputRobotInterface;
   end getInputRobotInterface;

   function toString (This : in out BasicProfileActionScriptInput) return Unbounded_String is
      stringBuffer : StringMaker_Access;
   begin
        stringBuffer := StringMaker_Package.Create;
        stringBuffer.append (BasicProfileActionScriptProcessor_Package.BasicProfileActionScriptProcessor (This).toString);
        stringBuffer.append (To_Unbounded_String (" Input Type: "));
        if (BasicProfileActionScriptInput'Class (This).getInputRobotInterface) /= (null) then
            stringBuffer.append (BasicProfileActionScriptInput'Class (This).getInputRobotInterface.getName);
        else
            stringBuffer.append (StringUtil_Package.getInstance.NULL_STRING);
        end if;
        stringBuffer.append (To_Unbounded_String (" Time: "));
        stringBuffer.appendlong (Long_Long_Integer (BasicProfileActionScriptInput'Class (This).getTime));
        return stringBuffer.toString;
   end toString;

   procedure toXmlNode (This : in out BasicProfileActionScriptInput; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := BasicProfileActionScriptInput'Class (This).toXmlNode (document_Param => document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

end org.allbinary.input.automation.actions.script.condition.processors.input.BasicProfileActionScriptInput_Package;


