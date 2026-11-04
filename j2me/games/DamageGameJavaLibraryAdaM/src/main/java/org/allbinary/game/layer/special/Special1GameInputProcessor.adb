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


with org.allbinary.game.input.event.GameKeyEvent_Package; use org.allbinary.game.input.event.GameKeyEvent_Package;
with org.allbinary.game.input.event.GameKeyEvent_Package_References;
with org.allbinary.layer.AllBinaryLayerManager_Package; use org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package_References;
with org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package; use org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package;
with org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References;
with org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package;
with org.allbinary.game.combat.damage.DamageableInterface_Package;
with org.allbinary.game.combat.destroy.DestroyableInterface_Package;
with org.allbinary.game.combat.destroy.event.DestroyedEvent_Package;
with org.allbinary.game.layer.pickup.PickupBehavior_Package;
with org.allbinary.game.layer.pickup.PickupBehaviorInterface_Package;
with org.allbinary.game.layer.pickup.PickupCompositeInterface_Package;

package body org.allbinary.game.layer.special.Special1GameInputProcessor_Package is

   subtype GameKeyEvent_Access is org.allbinary.game.input.event.GameKeyEvent_Package_References.GameKeyEvent_Access;
   function "=" (Left, Right : GameKeyEvent_Access) return Boolean renames org.allbinary.game.input.event.GameKeyEvent_Package_References."=";
   subtype GameKeyEvent_Access_Array is org.allbinary.game.input.event.GameKeyEvent_Package_References.GameKeyEvent_Access_Array;
   function "=" (Left, Right : GameKeyEvent_Access_Array) return Boolean renames org.allbinary.game.input.event.GameKeyEvent_Package_References."=";
   subtype GameKeyEvent_Access_Array_Access is org.allbinary.game.input.event.GameKeyEvent_Package_References.GameKeyEvent_Access_Array_Access;
   function "=" (Left, Right : GameKeyEvent_Access_Array_Access) return Boolean renames org.allbinary.game.input.event.GameKeyEvent_Package_References."=";
   subtype GameKeyEvent_Access_Array_Access_Array is org.allbinary.game.input.event.GameKeyEvent_Package_References.GameKeyEvent_Access_Array_Access_Array;
   function "=" (Left, Right : GameKeyEvent_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.event.GameKeyEvent_Package_References."=";
   subtype GameKeyEvent_Access_Array_Access_Array_Access is org.allbinary.game.input.event.GameKeyEvent_Package_References.GameKeyEvent_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameKeyEvent_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.event.GameKeyEvent_Package_References."=";
   subtype AllBinaryLayerManager_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access;
   function "=" (Left, Right : AllBinaryLayerManager_Access) return Boolean renames org.allbinary.layer.AllBinaryLayerManager_Package_References."=";
   subtype AllBinaryLayerManager_Access_Array is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array;
   function "=" (Left, Right : AllBinaryLayerManager_Access_Array) return Boolean renames org.allbinary.layer.AllBinaryLayerManager_Package_References."=";
   subtype AllBinaryLayerManager_Access_Array_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access;
   function "=" (Left, Right : AllBinaryLayerManager_Access_Array_Access) return Boolean renames org.allbinary.layer.AllBinaryLayerManager_Package_References."=";
   subtype AllBinaryLayerManager_Access_Array_Access_Array is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryLayerManager_Access_Array_Access_Array) return Boolean renames org.allbinary.layer.AllBinaryLayerManager_Package_References."=";
   subtype AllBinaryLayerManager_Access_Array_Access_Array_Access is org.allbinary.layer.AllBinaryLayerManager_Package_References.AllBinaryLayerManager_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryLayerManager_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.layer.AllBinaryLayerManager_Package_References."=";
   subtype CollidableDestroyableDamageableLayer_Access is org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References.CollidableDestroyableDamageableLayer_Access;
   function "=" (Left, Right : CollidableDestroyableDamageableLayer_Access) return Boolean renames org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References."=";
   subtype CollidableDestroyableDamageableLayer_Access_Array is org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References.CollidableDestroyableDamageableLayer_Access_Array;
   function "=" (Left, Right : CollidableDestroyableDamageableLayer_Access_Array) return Boolean renames org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References."=";
   subtype CollidableDestroyableDamageableLayer_Access_Array_Access is org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References.CollidableDestroyableDamageableLayer_Access_Array_Access;
   function "=" (Left, Right : CollidableDestroyableDamageableLayer_Access_Array_Access) return Boolean renames org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References."=";
   subtype CollidableDestroyableDamageableLayer_Access_Array_Access_Array is org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References.CollidableDestroyableDamageableLayer_Access_Array_Access_Array;
   function "=" (Left, Right : CollidableDestroyableDamageableLayer_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References."=";
   subtype CollidableDestroyableDamageableLayer_Access_Array_Access_Array_Access is org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References.CollidableDestroyableDamageableLayer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : CollidableDestroyableDamageableLayer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer_Package_References."=";
   procedure Initialize_Fields (This : in out Special1GameInputProcessor'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out Special1GameInputProcessor'Class; collidableDestroyableDamageableLayer_Param : access CollidableDestroyableDamageableLayer_Package.CollidableDestroyableDamageableLayer'Class) is
      collidableDestroyableDamageableLayer : constant CollidableDestroyableDamageableLayer_Access := CollidableDestroyableDamageableLayer_Access (collidableDestroyableDamageableLayer_Param);
   begin
        SpecialGameInputProcessor_Package.Initialize (This, collidableDestroyableDamageableLayer);
   end Initialize;

   function Create (collidableDestroyableDamageableLayer_Param : access CollidableDestroyableDamageableLayer_Package.CollidableDestroyableDamageableLayer'Class) return Special1GameInputProcessor_Access is
      This : constant Special1GameInputProcessor_Access := new Special1GameInputProcessor;
   begin
      Special1GameInputProcessor_Package.Initialize (This.all, collidableDestroyableDamageableLayer_Param);
      return This;
   end Create;

   --  throws Exception
   procedure processEvent (This : in out Special1GameInputProcessor; allbinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; gameKeyEvent_Param : access GameKeyEvent_Package.GameKeyEvent'Class) is
      allbinaryLayerManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (allbinaryLayerManager_Param);
      gameKeyEvent : constant GameKeyEvent_Access := GameKeyEvent_Access (gameKeyEvent_Param);
   begin
        This.collidableDestroyableDamageableLayer.special1 (allbinaryLayerManager, gameKeyEvent);
   end processEvent;

end org.allbinary.game.layer.special.Special1GameInputProcessor_Package;


