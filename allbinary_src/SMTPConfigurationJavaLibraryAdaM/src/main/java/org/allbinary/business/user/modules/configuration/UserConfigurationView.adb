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


with org.allbinary.business.entry_Id.EntryData_Package; use org.allbinary.business.entry_Id.EntryData_Package;
with org.allbinary.business.time.created.TimeCreatedView_Package; use org.allbinary.business.time.created.TimeCreatedView_Package;
with org.allbinary.business.time.modified.TimeLastModifiedView_Package; use org.allbinary.business.time.modified.TimeLastModifiedView_Package;
with org.allbinary.data.tree.dom.DomSearchHelper_Package; use org.allbinary.data.tree.dom.DomSearchHelper_Package;
with org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationData_Package; use org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationData_Package;
with org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationInterface_Package; use org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationInterface_Package;
with org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationView_Package; use org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationView_Package;
with org.w3c.dom.NodeList_Package; use org.w3c.dom.NodeList_Package;
with org.allbinary.business.user.modules.configuration.UserConfiguration_Package; use org.allbinary.business.user.modules.configuration.UserConfiguration_Package;
with org.allbinary.business.user.modules.configuration.UserConfigurationData_Package; use org.allbinary.business.user.modules.configuration.UserConfigurationData_Package;

package body org.allbinary.business.user.modules.configuration.UserConfigurationView_Package is

   package EntryData_Package renames Standard.org.allbinary.business.entry_Id.EntryData_Package;
   package TimeCreatedView_Package renames Standard.org.allbinary.business.time.created.TimeCreatedView_Package;
   package TimeLastModifiedView_Package renames Standard.org.allbinary.business.time.modified.TimeLastModifiedView_Package;
   package DomSearchHelper_Package renames Standard.org.allbinary.data.tree.dom.DomSearchHelper_Package;
   package UserEmailConfigurationData_Package renames Standard.org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationData_Package;
   package UserEmailConfigurationInterface_Package renames Standard.org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationInterface_Package;
   package UserEmailConfigurationView_Package renames Standard.org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationView_Package;
   package NodeList_Package renames Standard.org.w3c.dom.NodeList_Package;
   procedure Initialize_Fields (This : in out UserConfigurationView'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out UserConfigurationView'Class; node_Param : access Node_Package.Node'Class) is
      node : constant Node_Access := Node_Access (node_Param);
      childNodeList : NodeList_Access;
      emailConfigurationNode : Node_Access;
      userEmailConfigurationView : UserEmailConfigurationView_Access;
      userEmailConfigurationInterface : UserEmailConfigurationInterface_Access;
      timeCreatedNode : Node_Access;
      timeCreatedView : TimeCreatedView_Access;
      timeLastModifiedNode : Node_Access;
      timeLastModifiedView : TimeLastModifiedView_Access;
   begin
      Initialize_Fields (This);
        This.userConfigurationInterface := UserConfigurationInterface_Access (UserConfiguration_Package.Create);
        childNodeList := node.getChildNodes;
        emailConfigurationNode := DomSearchHelper_Package.getNode (UserEmailConfigurationData_Package.NAME, childNodeList);
        userEmailConfigurationView := UserEmailConfigurationView_Package.Create (emailConfigurationNode);
        userEmailConfigurationInterface := UserEmailConfigurationInterface_Access (userEmailConfigurationView.getEmailConfigurationInterface);
        This.userConfigurationInterface.setUserEmailConfigurationInterface (userEmailConfigurationInterface);
        timeCreatedNode := DomSearchHelper_Package.getNode (EntryData_Package.getInstance.TIMECREATED, childNodeList);
        timeCreatedView := TimeCreatedView_Package.Create (timeCreatedNode);
        This.userConfigurationInterface.setTimeCreated (timeCreatedView.getTimeCreated);
        timeLastModifiedNode := DomSearchHelper_Package.getNode (EntryData_Package.getInstance.LASTMODIFIED, childNodeList);
        timeLastModifiedView := TimeLastModifiedView_Package.Create (timeLastModifiedNode);
        This.userConfigurationInterface.setTimeLastModified (timeLastModifiedView.getTimeLastModified);
   end Initialize;

   function Create (node_Param : access Node_Package.Node'Class) return UserConfigurationView_Access is
      This : constant UserConfigurationView_Access := new UserConfigurationView;
   begin
      UserConfigurationView_Package.Initialize (This.all, node_Param);
      return This;
   end Create;

   procedure Initialize (This : in out UserConfigurationView'Class; userConfigurationInterface_Param : access UserConfigurationInterface_Package.UserConfigurationInterface'Class) is
      userConfigurationInterface : constant UserConfigurationInterface_Access := UserConfigurationInterface_Access (userConfigurationInterface_Param);
   begin
      Initialize_Fields (This);
        This.userConfigurationInterface := userConfigurationInterface;
   end Initialize;

   function Create (userConfigurationInterface_Param : access UserConfigurationInterface_Package.UserConfigurationInterface'Class) return UserConfigurationView_Access is
      This : constant UserConfigurationView_Access := new UserConfigurationView;
   begin
      UserConfigurationView_Package.Initialize (This.all, userConfigurationInterface_Param);
      return This;
   end Create;

   function getUserConfigurationInterface (This : in out UserConfigurationView) return UserConfigurationInterface_Access is
   begin
        return This.userConfigurationInterface;
   end getUserConfigurationInterface;

   --  throws Exception
   function toXmlNode (This : in out UserConfigurationView; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
      node : Node_Access;
      userEmailConfigurationView : UserEmailConfigurationView_Access;
      timeCreatedView : TimeCreatedView_Access;
      timeLastModifiedView : TimeLastModifiedView_Access;
   begin
        node := document.createElement (UserConfigurationData_Package.NAME);
        userEmailConfigurationView := UserEmailConfigurationView_Package.Create (This.userConfigurationInterface.getUserEmailConfigurationInterface);
        node.appendChild (userEmailConfigurationView.toXmlNode (document));
        timeCreatedView := TimeCreatedView_Package.Create (This.userConfigurationInterface.getTimeCreated);
        node.appendChild (timeCreatedView.toXmlNode (document));
        timeLastModifiedView := TimeLastModifiedView_Package.Create (This.userConfigurationInterface.getTimeLastModified);
        node.appendChild (timeLastModifiedView.toXmlNode (document));
        return node;
   end toXmlNode;

   procedure toXmlNode (This : in out UserConfigurationView; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := UserConfigurationView'Class (This).toXmlNode (document_Param => document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

end org.allbinary.business.user.modules.configuration.UserConfigurationView_Package;


