-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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


package body org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigAndManipulatorFactoryBase_Package is

   procedure Initialize_Fields (This : in out TransformInfoObjectConfigAndManipulatorFactoryBase'Class) is
   begin
      null;
      This.commonStrings := CommonStrings_Package.getInstance;
   end Initialize_Fields;

   procedure Initialize (This : in out TransformInfoObjectConfigAndManipulatorFactoryBase'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return TransformInfoObjectConfigAndManipulatorFactoryBase_Access is
      This : constant TransformInfoObjectConfigAndManipulatorFactoryBase_Access := new TransformInfoObjectConfigAndManipulatorFactoryBase;
   begin
      TransformInfoObjectConfigAndManipulatorFactoryBase_Package.Initialize (This.all);
      return This;
   end Create;


   --  throws Exception
   function getInstance (This : in out TransformInfoObjectConfigAndManipulatorFactoryBase; abeClientInformation_Param : access AbeClientInformationInterface'Class; transformInfoInterface_Param : access TransformInfoInterface'Class; objectConfigFileAbPath_Param : access AbPath'Class) return TransformInfoObjectConfigInterface_Access is
      abeClientInformation : AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
      transformInfoInterface : TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
      objectConfigFileAbPath : AbPath_Access := AbPath_Access (objectConfigFileAbPath_Param);
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end getInstance;

   --  throws Exception
   function getInstance (This : in out TransformInfoObjectConfigAndManipulatorFactoryBase; abeClientInformation_Param : access AbeClientInformationInterface'Class; transformInfoInterface_Param : access TransformInfoInterface'Class) return TransformInfoObjectConfigInterface_Access is
      abeClientInformation : AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
      transformInfoInterface : TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end getInstance;

   --  throws Exception
   function getInstance (This : in out TransformInfoObjectConfigAndManipulatorFactoryBase; abeClientInformation_Param : access AbeClientInformationInterface'Class; transformInfoInterface_Param : access TransformInfoInterface'Class; document_Param : access Document'Class) return TransformInfoObjectConfigInterface_Access is
      abeClientInformation : AbeClientInformationInterface_Access := AbeClientInformationInterface_Access (abeClientInformation_Param);
      transformInfoInterface : TransformInfoInterface_Access := TransformInfoInterface_Access (transformInfoInterface_Param);
      document : Document_Access := Document_Access (document_Param);
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end getInstance;

   procedure getInstance (This : in out TransformInfoObjectConfigAndManipulatorFactoryBase; abeClientInformation_Param : access AbeClientInformationInterface'Class; transformInfoInterface_Param : access TransformInfoInterface'Class; objectConfigFileAbPath_Param : access AbPath'Class) is
      Java_Result : constant TransformInfoObjectConfigInterface_Access := TransformInfoObjectConfigAndManipulatorFactoryBase'Class (This).getInstance (abeClientInformation_Param, transformInfoInterface_Param, objectConfigFileAbPath_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getInstance (This : in out TransformInfoObjectConfigAndManipulatorFactoryBase; abeClientInformation_Param : access AbeClientInformationInterface'Class; transformInfoInterface_Param : access TransformInfoInterface'Class) is
      Java_Result : constant TransformInfoObjectConfigInterface_Access := TransformInfoObjectConfigAndManipulatorFactoryBase'Class (This).getInstance (abeClientInformation_Param, transformInfoInterface_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getInstance (This : in out TransformInfoObjectConfigAndManipulatorFactoryBase; abeClientInformation_Param : access AbeClientInformationInterface'Class; transformInfoInterface_Param : access TransformInfoInterface'Class; document_Param : access Document'Class) is
      Java_Result : constant TransformInfoObjectConfigInterface_Access := TransformInfoObjectConfigAndManipulatorFactoryBase'Class (This).getInstance (abeClientInformation_Param, transformInfoInterface_Param, document_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigAndManipulatorFactoryBase_Package;


