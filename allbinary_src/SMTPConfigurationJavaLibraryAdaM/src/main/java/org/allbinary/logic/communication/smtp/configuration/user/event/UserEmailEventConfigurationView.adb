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
with org.allbinary.data.tree.dom.ModDomHelper_Package; use org.allbinary.data.tree.dom.ModDomHelper_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.w3c.dom.NodeList_Package; use org.w3c.dom.NodeList_Package;
with org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfigurationData_Package; use org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfigurationData_Package;
with org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfiguration_Package; use org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfiguration_Package;
with org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfigurationMapping_Package; use org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfigurationMapping_Package;

package body org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfigurationView_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package DomNodeHelper_Package renames Standard.org.allbinary.data.tree.dom.DomNodeHelper_Package;
   package ModDomHelper_Package renames Standard.org.allbinary.data.tree.dom.ModDomHelper_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package NodeList_Package renames Standard.org.w3c.dom.NodeList_Package;
   procedure Initialize_Fields (This : in out UserEmailEventConfigurationView'Class) is
   begin
      null;
      This.userEmailEventConfigurationInterface := null;
   end Initialize_Fields;


   procedure Initialize (This : in out UserEmailEventConfigurationView'Class; node_Param : access Node_Package.Node'Class) is
      node : constant Node_Access := Node_Access (node_Param);
      childNodeList : NodeList_Access;
      hashMap : HashMap_Access;
      name : Unbounded_String;
      eventListenerClassPath : Unbounded_String;
   begin
      Initialize_Fields (This);
        childNodeList := node.getChildNodes;
        hashMap := StdUtil_Package.getInstance.createHashMap;
        name := DomNodeHelper_Package.getTextNodeValue (UserEmailEventConfigurationData_Package.NAME, childNodeList);
        hashMap.put (UserEmailEventConfigurationData_Package.NAME, Java_Box (name));
        eventListenerClassPath := DomNodeHelper_Package.getTextNodeValue (UserEmailEventConfigurationData_Package.LISTENER_CLASSPATH, childNodeList);
        hashMap.put (UserEmailEventConfigurationData_Package.LISTENER_CLASSPATH, Java_Box (eventListenerClassPath));
        UserEmailEventConfigurationView'Class (This).setUserEmailEventConfigurationInterface (UserEmailEventConfigurationInterface_Access (UserEmailEventConfiguration_Package.Create (hashMap)));
   end Initialize;

   function Create (node_Param : access Node_Package.Node'Class) return UserEmailEventConfigurationView_Access is
      This : constant UserEmailEventConfigurationView_Access := new UserEmailEventConfigurationView;
   begin
      UserEmailEventConfigurationView_Package.Initialize (This.all, node_Param);
      return This;
   end Create;

   procedure Initialize (This : in out UserEmailEventConfigurationView'Class; userEmailEventConfigurationInterface_Param : access UserEmailEventConfigurationInterface_Package.UserEmailEventConfigurationInterface'Class) is
      userEmailEventConfigurationInterface : constant UserEmailEventConfigurationInterface_Access := UserEmailEventConfigurationInterface_Access (userEmailEventConfigurationInterface_Param);
   begin
      Initialize_Fields (This);
        UserEmailEventConfigurationView'Class (This).setUserEmailEventConfigurationInterface (userEmailEventConfigurationInterface);
   end Initialize;

   function Create (userEmailEventConfigurationInterface_Param : access UserEmailEventConfigurationInterface_Package.UserEmailEventConfigurationInterface'Class) return UserEmailEventConfigurationView_Access is
      This : constant UserEmailEventConfigurationView_Access := new UserEmailEventConfigurationView;
   begin
      UserEmailEventConfigurationView_Package.Initialize (This.all, userEmailEventConfigurationInterface_Param);
      return This;
   end Create;

   --  throws Exception
   function toXmlNode (This : in out UserEmailEventConfigurationView; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
      userEmailEventConfigurationMapping : UserEmailEventConfigurationMapping_Access;
      hashMap : HashMap_Access;
      node : Node_Access;
   begin
        userEmailEventConfigurationMapping := UserEmailEventConfigurationMapping_Package.Create (UserEmailEventConfigurationView'Class (This).getUserEmailEventConfigurationInterface);
        hashMap := userEmailEventConfigurationMapping.toHashMap;
        node := ModDomHelper_Package.createNameValueNodes (document, UserEmailEventConfigurationData_Package.NAME, hashMap);
        return node;
   end toXmlNode;

   function getUserEmailEventConfigurationInterface (This : in out UserEmailEventConfigurationView) return UserEmailEventConfigurationInterface_Access is
   begin
        return This.userEmailEventConfigurationInterface;
   end getUserEmailEventConfigurationInterface;

   procedure setUserEmailEventConfigurationInterface (This : in out UserEmailEventConfigurationView; userEmailEventConfigurationInterface_Param : access UserEmailEventConfigurationInterface_Package.UserEmailEventConfigurationInterface'Class) is
      userEmailEventConfigurationInterface : constant UserEmailEventConfigurationInterface_Access := UserEmailEventConfigurationInterface_Access (userEmailEventConfigurationInterface_Param);
   begin
        This.userEmailEventConfigurationInterface := userEmailEventConfigurationInterface;
   end setUserEmailEventConfigurationInterface;

   procedure toXmlNode (This : in out UserEmailEventConfigurationView; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := UserEmailEventConfigurationView'Class (This).toXmlNode (document_Param => document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

end org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfigurationView_Package;


