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
   function getInstance (This : in out TransformInfoObjectConfigAndManipulatorFactoryBase; abeClientInformation : AbeClientInformationInterface_Access; transformInfoInterface : TransformInfoInterface_Access; objectConfigFileAbPath : AbPath_Access) return TransformInfoObjectConfigInterface_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end getInstance;

   --  throws Exception
   function getInstance (This : in out TransformInfoObjectConfigAndManipulatorFactoryBase; abeClientInformation : AbeClientInformationInterface_Access; transformInfoInterface : TransformInfoInterface_Access) return TransformInfoObjectConfigInterface_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end getInstance;

   --  throws Exception
   function getInstance (This : in out TransformInfoObjectConfigAndManipulatorFactoryBase; abeClientInformation : AbeClientInformationInterface_Access; transformInfoInterface : TransformInfoInterface_Access; document : Document_Access) return TransformInfoObjectConfigInterface_Access is
   begin
        Java_Throw (Java_New_Exception ("RuntimeException"));
   end getInstance;

   procedure getInstance (This : in out TransformInfoObjectConfigAndManipulatorFactoryBase; abeClientInformation : AbeClientInformationInterface_Access; transformInfoInterface : TransformInfoInterface_Access; objectConfigFileAbPath : AbPath_Access) is
      Java_Result : constant TransformInfoObjectConfigInterface_Access := TransformInfoObjectConfigAndManipulatorFactoryBase'Class (This).getInstance (abeClientInformation, transformInfoInterface, objectConfigFileAbPath);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getInstance (This : in out TransformInfoObjectConfigAndManipulatorFactoryBase; abeClientInformation : AbeClientInformationInterface_Access; transformInfoInterface : TransformInfoInterface_Access) is
      Java_Result : constant TransformInfoObjectConfigInterface_Access := TransformInfoObjectConfigAndManipulatorFactoryBase'Class (This).getInstance (abeClientInformation, transformInfoInterface);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getInstance (This : in out TransformInfoObjectConfigAndManipulatorFactoryBase; abeClientInformation : AbeClientInformationInterface_Access; transformInfoInterface : TransformInfoInterface_Access; document : Document_Access) is
      Java_Result : constant TransformInfoObjectConfigInterface_Access := TransformInfoObjectConfigAndManipulatorFactoryBase'Class (This).getInstance (abeClientInformation, transformInfoInterface, document);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.logic.visual.transform.info.objectConfig.TransformInfoObjectConfigAndManipulatorFactoryBase_Package;


