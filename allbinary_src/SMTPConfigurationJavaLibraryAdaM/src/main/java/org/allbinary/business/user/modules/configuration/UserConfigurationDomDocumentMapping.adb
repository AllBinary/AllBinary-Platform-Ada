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


with org.allbinary.data.tree.dom.document.DomDocumentHelper_Package; use org.allbinary.data.tree.dom.document.DomDocumentHelper_Package;
with org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package; use org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package;
with org.allbinary.data.tree.dom.document.mapping.DomDocumentMappingInterface_Package; use org.allbinary.data.tree.dom.document.mapping.DomDocumentMappingInterface_Package;
with org.w3c.dom.Document_Package; use org.w3c.dom.Document_Package;
with org.w3c.dom.Node_Package; use org.w3c.dom.Node_Package;
with org.allbinary.business.user.modules.configuration.UserConfigurationInterface_Package; use org.allbinary.business.user.modules.configuration.UserConfigurationInterface_Package;
with org.allbinary.business.user.modules.configuration.UserConfigurationView_Package; use org.allbinary.business.user.modules.configuration.UserConfigurationView_Package;
with org.allbinary.logic.communication.smtp.info.BasicEmailInfo_Package;
with org.allbinary.logic.communication.smtp.event.EmailEvent_Package;
with org.allbinary.logic.communication.smtp.info.EmailInfo_Package;
with org.allbinary.logic.communication.smtp.configuration.server.EmailServerConfigurationInterface_Package;
with org.allbinary.business.time.Time_Package;
with org.allbinary.business.time.created.TimeCreated_Package;
with org.allbinary.business.time.modified.TimeLastModified_Package;
with org.allbinary.business.user.modules.configuration.UserConfigurationInterface_Package;
with org.allbinary.business.user.modules.configuration.UserConfigurationView_Package;
with org.allbinary.logic.communication.smtp.configuration.user.UserEmailConfigurationInterface_Package;
with org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventConfigurationInterface_Package;
with org.allbinary.logic.communication.smtp.event.UserEmailEventListenerInterface_Package;
with org.allbinary.logic.communication.smtp.configuration.user.event.UserEmailEventsConfigurationInterface_Package;
with org.allbinary.business.user.UserFactoryInterface_Package;
with org.allbinary.business.user.UserInterface_Package;
with org.allbinary.business.user.role.UserRole_Package;
with org.allbinary.logic.communication.http.request.session.WeblisketSessionInterface_Package;

package body org.allbinary.business.user.modules.configuration.UserConfigurationDomDocumentMapping_Package is

   package DomDocumentHelper_Package renames Standard.org.allbinary.data.tree.dom.document.DomDocumentHelper_Package;
   package XmlDocumentHelper_Package renames Standard.org.allbinary.data.tree.dom.document.XmlDocumentHelper_Package;
   package Node_Package renames Standard.org.w3c.dom.Node_Package;
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
   subtype UserConfigurationInterface_Access is org.allbinary.business.user.modules.configuration.UserConfigurationInterface_Package_References.UserConfigurationInterface_Access;
   function "=" (Left, Right : UserConfigurationInterface_Access) return Boolean renames org.allbinary.business.user.modules.configuration.UserConfigurationInterface_Package_References."=";
   subtype UserConfigurationInterface_Access_Array is org.allbinary.business.user.modules.configuration.UserConfigurationInterface_Package_References.UserConfigurationInterface_Access_Array;
   function "=" (Left, Right : UserConfigurationInterface_Access_Array) return Boolean renames org.allbinary.business.user.modules.configuration.UserConfigurationInterface_Package_References."=";
   subtype UserConfigurationInterface_Access_Array_Access is org.allbinary.business.user.modules.configuration.UserConfigurationInterface_Package_References.UserConfigurationInterface_Access_Array_Access;
   function "=" (Left, Right : UserConfigurationInterface_Access_Array_Access) return Boolean renames org.allbinary.business.user.modules.configuration.UserConfigurationInterface_Package_References."=";
   subtype UserConfigurationInterface_Access_Array_Access_Array is org.allbinary.business.user.modules.configuration.UserConfigurationInterface_Package_References.UserConfigurationInterface_Access_Array_Access_Array;
   function "=" (Left, Right : UserConfigurationInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.business.user.modules.configuration.UserConfigurationInterface_Package_References."=";
   subtype UserConfigurationInterface_Access_Array_Access_Array_Access is org.allbinary.business.user.modules.configuration.UserConfigurationInterface_Package_References.UserConfigurationInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : UserConfigurationInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.user.modules.configuration.UserConfigurationInterface_Package_References."=";
   procedure Initialize_Fields (This : in out UserConfigurationDomDocumentMapping'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out UserConfigurationDomDocumentMapping'Class; userConfigurationInterface_Param : access UserConfigurationInterface_Package.UserConfigurationInterface'Class) is
      userConfigurationInterface : constant UserConfigurationInterface_Access := UserConfigurationInterface_Access (userConfigurationInterface_Param);
   begin
      Initialize_Fields (This);
        This.userConfigurationInterface := userConfigurationInterface;
   end Initialize;

   function Create (userConfigurationInterface_Param : access UserConfigurationInterface_Package.UserConfigurationInterface'Class) return UserConfigurationDomDocumentMapping_Access is
      This : constant UserConfigurationDomDocumentMapping_Access := new UserConfigurationDomDocumentMapping;
   begin
      UserConfigurationDomDocumentMapping_Package.Initialize (This.all, userConfigurationInterface_Param);
      return This;
   end Create;

   --  throws Exception
   function toXmlDoc (This : in out UserConfigurationDomDocumentMapping) return Document_Access is
      document : Document_Access;
      node : Node_Access;
   begin
        document := DomDocumentHelper_Package.create;
        node := UserConfigurationView_Package.Create (This.userConfigurationInterface).toXmlNode (document);
        document.appendChild (node);
        return document;
   end toXmlDoc;

   --  throws Exception
   function toDomDocumentString (This : in out UserConfigurationDomDocumentMapping) return Unbounded_String is
   begin
        return XmlDocumentHelper_Package.toString (UserConfigurationDomDocumentMapping'Class (This).toXmlDoc);
   end toDomDocumentString;

end org.allbinary.business.user.modules.configuration.UserConfigurationDomDocumentMapping_Package;


