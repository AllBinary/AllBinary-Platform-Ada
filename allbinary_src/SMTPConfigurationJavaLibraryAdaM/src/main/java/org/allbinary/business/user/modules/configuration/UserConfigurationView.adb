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


package body org.allbinary.business.user.modules.configuration.UserConfigurationView_Package is

   procedure Initialize_Fields (This : in out UserConfigurationView'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out UserConfigurationView'Class; node : Node_Access) is
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

   function Create (node : Node_Access) return UserConfigurationView_Access is
      This : constant UserConfigurationView_Access := new UserConfigurationView;
   begin
      UserConfigurationView_Package.Initialize (This.all, node);
      return This;
   end Create;

   procedure Initialize (This : in out UserConfigurationView'Class; userConfigurationInterface : UserConfigurationInterface_Access) is
   begin
      Initialize_Fields (This);
        This.userConfigurationInterface := userConfigurationInterface;
   end Initialize;

   function Create (userConfigurationInterface : UserConfigurationInterface_Access) return UserConfigurationView_Access is
      This : constant UserConfigurationView_Access := new UserConfigurationView;
   begin
      UserConfigurationView_Package.Initialize (This.all, userConfigurationInterface);
      return This;
   end Create;

   function getUserConfigurationInterface (This : in out UserConfigurationView) return UserConfigurationInterface_Access is
   begin
        return This.userConfigurationInterface;
   end getUserConfigurationInterface;

   --  throws Exception
   function toXmlNode (This : in out UserConfigurationView; document : Document_Access) return Node_Access is
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

   procedure toXmlNode (This : in out UserConfigurationView; document : Document_Access) is
      Java_Result : constant Node_Access := UserConfigurationView'Class (This).toXmlNode (document);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

end org.allbinary.business.user.modules.configuration.UserConfigurationView_Package;


