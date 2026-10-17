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


package body org.allbinary.game.layer.special.SpecialDownGameInputProcessor_Package is

   procedure Initialize_Fields (This : in out SpecialDownGameInputProcessor'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out SpecialDownGameInputProcessor'Class; collidableDestroyableDamageableLayer : CollidableDestroyableDamageableLayer_Access) is
   begin
        SpecialGameInputProcessor_Package.Initialize (This, collidableDestroyableDamageableLayer);
   end Initialize;

   function Create (collidableDestroyableDamageableLayer : CollidableDestroyableDamageableLayer_Access) return SpecialDownGameInputProcessor_Access is
      This : constant SpecialDownGameInputProcessor_Access := new SpecialDownGameInputProcessor;
   begin
      SpecialDownGameInputProcessor_Package.Initialize (This.all, collidableDestroyableDamageableLayer);
      return This;
   end Create;

   --  throws Exception
   procedure processEvent (This : in out SpecialDownGameInputProcessor; allbinaryLayerManager : AllBinaryLayerManager_Access; gameKeyEvent : GameKeyEvent_Access) is
   begin
        This.collidableDestroyableDamageableLayer.down;
   end processEvent;

end org.allbinary.game.layer.special.SpecialDownGameInputProcessor_Package;


