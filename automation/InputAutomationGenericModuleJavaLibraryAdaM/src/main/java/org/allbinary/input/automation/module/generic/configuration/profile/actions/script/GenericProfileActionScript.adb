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


package body org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.script.GenericProfileActionScript_Package is

   procedure Initialize_Fields (This : in out GenericProfileActionScript'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      
      This.profileActionConditionInterfaceVector := null;
   end Initialize_Fields;


   procedure Initialize (This : in out GenericProfileActionScript'Class; genericProfileActionJPanel_Param : access GenericProfileActionJPanel_Package.GenericProfileActionJPanel'Class; node_Param : access Node_Package.Node'Class) is
      genericProfileActionJPanel : constant GenericProfileActionJPanel_Access := GenericProfileActionJPanel_Access (genericProfileActionJPanel_Param);
      node : constant Node_Access := Node_Access (node_Param);
      actionScriptNode : Node_Access;
      nodeList : NodeList_Access;
      actionConditionNode : Node_Access;
      index : Integer;
   begin
        DefaultMutableTreeNode_Package.Initialize (This, NAME);
        Initialize_Fields (This);
        This.genericProfileActionJPanel := genericProfileActionJPanel;
        GenericProfileActionScript'Class (This).setProfileActionConditionInterfaceVector (BasicArrayListD_Package.Create);
        actionScriptNode := DomSearchHelper_Package.getNode (GenericProfileActionData_Package.SCRIPT, node.getChildNodes);
        if (actionScriptNode) /= (null) then
            nodeList := actionScriptNode.getChildNodes;
            for index in 0 .. (nodeList.getLength) - 1 loop
                actionConditionNode := nodeList.item (index);
                if (actionConditionNode.getNodeType) = (Node_Package.ELEMENT_NODE) then
                    GenericProfileActionScript'Class (This).addCondition (ProfileActionScriptConditionFactory_Package.getInstance (actionConditionNode));
                end if;
            end loop;
        else
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Profile Action Script Node Null")));
        end if;
   end Initialize;

   function Create (genericProfileActionJPanel_Param : access GenericProfileActionJPanel_Package.GenericProfileActionJPanel'Class; node_Param : access Node_Package.Node'Class) return GenericProfileActionScript_Access is
      This : constant GenericProfileActionScript_Access := new GenericProfileActionScript;
   begin
      GenericProfileActionScript_Package.Initialize (This.all, genericProfileActionJPanel_Param, node_Param);
      return This;
   end Create;

   procedure Initialize (This : in out GenericProfileActionScript'Class; genericProfileActionJPanel_Param : access GenericProfileActionJPanel_Package.GenericProfileActionJPanel'Class) is
      genericProfileActionJPanel : constant GenericProfileActionJPanel_Access := GenericProfileActionJPanel_Access (genericProfileActionJPanel_Param);
   begin
      DefaultMutableTreeNode_Package.Initialize (This);
      Initialize_Fields (This);
        This.genericProfileActionJPanel := genericProfileActionJPanel;
        GenericProfileActionScript'Class (This).setProfileActionConditionInterfaceVector (BasicArrayListD_Package.Create);
   end Initialize;

   function Create (genericProfileActionJPanel_Param : access GenericProfileActionJPanel_Package.GenericProfileActionJPanel'Class) return GenericProfileActionScript_Access is
      This : constant GenericProfileActionScript_Access := new GenericProfileActionScript;
   begin
      GenericProfileActionScript_Package.Initialize (This.all, genericProfileActionJPanel_Param);
      return This;
   end Create;

   procedure addCondition (This : in out GenericProfileActionScript; profileActionScriptNodeInterface_Param : access ProfileActionScriptNodeInterface_Package.ProfileActionScriptNodeInterface'Class) is
      profileActionScriptNodeInterface : constant ProfileActionScriptNodeInterface_Access := ProfileActionScriptNodeInterface_Access (profileActionScriptNodeInterface_Param);
   begin
        This.logUtil.putF (This.commonStrings.START, GenericProfileActionScript_Access'(This'Unchecked_Access), To_Unbounded_String ("addCondition"));
        GenericProfileActionScript'Class (This).getProfileActionConditionInterfaceVector.add (profileActionScriptNodeInterface);
        GenericProfileActionScript'Class (This).add (profileActionScriptNodeInterface);
   end addCondition;

   procedure removeCondition (This : in out GenericProfileActionScript; profileActionScriptNodeInterface_Param : access ProfileActionScriptNodeInterface_Package.ProfileActionScriptNodeInterface'Class) is
      profileActionScriptNodeInterface : constant ProfileActionScriptNodeInterface_Access := ProfileActionScriptNodeInterface_Access (profileActionScriptNodeInterface_Param);
   begin
        This.logUtil.putF (This.commonStrings.START, GenericProfileActionScript_Access'(This'Unchecked_Access), To_Unbounded_String ("removeCondition"));
        GenericProfileActionScript'Class (This).getProfileActionConditionInterfaceVector.remove (profileActionScriptNodeInterface);
        GenericProfileActionScript'Class (This).remove (profileActionScriptNodeInterface);
   end removeCondition;

   function toHashMap (This : in out GenericProfileActionScript) return HashMap_Access is
      hashMap : HashMap_Access;
   begin
        hashMap := StdUtil_Package.getInstance.createHashMap;
        This.logUtil.putF (To_Unbounded_String ("HashMap: ") & hashMap.toString, GenericProfileActionScript_Access'(This'Unchecked_Access), To_Unbounded_String ("toHashMap()"));
        return hashMap;
   end toHashMap;

   function getProfileActionConditionInterfaceVector (This : in out GenericProfileActionScript) return BasicArrayList_Access is
   begin
        return This.profileActionConditionInterfaceVector;
   end getProfileActionConditionInterfaceVector;

   procedure setProfileActionConditionInterfaceVector (This : in out GenericProfileActionScript; profileActionConditionInterfaceVector_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      profileActionConditionInterfaceVector : constant BasicArrayList_Access := BasicArrayList_Access (profileActionConditionInterfaceVector_Param);
   begin
        This.profileActionConditionInterfaceVector := profileActionConditionInterfaceVector;
   end setProfileActionConditionInterfaceVector;

   --  throws Exception
   function toXmlNode (This : in out GenericProfileActionScript; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
      node : Node_Access;
      vector : BasicArrayList_Access;
      size : Integer;
      profileActionConditionInterface : ProfileActionScriptConditionInterface_Access;
      index : Integer;
   begin
        node := document.createElement (GenericProfileActionData_Package.SCRIPT);
        vector := GenericProfileActionScript'Class (This).getProfileActionConditionInterfaceVector;
        size := vector.size;
        for index in 0 .. (size) - 1 loop
            profileActionConditionInterface := ProfileActionScriptConditionInterface_Access (vector.get (index));
            node.appendChild (profileActionConditionInterface.toXmlNode (document));
        end loop;
        return node;
   end toXmlNode;

   procedure toXmlNode (This : in out GenericProfileActionScript; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := GenericProfileActionScript'Class (This).toXmlNode (document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

begin
   null;
   NAME := To_Unbounded_String ("Root");

end org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.script.GenericProfileActionScript_Package;


