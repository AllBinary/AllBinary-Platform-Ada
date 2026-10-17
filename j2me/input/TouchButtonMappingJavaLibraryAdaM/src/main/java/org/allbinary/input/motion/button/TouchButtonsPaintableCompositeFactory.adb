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


   function getInstance (inputMappingInterface : InputMappingInterface_Access; basicColor : BasicColor_Access) return ProcessPaintable_Access is
   begin
        return TouchButtonsPaintableComposite_Package.Create (inputMappingInterface, basicColor);
   end getInstance;

   procedure getInstance (inputMappingInterface : InputMappingInterface_Access; basicColor : BasicColor_Access) is
      Java_Result : constant ProcessPaintable_Access := getInstance (inputMappingInterface, basicColor);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.input.motion.button.TouchButtonsPaintableCompositeFactory_Package;


