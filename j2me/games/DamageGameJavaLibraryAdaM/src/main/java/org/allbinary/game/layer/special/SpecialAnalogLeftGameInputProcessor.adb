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


package body org.allbinary.game.layer.special.SpecialAnalogLeftGameInputProcessor_Package is

   procedure Initialize_Fields (This : in out SpecialAnalogLeftGameInputProcessor'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out SpecialAnalogLeftGameInputProcessor'Class; collidableDestroyableDamageableLayer : CollidableDestroyableDamageableLayer_Access) is
   begin
        SpecialGameInputProcessor_Package.Initialize (This, collidableDestroyableDamageableLayer);
   end Initialize;

   function Create (collidableDestroyableDamageableLayer : CollidableDestroyableDamageableLayer_Access) return SpecialAnalogLeftGameInputProcessor_Access is
      This : constant SpecialAnalogLeftGameInputProcessor_Access := new SpecialAnalogLeftGameInputProcessor;
   begin
      SpecialAnalogLeftGameInputProcessor_Package.Initialize (This.all, collidableDestroyableDamageableLayer);
      return This;
   end Create;

   --  throws Exception
   procedure processAnalog (This : in out SpecialAnalogLeftGameInputProcessor; allbinaryLayerManager : AllBinaryLayerManager_Access; gameKeyEvent : GameKeyEvent_Access; xAnalogValue : Integer) is
   begin
        This.collidableDestroyableDamageableLayer.leftAnalog (xAnalogValue);
   end processAnalog;

end org.allbinary.game.layer.special.SpecialAnalogLeftGameInputProcessor_Package;


