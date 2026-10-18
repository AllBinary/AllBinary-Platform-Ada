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


with javax.microedition.lcdui.Canvas_Package; use javax.microedition.lcdui.Canvas_Package;
with org.allbinary.game.layer.special.SpecialUpGameInputProcessor_Package; use org.allbinary.game.layer.special.SpecialUpGameInputProcessor_Package;
with org.allbinary.game.layer.special.SpecialDownGameInputProcessor_Package; use org.allbinary.game.layer.special.SpecialDownGameInputProcessor_Package;
with org.allbinary.game.layer.special.SpecialRightGameInputProcessor_Package; use org.allbinary.game.layer.special.SpecialRightGameInputProcessor_Package;
with org.allbinary.game.layer.special.SpecialLeftGameInputProcessor_Package; use org.allbinary.game.layer.special.SpecialLeftGameInputProcessor_Package;
with org.allbinary.game.layer.special.Special1GameInputProcessor_Package; use org.allbinary.game.layer.special.Special1GameInputProcessor_Package;
with org.allbinary.game.layer.special.Special3GameInputProcessor_Package; use org.allbinary.game.layer.special.Special3GameInputProcessor_Package;
with org.allbinary.game.layer.special.SpecialAnalogUpGameInputProcessor_Package; use org.allbinary.game.layer.special.SpecialAnalogUpGameInputProcessor_Package;
with org.allbinary.game.layer.special.SpecialAnalogDownGameInputProcessor_Package; use org.allbinary.game.layer.special.SpecialAnalogDownGameInputProcessor_Package;
with org.allbinary.game.layer.special.SpecialAnalogRightGameInputProcessor_Package; use org.allbinary.game.layer.special.SpecialAnalogRightGameInputProcessor_Package;
with org.allbinary.game.layer.special.SpecialAnalogLeftGameInputProcessor_Package; use org.allbinary.game.layer.special.SpecialAnalogLeftGameInputProcessor_Package;
with org.allbinary.game.layer.special.SpecialAnalogLeftTriggerGameInputProcessor_Package; use org.allbinary.game.layer.special.SpecialAnalogLeftTriggerGameInputProcessor_Package;
with org.allbinary.game.layer.special.SpecialAnalogRightTriggerGameInputProcessor_Package; use org.allbinary.game.layer.special.SpecialAnalogRightTriggerGameInputProcessor_Package;

package body org.allbinary.game.layer.special.AnalogInputBuilder_Package is

   package Canvas_Package renames Standard.javax.microedition.lcdui.Canvas_Package;
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
      AnalogInputBuilder_Package.Initialize (This.all);
      return This;
   end Create;


   function getInstance return AnalogInputBuilder_Access is
   begin
        return AnalogInputBuilder_Package.instance;
   end getInstance;

   procedure disable (This : in out AnalogInputBuilder; inputProcessorArray : GameInputProcessor_Access_Array_Access; collidableDestroyableDamageableLayer_Param : access CollidableDestroyableDamageableLayer_Package.CollidableDestroyableDamageableLayer'Class) is
      collidableDestroyableDamageableLayer : constant CollidableDestroyableDamageableLayer_Access := CollidableDestroyableDamageableLayer_Access (collidableDestroyableDamageableLayer_Param);
   begin
        inputProcessorArray (Canvas_Package.UP) := SpecialUpGameInputProcessor_Package.Create (collidableDestroyableDamageableLayer);
        inputProcessorArray (Canvas_Package.DOWN) := SpecialDownGameInputProcessor_Package.Create (collidableDestroyableDamageableLayer);
        inputProcessorArray (Canvas_Package.RIGHT) := SpecialRightGameInputProcessor_Package.Create (collidableDestroyableDamageableLayer);
        inputProcessorArray (Canvas_Package.LEFT) := SpecialLeftGameInputProcessor_Package.Create (collidableDestroyableDamageableLayer);
        inputProcessorArray (Canvas_Package.KEY_NUM0) := Special1GameInputProcessor_Package.Create (collidableDestroyableDamageableLayer);
        inputProcessorArray (Canvas_Package.KEY_NUM5) := Special3GameInputProcessor_Package.Create (collidableDestroyableDamageableLayer);
   end disable;

   procedure enable (This : in out AnalogInputBuilder; inputProcessorArray : GameInputProcessor_Access_Array_Access; collidableDestroyableDamageableLayer_Param : access CollidableDestroyableDamageableLayer_Package.CollidableDestroyableDamageableLayer'Class) is
      collidableDestroyableDamageableLayer : constant CollidableDestroyableDamageableLayer_Access := CollidableDestroyableDamageableLayer_Access (collidableDestroyableDamageableLayer_Param);
   begin
        inputProcessorArray (Canvas_Package.UP) := SpecialAnalogUpGameInputProcessor_Package.Create (collidableDestroyableDamageableLayer);
        inputProcessorArray (Canvas_Package.DOWN) := SpecialAnalogDownGameInputProcessor_Package.Create (collidableDestroyableDamageableLayer);
        inputProcessorArray (Canvas_Package.RIGHT) := SpecialAnalogRightGameInputProcessor_Package.Create (collidableDestroyableDamageableLayer);
        inputProcessorArray (Canvas_Package.LEFT) := SpecialAnalogLeftGameInputProcessor_Package.Create (collidableDestroyableDamageableLayer);
        inputProcessorArray (Canvas_Package.KEY_NUM0) := SpecialAnalogLeftTriggerGameInputProcessor_Package.Create (collidableDestroyableDamageableLayer);
        inputProcessorArray (Canvas_Package.KEY_NUM5) := SpecialAnalogRightTriggerGameInputProcessor_Package.Create (collidableDestroyableDamageableLayer);
   end enable;

begin
   null;
   instance := AnalogInputBuilder_Package.Create;

end org.allbinary.game.layer.special.AnalogInputBuilder_Package;


