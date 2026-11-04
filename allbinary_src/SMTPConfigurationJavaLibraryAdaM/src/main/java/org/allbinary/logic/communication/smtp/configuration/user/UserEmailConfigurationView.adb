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
with org.allbinary.data.tree.dom.DomNodeInterface_Package; use org.allbinary.data.tree.dom.DomNodeInterface_Package;
with org.allbinary.data.tree.dom.DomSearchHelper_Package; use org.allbinary.data.tree.dom.DomSearchHelper_Package;
with org.allbinary.data.tree.dom.ModDomHelper_Package; use org.allbinary.data.tree.dom.ModDomHelper_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfigurationData_Package; use org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfigurationData_Package;
with org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfigurationInterface_Package; use org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfigurationInterface_Package;
with org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfigurationView_Package; use org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfigurationView_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Document_Package_References;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.w3c.dom.Node_Package_References;
with org.w3c.dom.NodeList_Package; use org.w3c.dom.NodeList_Package;
with org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationInterface_Package; use org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationInterface_Package;
with org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationInterface_Package_References;
with org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfiguration_Package; use org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfiguration_Package;
with org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationMapping_Package; use org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationMapping_Package;
with org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationData_Package; use org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationData_Package;
with org.allbinary.logic.communication.smtp.info.BasicEmailInfo_Package;
with org.allbinary.logic.communication.smtp.event.EmailEvent_Package;
with org.allbinary.logic.communication.smtp.info.EmailInfo_Package;
with org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationInterface_Package;
with org.allbinary.business.time.Time_Package;
with org.allbinary.business.time.created.TimeCreated_Package;
with org.allbinary.business.time.modified.TimeLastModified_Package;
with org.allbinary.business.user.modules.configuration.UserConfigurationInterface_Package;
with org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfiguration_Package;
with org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationInterface_Package;
with org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationMapping_Package;
with org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfigurationInterface_Package;
with org.allbinary.logic.communication.smtp.event.UserEmailEventListenerInterface_Package;
with org.allbinary.business.user.UserFactoryInterface_Package;
with org.allbinary.business.user.UserInterface_Package;
with org.allbinary.business.user.role.UserRole_Package;
with org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface_Package;

package body org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationView_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package DomSearchHelper_Package renames Standard.org.allbinary.data.tree.dom.DomSearchHelper_Package;
   package ModDomHelper_Package renames Standard.org.allbinary.data.tree.dom.ModDomHelper_Package;
   package UserEmailEventsConfigurationData_Package renames Standard.org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfigurationData_Package;
   package UserEmailEventsConfigurationInterface_Package renames Standard.org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfigurationInterface_Package;
   package UserEmailEventsConfigurationView_Package renames Standard.org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfigurationView_Package;
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
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   function "=" (Left, Right : CommonStrings_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   function "=" (Left, Right : CommonStrings_Access_Array) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   function "=" (Left, Right : CommonStrings_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   function "=" (Left, Right : CommonStrings_Access_Array_Access_Array) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CommonStrings_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.string_Id.CommonStrings_Package_References."=";
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
   subtype UserEmailConfigurationInterface_Access is org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationInterface_Package_References.UserEmailConfigurationInterface_Access;
   function "=" (Left, Right : UserEmailConfigurationInterface_Access) return Boolean renames org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationInterface_Package_References."=";
   subtype UserEmailConfigurationInterface_Access_Array is org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationInterface_Package_References.UserEmailConfigurationInterface_Access_Array;
   function "=" (Left, Right : UserEmailConfigurationInterface_Access_Array) return Boolean renames org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationInterface_Package_References."=";
   subtype UserEmailConfigurationInterface_Access_Array_Access is org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationInterface_Package_References.UserEmailConfigurationInterface_Access_Array_Access;
   function "=" (Left, Right : UserEmailConfigurationInterface_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationInterface_Package_References."=";
   subtype UserEmailConfigurationInterface_Access_Array_Access_Array is org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationInterface_Package_References.UserEmailConfigurationInterface_Access_Array_Access_Array;
   function "=" (Left, Right : UserEmailConfigurationInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationInterface_Package_References."=";
   subtype UserEmailConfigurationInterface_Access_Array_Access_Array_Access is org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationInterface_Package_References.UserEmailConfigurationInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : UserEmailConfigurationInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationInterface_Package_References."=";
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
        userEmailConfigurationInterface := UserEmailConfigurationInterface_Access (UserEmailConfigurationView'Class (This).getEmailConfigurationInterface);
        userEmailEventsConfigurationInterface := UserEmailEventsConfigurationInterface_Access (userEmailConfigurationInterface.getUserEmailEventsConfigurationInterface);
        userEmailEventsConfigurationView := UserEmailEventsConfigurationView_Package.Create (userEmailEventsConfigurationInterface);
        node.appendChild (userEmailEventsConfigurationView.toXmlNode (document));
        return node;
   end toXmlNode;

   procedure toXmlNode (This : in out UserEmailConfigurationView; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant Node_Access := UserEmailConfigurationView'Class (This).toXmlNode (document_Param => document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlNode;

end org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationView_Package;


