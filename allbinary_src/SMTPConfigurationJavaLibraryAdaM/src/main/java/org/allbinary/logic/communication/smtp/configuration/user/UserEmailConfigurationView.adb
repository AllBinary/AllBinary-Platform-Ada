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


package body org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationView_Package is

   procedure Initialize_Fields (This : in out UserEmailConfigurationView'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.commonStrings := CommonStrings_Package.getInstance;
      
   end Initialize_Fields;


   procedure Initialize (This : in out UserEmailConfigurationView'Class; node_Param : access Node_Package.Node'Class) is
      node : constant Node_Access := Node_Access (node_Param);
      childNodeList : NodeList_Access;
      userEmailEventsConfigurationNode : Node_Access;
      userEmailEventsConfigurationView : UserEmailEventsConfigurationView_Access;
   begin
      Initialize_Fields (This);
        if org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypes.LOGGING.contains (org_Package.allbinary.logic.communication.log.config.type_Id.LogConfigTypeFactory.getInstance.EMAILLOGGING) then
            This.logUtil.putF (This.commonStrings.CONSTRUCTOR, UserEmailConfigurationView_Access'(This'Unchecked_Access), This.commonStrings.CONSTRUCTOR);
        end if;
        This.userEmailConfigurationInterface := UserEmailConfigurationInterface_Access (UserEmailConfiguration_Package.Create);
        childNodeList := node.getChildNodes;
        userEmailEventsConfigurationNode := DomSearchHelper_Package.getNodeNoThrow (UserEmailEventsConfigurationData_Package.NAME, childNodeList);
        userEmailEventsConfigurationView := UserEmailEventsConfigurationView_Package.Create (userEmailEventsConfigurationNode);
        This.userEmailConfigurationInterface.setUserEmailEventsConfigurationInterface (userEmailEventsConfigurationView.getUserEmailEventsConfigurationInterface);
   end Initialize;

   function Create (node_Param : access Node_Package.Node'Class) return UserEmailConfigurationView_Access is
      This : constant UserEmailConfigurationView_Access := new UserEmailConfigurationView;
   begin
      UserEmailConfigurationView_Package.Initialize (This.all, node_Param);
      return This;
   end Create;

   procedure Initialize (This : in out UserEmailConfigurationView'Class; userEmailConfigurationInterface_Param : access UserEmailConfigurationInterface_Package.UserEmailConfigurationInterface'Class) is
      userEmailConfigurationInterface : constant UserEmailConfigurationInterface_Access := UserEmailConfigurationInterface_Access (userEmailConfigurationInterface_Param);
   begin
      Initialize_Fields (This);
        This.userEmailConfigurationInterface := userEmailConfigurationInterface;
   end Initialize;

   function Create (userEmailConfigurationInterface_Param : access UserEmailConfigurationInterface_Package.UserEmailConfigurationInterface'Class) return UserEmailConfigurationView_Access is
      This : constant UserEmailConfigurationView_Access := new UserEmailConfigurationView;
   begin
      UserEmailConfigurationView_Package.Initialize (This.all, userEmailConfigurationInterface_Param);
      return This;
   end Create;

   function getEmailConfigurationInterface (This : in out UserEmailConfigurationView) return UserEmailConfigurationInterface_Access is
   begin
        return This.userEmailConfigurationInterface;
   end getEmailConfigurationInterface;

   --  throws Exception
   function toXmlNode (This : in out UserEmailConfigurationView; document_Param : access Document_Package.Document'Class) return Node_Access is
      document : constant Document_Access := Document_Access (document_Param);
      emailConfigurationMapping : UserEmailConfigurationMapping_Access;
      hashMap : HashMap_Access;
      node : Node_Access;
      userEmailConfigurationInterface : UserEmailConfigurationInterface_Access;
      userEmailEventsConfigurationInterface : UserEmailEventsConfigurationInterface_Access;
      userEmailEventsConfigurationView : UserEmailEventsConfigurationView_Access;
   begin
        emailConfigurationMapping := UserEmailConfigurationMapping_Package.Create (This.userEmailConfigurationInterface);
        hashMap := emailConfigurationMapping.toHashMap;
        node := ModDomHelper_Package.createNameValueNodes (document, UserEmailConfigurationData_Package.NAME, hashMap);
        userEmailConfigurationInterface := This.getEmailConfigurationInterface;
        userEmailEventsConfigurationInterface := userEmailConfigurationInterface.getUserEmailEventsConfigurationInterface;
        userEmailEventsConfigurationView := UserEmailEventsConfigurationView_Package.Create (userEmailEventsConfigurationInterface);
        node.appendChild (userEmailEventsConfigurationView.toXmlNode (document));
        return node;
   end toXmlNode;

   procedure toXmlNode (This : in out UserEmailConfigurationView; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := UserEmailConfigurationView'Class (This).toXmlNode (document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

end org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationView_Package;


