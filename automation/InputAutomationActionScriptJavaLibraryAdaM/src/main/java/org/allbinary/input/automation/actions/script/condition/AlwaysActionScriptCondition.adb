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


package body org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptCondition_Package is

   procedure Initialize_Fields (This : in out AlwaysActionScriptCondition'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.alwaysActionScriptConditionJPanel := null;
      This.isOn := False;
   end Initialize_Fields;


   procedure Initialize (This : in out AlwaysActionScriptCondition'Class; node_Param : access Node_Package.Node'Class) is
      node : constant Node_Access := Node_Access (node_Param);
      actionNode : Node_Access;
      nodeList : NodeList_Access;
      childNode : Node_Access;
      booleanString : Unbounded_String;
      index : Integer;
   begin
        BasicProfileActionScriptCondition_Package.Initialize (This, AlwaysActionScriptCondition_Package.NAME, node);
        Initialize_Fields (This);
        actionNode := DomSearchHelper_Package.getNode (AlwaysActionScriptConditionData_Package.NAME, node.getChildNodes);
        if (actionNode) /= (null) then
            nodeList := actionNode.getChildNodes;
            for index in 0 .. (nodeList.getLength) - 1 loop
                childNode := nodeList.item (index);
                if (childNode.getNodeName.compareTo (AlwaysActionScriptConditionData_Package.IS_ON)) = (0) then
                    booleanString := DomNodeHelper_Package.getTextNodeValue (childNode);
                    This.setIsOn (booleanString.booleanValue);
                else
                    Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Action Script Condition Unknown Node")));
                end if;
            end loop;
        else
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Action Script Condition Node Null")));
        end if;
        This.init;
   end Initialize;

   function Create (node_Param : access Node_Package.Node'Class) return AlwaysActionScriptCondition_Access is
      This : constant AlwaysActionScriptCondition_Access := new AlwaysActionScriptCondition;
   begin
      AlwaysActionScriptCondition_Package.Initialize (This.all, node_Param);
      return This;
   end Create;

   procedure Initialize (This : in out AlwaysActionScriptCondition'Class) is
   begin
        BasicProfileActionScriptCondition_Package.Initialize (This, AlwaysActionScriptCondition_Package.NAME);
        Initialize_Fields (This);
        This.init;
   end Initialize;

   function Create return AlwaysActionScriptCondition_Access is
      This : constant AlwaysActionScriptCondition_Access := new AlwaysActionScriptCondition;
   begin
      AlwaysActionScriptCondition_Package.Initialize (This.all);
      return This;
   end Create;

   procedure init (This : in out AlwaysActionScriptCondition) is
   begin
        This.alwaysActionScriptConditionJPanel := AlwaysActionScriptConditionJPanel_Package.Create (AlwaysActionScriptCondition_Access'(This'Unchecked_Access));
   end init;

   function isIsOn (This : in out AlwaysActionScriptCondition) return Boolean is
   begin
        return This.isOn;
   end isIsOn;

   procedure setIsOn (This : in out AlwaysActionScriptCondition; isOn : Boolean) is
   begin
        This.isOn := isOn;
   end setIsOn;

   procedure showDialog (This : in out AlwaysActionScriptCondition) is
   begin
        This.alwaysActionScriptConditionJPanel.getAlwaysActionJDialog.setVisible (True);
   end showDialog;

   function toHashMap (This : in out AlwaysActionScriptCondition) return HashMap_Access is
      hashMap : HashMap_Access;
   begin
        hashMap := StdUtil_Package.getInstance.createHashMap;
        hashMap.put (AlwaysActionScriptConditionData_Package.IS_ON, To_Unbounded_String (Java_Image (This.isIsOn)));
        This.logUtil.putF (To_Unbounded_String ("HashMap: ") & hashMap.toString, AlwaysActionScriptCondition_Access'(This'Unchecked_Access), To_Unbounded_String ("toHashMap()"));
        return hashMap;
   end toHashMap;

   --  throws Exception
   function toXmlNode (This : in out AlwaysActionScriptCondition; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
      node : Node_Access;
   begin
        node := BasicProfileActionScriptCondition (This).toXmlNode (document);
        node.appendChild (ModDomHelper_Package.createNodeWithValueNodes (document, AlwaysActionScriptConditionData_Package.NAME, This.toHashMap));
        return node;
   end toXmlNode;

   --  throws Exception
   function shouldProcess (This : in out AlwaysActionScriptCondition; frame : Long_Long_Integer) return Boolean is
   begin
        if This.isIsOn then
            return BasicProfileActionScriptCondition (This).shouldProcess (frame);
        end if;
        return False;
   end shouldProcess;

   procedure log (This : in out AlwaysActionScriptCondition) is
   begin
        This.logUtil.putF (To_Unbounded_String ("Is On: ") & Java_Image (This.isIsOn), AlwaysActionScriptCondition_Access'(This'Unchecked_Access), To_Unbounded_String ("log"));
   end log;

   procedure toXmlNode (This : in out AlwaysActionScriptCondition; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := AlwaysActionScriptCondition'Class (This).toXmlNode (document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

   procedure shouldProcess (This : in out AlwaysActionScriptCondition; frame : Long_Long_Integer) is
      Java_Result : constant Boolean := AlwaysActionScriptCondition'Class (This).shouldProcess (frame);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end shouldProcess;

begin
   null;
   NAME := To_Unbounded_String ("Always On/Off");

end org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptCondition_Package;


