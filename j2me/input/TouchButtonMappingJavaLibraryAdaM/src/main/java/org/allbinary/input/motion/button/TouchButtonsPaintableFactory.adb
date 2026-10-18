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


with org.allbinary.input.motion.button.TouchButtonsPaintable_Package; use org.allbinary.input.motion.button.TouchButtonsPaintable_Package;

package body org.allbinary.input.motion.button.TouchButtonsPaintableFactory_Package is

   procedure Initialize_Fields (This : in out TouchButtonsPaintableFactory'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out TouchButtonsPaintableFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return TouchButtonsPaintableFactory_Access is
      This : constant TouchButtonsPaintableFactory_Access := new TouchButtonsPaintableFactory;
   begin
      TouchButtonsPaintableFactory_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance (basicColor_Param : access BasicColor_Package.BasicColor'Class) return Paintable_Access is
      basicColor : constant BasicColor_Access := BasicColor_Access (basicColor_Param);
   begin
        return Paintable_Access (TouchButtonsPaintable_Package.Create (basicColor));
   end getInstance;

   procedure getInstance (basicColor_Param : access BasicColor_Package.BasicColor'Class) is
      Java_Result : constant Paintable_Access := getInstance (basicColor_Param => basicColor_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.input.motion.button.TouchButtonsPaintableFactory_Package;


