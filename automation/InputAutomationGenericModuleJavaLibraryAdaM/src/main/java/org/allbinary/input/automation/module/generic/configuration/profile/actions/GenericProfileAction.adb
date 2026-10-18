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


with org.allbinary.data.tree.dom.DomNodeHelper_Package; use org.allbinary.data.tree.dom.DomNodeHelper_Package;
with org.allbinary.data.tree.dom.DomSearchHelper_Package; use org.allbinary.data.tree.dom.DomSearchHelper_Package;
with org.allbinary.data.tree.dom.ModDomHelper_Package; use org.allbinary.data.tree.dom.ModDomHelper_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActionData_Package; use org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileActionData_Package;

package body org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileAction_Package is

   package DomNodeHelper_Package renames Standard.org.allbinary.data.tree.dom.DomNodeHelper_Package;
   package DomSearchHelper_Package renames Standard.org.allbinary.data.tree.dom.DomSearchHelper_Package;
   package ModDomHelper_Package renames Standard.org.allbinary.data.tree.dom.ModDomHelper_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   procedure Initialize_Fields (This : in out GenericProfileAction'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
      This.genericProfileActionScript := null;
      This.genericProfileActionJPanel := null;
   end Initialize_Fields;


   procedure Initialize (This : in out GenericProfileAction'Class; genericProfileActionJPanel_Param : access GenericProfileActionJPanel_Package.GenericProfileActionJPanel'Class; node_Param : access Node_Package.Node'Class) is
      genericProfileActionJPanel : constant GenericProfileActionJPanel_Access := GenericProfileActionJPanel_Access (genericProfileActionJPanel_Param);
      node : constant Node_Access := Node_Access (node_Param);
      actionNameNode : Node_Access;
   begin
      Initialize_Fields (This);
        actionNameNode := DomSearchHelper_Package.getNode (GenericProfileActionData_Package.NAME, node.getChildNodes);
        if (actionNameNode) /= (null) then
            This.name := DomNodeHelper_Package.getTextNodeValue (actionNameNode);
        else
            Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Profile Action Name Node Null")));
        end if;
        GenericProfileAction'Class (This).setGenericProfileActionScript (GenericProfileActionScript_Package.Create (This.genericProfileActionJPanel, node));
   end Initialize;

   function Create (genericProfileActionJPanel_Param : access GenericProfileActionJPanel_Package.GenericProfileActionJPanel'Class; node_Param : access Node_Package.Node'Class) return GenericProfileAction_Access is
      This : constant GenericProfileAction_Access := new GenericProfileAction;
   begin
      GenericProfileAction_Package.Initialize (This.all, genericProfileActionJPanel_Param, node_Param);
      return This;
   end Create;

   procedure Initialize (This : in out GenericProfileAction'Class; name : Unbounded_String) is
   begin
      Initialize_Fields (This);
        This.name := name;
        GenericProfileAction'Class (This).setGenericProfileActionScript (GenericProfileActionScript_Package.Create (This.genericProfileActionJPanel));
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
        hashMap.put (GenericProfileActionData_Package.NAME, Java_Box (This.name));
        This.logUtil.putF (To_Unbounded_String ("HashMap: ") & hashMap.toString, GenericProfileAction_Access'(This'Unchecked_Access), To_Unbounded_String ("toHashMap()"));
        return hashMap;
   end toHashMap;

   --  throws Exception
   function toXmlNode (This : in out GenericProfileAction; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
      node : Node_Access;
   begin
        node := ModDomHelper_Package.createNodeWithValueNodes (document, GenericProfileActionData_Package.NAME, GenericProfileAction'Class (This).toHashMap);
        node.appendChild (GenericProfileAction'Class (This).getGenericProfileActionScript.toXmlNode (document));
        return node;
   end toXmlNode;

   function getGenericProfileActionScript (This : in out GenericProfileAction) return GenericProfileActionScript_Access is
   begin
        return This.genericProfileActionScript;
   end getGenericProfileActionScript;

   procedure setGenericProfileActionScript (This : in out GenericProfileAction; genericProfileActionScript_Param : access GenericProfileActionScript_Package.GenericProfileActionScript'Class) is
      genericProfileActionScript : constant GenericProfileActionScript_Access := GenericProfileActionScript_Access (genericProfileActionScript_Param);
   begin
        This.genericProfileActionScript := genericProfileActionScript;
   end setGenericProfileActionScript;

   procedure toXmlNode (This : in out GenericProfileAction; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := GenericProfileAction'Class (This).toXmlNode (document_Param => document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

end org.allbinary.input.automation.module.generic_Id.configuration.profile.actions.GenericProfileAction_Package;


