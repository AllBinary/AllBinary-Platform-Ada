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


package body org.allbinary.physics.movement.NoMovementFactory_Package is

   procedure Initialize_Fields (This : in out NoMovementFactory'Class) is
   begin
      null;
      This.movement := Movement_Package.Create;
   end Initialize_Fields;

   procedure Initialize (This : in out NoMovementFactory'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return NoMovementFactory_Access is
      This : constant NoMovementFactory_Access := new NoMovementFactory;
   begin
      Initialize (This.all);
      return This;
   end Create;


   function getInstance return NoMovementFactory_Access is
   begin
        return NoMovementFactory_Package.instance;
   end getInstance;

   function getMovmentInstance (This : in out NoMovementFactory) return Movement_Access is
   begin
        return This.movement;
   end getMovmentInstance;

   procedure getInstance is
      Java_Result : constant NoMovementFactory_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getMovmentInstance (This : in out NoMovementFactory) is
      Java_Result : constant Movement_Access := NoMovementFactory'Class (This).getMovmentInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getMovmentInstance;

begin
   null;
   instance := NoMovementFactory_Package.Create;

end org.allbinary.physics.movement.NoMovementFactory_Package;


