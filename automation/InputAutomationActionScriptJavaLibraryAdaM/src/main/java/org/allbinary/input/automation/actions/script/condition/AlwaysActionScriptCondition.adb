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
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Document_Package_References;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.w3c.dom.Node_Package_References;
with org.w3c.dom.NodeList_Package; use org.w3c.dom.NodeList_Package;
with org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptConditionJPanel_Package; use org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptConditionJPanel_Package;
with org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptConditionJPanel_Package_References;
with org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptConditionData_Package; use org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptConditionData_Package;
with org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptConditionData_Package;
with org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptConditionJPanel_Package;
with org.allbinary.input.automation.actions.script.condition.CustomTreeNodeInterface_Package;
with org.allbinary.input.automation.actions.script.condition.ProfileActionScriptConditionInterface_Package;
with org.allbinary.input.automation.actions.script.ProfileActionScriptItem_Package;
with org.allbinary.input.automation.actions.script.ProfileActionScriptItemInterface_Package;
with org.allbinary.input.automation.actions.script.ProfileActionScriptNodeInterface_Package;
with org.allbinary.input.automation.actions.script.condition.processors.ProfileActionScriptProcessorInterface_Package;

package body org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptCondition_Package is

   package DomNodeHelper_Package renames Standard.org.allbinary.data.tree.dom.DomNodeHelper_Package;
   package DomSearchHelper_Package renames Standard.org.allbinary.data.tree.dom.DomSearchHelper_Package;
   package ModDomHelper_Package renames Standard.org.allbinary.data.tree.dom.ModDomHelper_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
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
   subtype AlwaysActionScriptConditionJPanel_Access is org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptConditionJPanel_Package_References.AlwaysActionScriptConditionJPanel_Access;
   function "=" (Left, Right : AlwaysActionScriptConditionJPanel_Access) return Boolean renames org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptConditionJPanel_Package_References."=";
   subtype AlwaysActionScriptConditionJPanel_Access_Array is org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptConditionJPanel_Package_References.AlwaysActionScriptConditionJPanel_Access_Array;
   function "=" (Left, Right : AlwaysActionScriptConditionJPanel_Access_Array) return Boolean renames org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptConditionJPanel_Package_References."=";
   subtype AlwaysActionScriptConditionJPanel_Access_Array_Access is org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptConditionJPanel_Package_References.AlwaysActionScriptConditionJPanel_Access_Array_Access;
   function "=" (Left, Right : AlwaysActionScriptConditionJPanel_Access_Array_Access) return Boolean renames org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptConditionJPanel_Package_References."=";
   subtype AlwaysActionScriptConditionJPanel_Access_Array_Access_Array is org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptConditionJPanel_Package_References.AlwaysActionScriptConditionJPanel_Access_Array_Access_Array;
   function "=" (Left, Right : AlwaysActionScriptConditionJPanel_Access_Array_Access_Array) return Boolean renames org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptConditionJPanel_Package_References."=";
   subtype AlwaysActionScriptConditionJPanel_Access_Array_Access_Array_Access is org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptConditionJPanel_Package_References.AlwaysActionScriptConditionJPanel_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AlwaysActionScriptConditionJPanel_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptConditionJPanel_Package_References."=";
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
                    AlwaysActionScriptCondition'Class (This).setIsOn (booleanString.booleanValue);
                else
                    Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Action Script Condition Unknown Node")));
                end if;
            end loop;
        else
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Action Script Condition Node Null")));
        end if;
        AlwaysActionScriptCondition'Class (This).init;
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
        AlwaysActionScriptCondition'Class (This).init;
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
        hashMap.put (AlwaysActionScriptConditionData_Package.IS_ON, Java_Box (To_Unbounded_String (Java_Image (AlwaysActionScriptCondition'Class (This).isIsOn))));
        This.logUtil.putF (To_Unbounded_String ("HashMap: ") & hashMap.toString, AlwaysActionScriptCondition_Access'(This'Unchecked_Access), To_Unbounded_String ("toHashMap()"));
        return hashMap;
   end toHashMap;

   --  throws Exception
   function toXmlNode (This : in out AlwaysActionScriptCondition; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
      node : Node_Access;
   begin
        node := BasicProfileActionScriptCondition_Package.BasicProfileActionScriptCondition (This).toXmlNode (document);
        node.appendChild (ModDomHelper_Package.createNodeWithValueNodes (document, AlwaysActionScriptConditionData_Package.NAME, AlwaysActionScriptCondition'Class (This).toHashMap));
        return node;
   end toXmlNode;

   --  throws Exception
   function shouldProcess (This : in out AlwaysActionScriptCondition; frame : Long_Long_Integer) return Boolean is
   begin
        if AlwaysActionScriptCondition'Class (This).isIsOn then
            return BasicProfileActionScriptCondition_Package.BasicProfileActionScriptCondition (This).shouldProcess (frame);
        end if;
        return False;
   end shouldProcess;

   procedure log (This : in out AlwaysActionScriptCondition) is
   begin
        This.logUtil.putF (To_Unbounded_String ("Is On: ") & Java_Image (AlwaysActionScriptCondition'Class (This).isIsOn), AlwaysActionScriptCondition_Access'(This'Unchecked_Access), To_Unbounded_String ("log"));
   end log;

   procedure toXmlNode (This : in out AlwaysActionScriptCondition; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := AlwaysActionScriptCondition'Class (This).toXmlNode (document_Param => document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

   procedure shouldProcess (This : in out AlwaysActionScriptCondition; frame : Long_Long_Integer) is
      Java_Result : constant Boolean := AlwaysActionScriptCondition'Class (This).shouldProcess (frame => frame);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end shouldProcess;

begin
   null;
   NAME := To_Unbounded_String ("Always On/Off");

end org.allbinary.input.automation.actions.script.condition.AlwaysActionScriptCondition_Package;


