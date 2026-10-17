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


   procedure Initialize (This : in out UserConfigurationDomDocumentMapping'Class; userConfigurationInterface : UserConfigurationInterface_Access) is
   begin
      Initialize_Fields (This);
        This.userConfigurationInterface := userConfigurationInterface;
   end Initialize;

   function Create (userConfigurationInterface : UserConfigurationInterface_Access) return UserConfigurationDomDocumentMapping_Access is
      This : constant UserConfigurationDomDocumentMapping_Access := new UserConfigurationDomDocumentMapping;
   begin
      Initialize (This.all, userConfigurationInterface);
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
        return XmlDocumentHelper_Package.toString (This.toXmlDoc);
   end toDomDocumentString;

   procedure toXmlDoc (This : in out UserConfigurationDomDocumentMapping) is
      Java_Result : constant Document_Access := UserConfigurationDomDocumentMapping'Class (This).toXmlDoc;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toXmlDoc;

   procedure toDomDocumentString (This : in out UserConfigurationDomDocumentMapping) is
      Java_Result : constant Unbounded_String := UserConfigurationDomDocumentMapping'Class (This).toDomDocumentString;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end toDomDocumentString;

end org.allbinary.business.user.modules.configuration.UserConfigurationDomDocumentMapping_Package;


