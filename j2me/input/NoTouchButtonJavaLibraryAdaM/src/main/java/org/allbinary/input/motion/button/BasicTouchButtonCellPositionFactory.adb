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


package body org.allbinary.input.motion.button.BasicTouchButtonCellPositionFactory_Package is

   procedure Initialize_Fields (This : in out BasicTouchButtonCellPositionFactory'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out BasicTouchButtonCellPositionFactory'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return BasicTouchButtonCellPositionFactory_Access is
      This : constant BasicTouchButtonCellPositionFactory_Access := new BasicTouchButtonCellPositionFactory;
   begin
      BasicTouchButtonCellPositionFactory_Package.Initialize (This.all);
      return This;
   end Create;

   procedure init is
   begin
        null;
   end init;

end org.allbinary.input.motion.button.BasicTouchButtonCellPositionFactory_Package;


