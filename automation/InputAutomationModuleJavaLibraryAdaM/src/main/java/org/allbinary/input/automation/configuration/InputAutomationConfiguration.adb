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


package body org.allbinary.input.automation.configuration.InputAutomationConfiguration_Package is

   procedure Initialize_Fields (This : in out InputAutomationConfiguration'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.installed := False;
      This.inputAutomationModuleConfigurationList := null;
   end Initialize_Fields;


   procedure Initialize (This : in out InputAutomationConfiguration'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return InputAutomationConfiguration_Access is
      This : constant InputAutomationConfiguration_Access := new InputAutomationConfiguration;
   begin
      InputAutomationConfiguration_Package.Initialize (This.all);
      return This;
   end Create;

   function getFile return File_Access is
   begin
        return File_Package.Create (FILENAME);
   end getFile;

   function isInstalled (This : in out InputAutomationConfiguration) return Boolean is
   begin
        return This.installed;
   end isInstalled;

   procedure setInstalled (This : in out InputAutomationConfiguration; installed : Boolean) is
   begin
        This.installed := installed;
        This.logUtil.putF (To_Unbounded_String ("Installed: ") & Java_Image (installed), This'Unchecked_Access, To_Unbounded_String ("setIntalled"));
   end setInstalled;

   function getInputAutomationModuleConfigurationList (This : in out InputAutomationConfiguration) return List_Access is
   begin
        return This.inputAutomationModuleConfigurationList;
   end getInputAutomationModuleConfigurationList;

   --  throws Exception
   procedure save (This : in out InputAutomationConfiguration) is
      document : Document_Access;
      file : File_Access;
      jaxbContext : JAXBContext_Access;
      marshaller : Marshaller_Access;
   begin
        document := DomDocumentHelper_Package.create;
        file := File_Package.Create (FILENAME);
        FileUtil_Package.getInstance.copy (AbPath_Package.Create (file.getAbsolutePath, StringUtil_Package.getInstance.EMPTY_STRING), AbPath_Package.Create (Java_Image (file.getAbsolutePath) & To_Unbounded_String (".bak.xml"), StringUtil_Package.getInstance.EMPTY_STRING));
        jaxbContext := JAXBContext_Package.newInstance (InputAutomationConfiguration_Package.InputAutomationConfiguration'Tag);
        marshaller := jaxbContext.createMarshaller;
        marshaller.setProperty (Marshaller_Package.JAXB_FORMATTED_OUTPUT, True);
        marshaller.marshal (This'Unchecked_Access, document);
        DomDocumentFileHelper_Package.save (FileWrapperUtil_Package.wrapFile (file), document);
   end save;

begin
   null;
   FILENAME := To_Unbounded_String ("InputAutomationConfig.xml");

end org.allbinary.input.automation.configuration.InputAutomationConfiguration_Package;


