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


   function getInstance (basicColor : BasicColor_Access) return Paintable_Access is
   begin
        return Paintable_Package.Create;
   end getInstance;

   procedure getInstance (basicColor : BasicColor_Access) is
      Java_Result : constant Paintable_Access := getInstance (basicColor);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.input.motion.button.TouchButtonsPaintableFactory_Package;


