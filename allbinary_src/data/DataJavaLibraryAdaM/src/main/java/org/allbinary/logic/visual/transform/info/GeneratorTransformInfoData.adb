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


package body org.allbinary.logic.visual.transform.info.GeneratorTransformInfoData_Package is

   procedure Initialize_Fields (This : in out GeneratorTransformInfoData'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out GeneratorTransformInfoData'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return GeneratorTransformInfoData_Access is
      This : constant GeneratorTransformInfoData_Access := new GeneratorTransformInfoData;
   begin
      GeneratorTransformInfoData_Package.Initialize (This.all);
      return This;
   end Create;

begin
   null;
   NAME := To_Unbounded_String ("GENERATOR_TRANSFORM_INFO_NAME");

end org.allbinary.logic.visual.transform.info.GeneratorTransformInfoData_Package;


