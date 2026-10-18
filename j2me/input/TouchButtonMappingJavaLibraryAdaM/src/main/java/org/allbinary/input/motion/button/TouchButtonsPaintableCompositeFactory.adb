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


with org.allbinary.input.motion.button.TouchButtonsPaintableComposite_Package; use org.allbinary.input.motion.button.TouchButtonsPaintableComposite_Package;

package body org.allbinary.input.motion.button.TouchButtonsPaintableCompositeFactory_Package is

   procedure Initialize_Fields (This : in out TouchButtonsPaintableCompositeFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out TouchButtonsPaintableCompositeFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return TouchButtonsPaintableCompositeFactory_Access is
      This : constant TouchButtonsPaintableCompositeFactory_Access := new TouchButtonsPaintableCompositeFactory;
   begin
      TouchButtonsPaintableCompositeFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance (inputMappingInterface_Param : access InputMappingInterface_Package.InputMappingInterface'Class; basicColor_Param : access BasicColor_Package.BasicColor'Class) return ProcessPaintable_Access is
      inputMappingInterface : constant InputMappingInterface_Access := InputMappingInterface_Access (inputMappingInterface_Param);
      basicColor : constant BasicColor_Access := BasicColor_Access (basicColor_Param);
   begin
        return ProcessPaintable_Access (TouchButtonsPaintableComposite_Package.Create (inputMappingInterface, basicColor));
   end getInstance;

   procedure getInstance (inputMappingInterface_Param : access InputMappingInterface_Package.InputMappingInterface'Class; basicColor_Param : access BasicColor_Package.BasicColor'Class) is
      Java_Result : constant ProcessPaintable_Access := getInstance (inputMappingInterface_Param, basicColor_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.input.motion.button.TouchButtonsPaintableCompositeFactory_Package;


