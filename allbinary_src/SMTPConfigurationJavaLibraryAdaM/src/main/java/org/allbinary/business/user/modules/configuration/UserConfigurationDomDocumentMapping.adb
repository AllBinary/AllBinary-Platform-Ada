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


package body org.allbinary.business.user.modules.configuration.UserConfigurationDomDocumentMapping_Package is

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


