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


package body org.allbinary.input.automation.actions.script.condition.processors.input.BasicProfileActionScriptInput_Package is

   procedure Initialize_Fields (This : in out BasicProfileActionScriptInput'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.inputRobotInterface := null;
      This.time := 0;
   end Initialize_Fields;


   procedure Initialize (This : in out BasicProfileActionScriptInput'Class; label : Unbounded_String; node : Node_Access) is
      actionNode : Node_Access;
      inputTypeString : Unbounded_String;
      timeNode : Node_Access;
      delayString : Unbounded_String;
   begin
        BasicProfileActionScriptProcessor_Package.Initialize (This, label, node);
        Initialize_Fields (This);
        This.logUtil.putF (Java_Image (This.commonStrings.START) & label, This'Unchecked_Access, This.commonStrings.CONSTRUCTOR);
        actionNode := DomSearchHelper_Package.getNode (GenericProfileActionScriptInputData_Package.TYPE_Id, node.getChildNodes);
        inputTypeString := DomNodeHelper_Package.getTextNodeValue (actionNode);
        timeNode := DomSearchHelper_Package.getNodeNoThrow (GenericProfileActionScriptInputData_Package.DELAY_Id, node.getChildNodes);
        if (timeNode) /= (null) then
            delayString := DomNodeHelper_Package.getTextNodeValue (timeNode);
            This.setTime (To_Unbounded_String (Java_Image (delayString)).intValue);
        else
            This.setTime (0);
        end if;
        This.setInputRobotInterface (InputRobotFactory_Package.getInstance.get (inputTypeString));
   end Initialize;

   function Create (label : Unbounded_String; node : Node_Access) return BasicProfileActionScriptInput_Access is
      This : constant BasicProfileActionScriptInput_Access := new BasicProfileActionScriptInput;
   begin
      BasicProfileActionScriptInput_Package.Initialize (This.all, label, node);
      return This;
   end Create;

   --  Java overloaded constructor: Ada needs the specification of this overload in the package spec
   procedure Initialize (This : in out BasicProfileActionScriptInput'Class; label : Unbounded_String) is
      inputRobotFactory : InputRobotFactory_Access;
      hashtable : ABHashtable_Access;
      set : Set_Access;
      iterator : Iterator_Access;
   begin
        BasicProfileActionScriptProcessor_Package.Initialize (This, label);
        Initialize_Fields (This);
        This.logUtil.putF (Java_Image (This.commonStrings.START) & label, This'Unchecked_Access, This.commonStrings.CONSTRUCTOR);
        inputRobotFactory := InputRobotFactory_Package.getInstance;
        hashtable := ABHashtable_Access (inputRobotFactory.get);
        set := hashtable.keySet;
        iterator := set.iterator;
        This.setInputRobotInterface (inputRobotFactory.get (Unbounded_String (iterator.next)));
        This.setTime (0);
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
        hashMap.put (GenericProfileActionScriptInputData_Package.TYPE_Id, This.getInputRobotInterface.getName);
        hashMap.put (GenericProfileActionScriptInputData_Package.DELAY_Id, To_Unbounded_String (Java_Image (This.getTime)));
        This.logUtil.putF (To_Unbounded_String ("HashMap: ") & hashMap.toString, This'Unchecked_Access, To_Unbounded_String ("toHashMap()"));
        return hashMap;
   end BasicProfileActionScriptInput_toHashMap;

   --  throws Exception
   function toXmlNode (This : in out BasicProfileActionScriptInput; document : Document_Access) return Node_Access is
      node : Node_Access;
   begin
        node := ModDomHelper_Package.createNodeWithValueNodes (document, GenericProfileActionScriptInputData_Package.NAME, This.BasicProfileActionScriptInput_toHashMap);
        return node;
   end toXmlNode;

   procedure setInputRobotInterface (This : in out BasicProfileActionScriptInput; inputRobotInterface : InputRobotInterface_Access) is
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
        stringBuffer.append (BasicProfileActionScriptProcessor (This).toString);
        stringBuffer.append (To_Unbounded_String (" Input Type: "));
        if (This.getInputRobotInterface) /= (null) then
            stringBuffer.append (This.getInputRobotInterface.getName);
        else
            stringBuffer.append (StringUtil_Package.getInstance.NULL_STRING);
        end if;
        stringBuffer.append (To_Unbounded_String (" Time: "));
        stringBuffer.appendlong (Long_Long_Integer (This.getTime));
        return stringBuffer.toString;
   end toString;

   procedure toXmlNode (This : in out BasicProfileActionScriptInput; document : Document_Access) is
      Java_Result : constant Node_Access := BasicProfileActionScriptInput'Class (This).toXmlNode (document);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

end org.allbinary.input.automation.actions.script.condition.processors.input.BasicProfileActionScriptInput_Package;


