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


package body org.allbinary.physics.movement.Movement_Package is

   procedure Initialize_Fields (This : in out Movement'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out Movement'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return Movement_Access is
      This : constant Movement_Access := new Movement;
   begin
      Initialize (This.all);
      return This;
   end Create;

   procedure init (This : in out Movement; speedBasicDecimal : BasicDecimal_Access; angle : Integer; otherAngle : Integer) is
   begin
        null;
   end init;

   --  throws Exception
   procedure process (This : in out Movement; layer : AllBinaryGameLayer_Access) is
   begin
        null;
   end process;

   procedure stop (This : in out Movement) is
   begin
        null;
   end stop;

end org.allbinary.physics.movement.Movement_Package;


