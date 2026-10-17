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


package body org.allbinary.game.layer.special.AnalogInputBuilder_Package is

   procedure Initialize_Fields (This : in out AnalogInputBuilder'Class) is
   begin
      null;
   end Initialize_Fields;

   procedure Initialize (This : in out AnalogInputBuilder'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return AnalogInputBuilder_Access is
      This : constant AnalogInputBuilder_Access := new AnalogInputBuilder;
   begin
      Initialize (This.all);
      return This;
   end Create;


   function getInstance return AnalogInputBuilder_Access is
   begin
        return AnalogInputBuilder_Package.instance;
   end getInstance;

   procedure disable (This : in out AnalogInputBuilder; inputProcessorArray : GameInputProcessor_Access_Array_Access; collidableDestroyableDamageableLayer : CollidableDestroyableDamageableLayer_Access) is
   begin
        inputProcessorArray (Canvas_Package.UP) := SpecialUpGameInputProcessor_Package.Create (collidableDestroyableDamageableLayer);
        inputProcessorArray (Canvas_Package.DOWN) := SpecialDownGameInputProcessor_Package.Create (collidableDestroyableDamageableLayer);
        inputProcessorArray (Canvas_Package.RIGHT) := SpecialRightGameInputProcessor_Package.Create (collidableDestroyableDamageableLayer);
        inputProcessorArray (Canvas_Package.LEFT) := SpecialLeftGameInputProcessor_Package.Create (collidableDestroyableDamageableLayer);
        inputProcessorArray (Canvas_Package.KEY_NUM0) := Special1GameInputProcessor_Package.Create (collidableDestroyableDamageableLayer);
        inputProcessorArray (Canvas_Package.KEY_NUM5) := Special3GameInputProcessor_Package.Create (collidableDestroyableDamageableLayer);
   end disable;

   procedure enable (This : in out AnalogInputBuilder; inputProcessorArray : GameInputProcessor_Access_Array_Access; collidableDestroyableDamageableLayer : CollidableDestroyableDamageableLayer_Access) is
   begin
        inputProcessorArray (Canvas_Package.UP) := SpecialAnalogUpGameInputProcessor_Package.Create (collidableDestroyableDamageableLayer);
        inputProcessorArray (Canvas_Package.DOWN) := SpecialAnalogDownGameInputProcessor_Package.Create (collidableDestroyableDamageableLayer);
        inputProcessorArray (Canvas_Package.RIGHT) := SpecialAnalogRightGameInputProcessor_Package.Create (collidableDestroyableDamageableLayer);
        inputProcessorArray (Canvas_Package.LEFT) := SpecialAnalogLeftGameInputProcessor_Package.Create (collidableDestroyableDamageableLayer);
        inputProcessorArray (Canvas_Package.KEY_NUM0) := SpecialAnalogLeftTriggerGameInputProcessor_Package.Create (collidableDestroyableDamageableLayer);
        inputProcessorArray (Canvas_Package.KEY_NUM5) := SpecialAnalogRightTriggerGameInputProcessor_Package.Create (collidableDestroyableDamageableLayer);
   end enable;

   procedure getInstance is
      Java_Result : constant AnalogInputBuilder_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

begin
   null;
   instance := AnalogInputBuilder_Package.Create;

end org.allbinary.game.layer.special.AnalogInputBuilder_Package;


