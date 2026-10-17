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


package body org.allbinary.game.input.NormalJ2MEGameInputMapping_Package is

   procedure Initialize_Fields (This : in out NormalJ2MEGameInputMapping'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out NormalJ2MEGameInputMapping'Class) is
   begin
      J2MEGameInputMapping_Package.Initialize (This);
      Initialize_Fields (This);
   end Initialize;

   function Create return NormalJ2MEGameInputMapping_Access is
      This : constant NormalJ2MEGameInputMapping_Access := new NormalJ2MEGameInputMapping;
   begin
      NormalJ2MEGameInputMapping_Package.Initialize (This.all);
      return This;
   end Create;


   function getDefault (This : in out NormalJ2MEGameInputMapping) return InputToGameKeyMapping_Access is
   begin
        return NormalJ2MEDefaultGameInputMapping_Package.Create.getInputMapping;
   end getDefault;

end org.allbinary.game.input.NormalJ2MEGameInputMapping_Package;


