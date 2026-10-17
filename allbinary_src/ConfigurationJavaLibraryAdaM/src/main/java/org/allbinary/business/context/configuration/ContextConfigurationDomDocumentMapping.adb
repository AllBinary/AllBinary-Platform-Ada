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


package body org.allbinary.business.context.configuration.ContextConfigurationDomDocumentMapping_Package is

   procedure Initialize_Fields (This : in out ContextConfigurationDomDocumentMapping'Class) is
   begin
      null;
      
   end Initialize_Fields;


   procedure Initialize (This : in out ContextConfigurationDomDocumentMapping'Class; contextConfigurationInterface : ContextConfigurationInterface_Access) is
   begin
      Initialize_Fields (This);
        This.contextConfigurationInterface := contextConfigurationInterface;
   end Initialize;

   function Create (contextConfigurationInterface : ContextConfigurationInterface_Access) return ContextConfigurationDomDocumentMapping_Access is
      This : constant ContextConfigurationDomDocumentMapping_Access := new ContextConfigurationDomDocumentMapping;
   begin
      ContextConfigurationDomDocumentMapping_Package.Initialize (This.all, contextConfigurationInterface);
      return This;
   end Create;

   --  throws Exception
   function toXmlDoc (This : in out ContextConfigurationDomDocumentMapping) return Document_Access is
      document : Document_Access;
      node : Node_Access;
   begin
        document := DomDocumentHelper_Package.create;
        node := ContextConfigurationView_Package.Create (This.contextConfigurationInterface).toXmlNode (document);
        document.appendChild (node);
        return document;
   end toXmlDoc;

   --  throws Exception
   function toDomDocumentString (This : in out ContextConfigurationDomDocumentMapping) return Unbounded_String is
   begin
        return XmlDocumentHelper_Package.toString (This.toXmlDoc);
   end toDomDocumentString;

end org.allbinary.business.context.configuration.ContextConfigurationDomDocumentMapping_Package;


