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


package body org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileAction_Package is

   procedure Initialize_Fields (This : in out GenericProfileAction'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
      This.genericProfileActionScript := null;
      This.genericProfileActionJPanel := null;
   end Initialize_Fields;


   procedure Initialize (This : in out GenericProfileAction'Class; genericProfileActionJPanel : GenericProfileActionJPanel_Access; node : Node_Access) is
      actionNameNode : Node_Access;
   begin
      Initialize_Fields (This);
        actionNameNode := DomSearchHelper_Package.getNode (GenericProfileActionData_Package.NAME, node.getChildNodes);
        if (actionNameNode) /= (null) then
            This.name := DomNodeHelper_Package.getTextNodeValue (actionNameNode);
        else
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Profile Action Name Node Null")));
        end if;
        This.setGenericProfileActionScript (GenericProfileActionScript_Package.Create (This.genericProfileActionJPanel, node));
   end Initialize;

   function Create (genericProfileActionJPanel : GenericProfileActionJPanel_Access; node : Node_Access) return GenericProfileAction_Access is
      This : constant GenericProfileAction_Access := new GenericProfileAction;
   begin
      GenericProfileAction_Package.Initialize (This.all, genericProfileActionJPanel, node);
      return This;
   end Create;

   procedure Initialize (This : in out GenericProfileAction'Class; name : Unbounded_String) is
   begin
      Initialize_Fields (This);
        This.name := name;
        This.setGenericProfileActionScript (GenericProfileActionScript_Package.Create (This.genericProfileActionJPanel));
   end Initialize;

   function Create (name : Unbounded_String) return GenericProfileAction_Access is
      This : constant GenericProfileAction_Access := new GenericProfileAction;
   begin
      GenericProfileAction_Package.Initialize (This.all, name);
      return This;
   end Create;

   function getName (This : in out GenericProfileAction) return Unbounded_String is
   begin
        return This.name;
   end getName;

   procedure setName (This : in out GenericProfileAction; name : Unbounded_String) is
   begin
        This.name := name;
   end setName;

   function toHashMap (This : in out GenericProfileAction) return HashMap_Access is
      hashMap : HashMap_Access;
   begin
        hashMap := StdUtil_Package.getInstance.createHashMap;
        hashMap.put (GenericProfileActionData_Package.NAME, This.name);
        This.logUtil.putF (To_Unbounded_String ("HashMap: ") & hashMap.toString, This'Unchecked_Access, To_Unbounded_String ("toHashMap()"));
        return hashMap;
   end toHashMap;

   --  throws Exception
   function toXmlNode (This : in out GenericProfileAction; document : Document_Access) return Node_Access is
      node : Node_Access;
   begin
        node := ModDomHelper_Package.createNodeWithValueNodes (document, GenericProfileActionData_Package.NAME, This.toHashMap);
        node.appendChild (This.getGenericProfileActionScript.toXmlNode (document));
        return node;
   end toXmlNode;

   function getGenericProfileActionScript (This : in out GenericProfileAction) return GenericProfileActionScript_Access is
   begin
        return This.genericProfileActionScript;
   end getGenericProfileActionScript;

   procedure setGenericProfileActionScript (This : in out GenericProfileAction; genericProfileActionScript : GenericProfileActionScript_Access) is
   begin
        This.genericProfileActionScript := genericProfileActionScript;
   end setGenericProfileActionScript;

   procedure toXmlNode (This : in out GenericProfileAction; document : Document_Access) is
      Java_Result : constant Node_Access := GenericProfileAction'Class (This).toXmlNode (document);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

end org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileAction_Package;


