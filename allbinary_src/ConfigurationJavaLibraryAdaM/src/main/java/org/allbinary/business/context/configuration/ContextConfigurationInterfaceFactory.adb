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


package body org.allbinary.business.context.configuration.ContextConfigurationInterfaceFactory_Package is

   procedure Initialize_Fields (This : in out ContextConfigurationInterfaceFactory'Class) is
   begin
      null;
   end Initialize_Fields;


   function getInstance return ContextConfigurationInterfaceFactory_Access is
   begin
        return ContextConfigurationInterfaceFactory_Package.instance;
   end getInstance;

   procedure Initialize (This : in out ContextConfigurationInterfaceFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return ContextConfigurationInterfaceFactory_Access is
      This : constant ContextConfigurationInterfaceFactory_Access := new ContextConfigurationInterfaceFactory;
   begin
      ContextConfigurationInterfaceFactory_Package.Initialize (This.all);
      return This;
   end Create;

   --  throws Exception
   function getInstance (This : in out ContextConfigurationInterfaceFactory; document_Param : access Document_Package.Document'Class) return ContextConfigurationInterface_Access is
      document : constant Document_Access := Document_Access (document_Param);
      contextConfigurationData : ContextConfigurationData_Access;
      contextConfigurationNode : Node_Access;
   begin
        contextConfigurationData := ContextConfigurationData_Package.getInstance;
        contextConfigurationNode := DomSearchHelper_Package.getNode (contextConfigurationData.NAME, document.getChildNodes);
        return ContextConfigurationInterface_Access (ContextConfigurationView_Package.Create (contextConfigurationNode).getContextConfigurationInterface);
   end getInstance;

   --  throws Exception
   function getInstance (This : in out ContextConfigurationInterfaceFactory; contextName : Unbounded_String) return ContextConfigurationInterface_Access is
      abPath : AbPath_Access;
      contextConfigurationData : ContextConfigurationData_Access;
      documentString : Unbounded_String;
      document : Document_Access;
   begin
        abPath := ContextConfigurationPathUtil_Package.getAbPath (contextName);
        contextConfigurationData := ContextConfigurationData_Package.getInstance;
        documentString := CryptFileReader_Package.Create (contextConfigurationData.UNCRYPTED_EXTENSION, contextConfigurationData.ENCRYPTED_EXTENSION).get (abPath);
        document := DomDocumentHelper_Package.create (documentString);
        return ContextConfigurationInterfaceFactory'Class (This).getInstance (document);
   end getInstance;

   procedure getInstance (This : in out ContextConfigurationInterfaceFactory; document_Param : access Document_Package.Document'Class) is
      Java_Result : constant ContextConfigurationInterface_Access := ContextConfigurationInterfaceFactory'Class (This).getInstance (document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getInstance (This : in out ContextConfigurationInterfaceFactory; contextName : Unbounded_String) is
      Java_Result : constant ContextConfigurationInterface_Access := ContextConfigurationInterfaceFactory'Class (This).getInstance (contextName);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := ContextConfigurationInterfaceFactory_Package.Create;

end org.allbinary.business.context.configuration.ContextConfigurationInterfaceFactory_Package;


