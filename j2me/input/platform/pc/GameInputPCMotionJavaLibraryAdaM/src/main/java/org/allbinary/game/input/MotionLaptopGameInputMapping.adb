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


package body org.allbinary.game.input.MotionLaptopGameInputMapping_Package is

   procedure Initialize_Fields (This : in out MotionLaptopGameInputMapping'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out MotionLaptopGameInputMapping'Class) is
   begin
      PCGameInputMapping_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return MotionLaptopGameInputMapping_Access is
      This : constant MotionLaptopGameInputMapping_Access := new MotionLaptopGameInputMapping;
   begin
      MotionLaptopGameInputMapping_Package.Initialize (This.all);
      return This;
   end Create;


   function getDefault (This : in out MotionLaptopGameInputMapping) return InputToGameKeyMapping_Access is
   begin
        return MotionLaptopDefaultGameInputMapping_Package.Create.getInputMapping;
   end getDefault;

end org.allbinary.game.input.MotionLaptopGameInputMapping_Package;


