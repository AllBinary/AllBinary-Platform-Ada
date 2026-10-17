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


package body org.allbinary.game.layer.special.Special4GameInputProcessor_Package is

   procedure Initialize_Fields (This : in out Special4GameInputProcessor'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out Special4GameInputProcessor'Class; collidableDestroyableDamageableLayer_Param : access CollidableDestroyableDamageableLayer'Class) is
      collidableDestroyableDamageableLayer : CollidableDestroyableDamageableLayer_Access := CollidableDestroyableDamageableLayer_Access (collidableDestroyableDamageableLayer_Param);
   begin
        SpecialGameInputProcessor_Package.Initialize (This, collidableDestroyableDamageableLayer);
   end Initialize;

   function Create (collidableDestroyableDamageableLayer_Param : access CollidableDestroyableDamageableLayer'Class) return Special4GameInputProcessor_Access is
      This : constant Special4GameInputProcessor_Access := new Special4GameInputProcessor;
   begin
      Special4GameInputProcessor_Package.Initialize (This.all, collidableDestroyableDamageableLayer_Param);
      return This;
   end Create;

   --  throws Exception
   procedure processEvent (This : in out Special4GameInputProcessor; allbinaryLayerManager_Param : access AllBinaryLayerManager'Class; gameKeyEvent_Param : access GameKeyEvent'Class) is
      allbinaryLayerManager : AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (allbinaryLayerManager_Param);
      gameKeyEvent : GameKeyEvent_Access := GameKeyEvent_Access (gameKeyEvent_Param);
   begin
        This.collidableDestroyableDamageableLayer.special4 (allbinaryLayerManager, gameKeyEvent);
   end processEvent;

end org.allbinary.game.layer.special.Special4GameInputProcessor_Package;


