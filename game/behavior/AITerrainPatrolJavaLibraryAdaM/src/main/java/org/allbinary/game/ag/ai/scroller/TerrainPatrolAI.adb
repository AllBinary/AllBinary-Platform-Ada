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


with org.allbinary.game.input.GameInput_Package; use org.allbinary.game.input.GameInput_Package;
with org.allbinary.game.terrain.BasicTerrainInfo_Package; use org.allbinary.game.terrain.BasicTerrainInfo_Package;
with org.allbinary.game.terrain.TerrainEvent_Package; use org.allbinary.game.terrain.TerrainEvent_Package;
with org.allbinary.game.terrain.TerrainEventCircularStaticPool_Package; use org.allbinary.game.terrain.TerrainEventCircularStaticPool_Package;
with org.allbinary.game.terrain.TerrainEventHandler_Package; use org.allbinary.game.terrain.TerrainEventHandler_Package;
with org.allbinary.game.terrain.TerrainEventListener_Package; use org.allbinary.game.terrain.TerrainEventListener_Package;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.math.Angle_Package; use org.allbinary.math.Angle_Package;
with org.allbinary.math.AngleFactory_Package; use org.allbinary.math.AngleFactory_Package;
with org.allbinary.util.ABHashtable_Package; use org.allbinary.util.ABHashtable_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;

package body org.allbinary.game.ag.ai.scroller.TerrainPatrolAI_Package is

   package TerrainEvent_Package renames Standard.org.allbinary.game.terrain.TerrainEvent_Package;
   package TerrainEventCircularStaticPool_Package renames Standard.org.allbinary.game.terrain.TerrainEventCircularStaticPool_Package;
   package TerrainEventHandler_Package renames Standard.org.allbinary.game.terrain.TerrainEventHandler_Package;
   package AngleFactory_Package renames Standard.org.allbinary.math.AngleFactory_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   subtype GameInput_Access is org.allbinary.game.input.GameInput_Package_References.GameInput_Access;
   function "=" (Left, Right : GameInput_Access) return Boolean renames org.allbinary.game.input.GameInput_Package_References."=";
   subtype GameInput_Access_Array is org.allbinary.game.input.GameInput_Package_References.GameInput_Access_Array;
   function "=" (Left, Right : GameInput_Access_Array) return Boolean renames org.allbinary.game.input.GameInput_Package_References."=";
   subtype GameInput_Access_Array_Access is org.allbinary.game.input.GameInput_Package_References.GameInput_Access_Array_Access;
   function "=" (Left, Right : GameInput_Access_Array_Access) return Boolean renames org.allbinary.game.input.GameInput_Package_References."=";
   subtype GameInput_Access_Array_Access_Array is org.allbinary.game.input.GameInput_Package_References.GameInput_Access_Array_Access_Array;
   function "=" (Left, Right : GameInput_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.GameInput_Package_References."=";
   subtype GameInput_Access_Array_Access_Array_Access is org.allbinary.game.input.GameInput_Package_References.GameInput_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GameInput_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.GameInput_Package_References."=";
   subtype BasicTerrainInfo_Access is org.allbinary.game.terrain.BasicTerrainInfo_Package_References.BasicTerrainInfo_Access;
   function "=" (Left, Right : BasicTerrainInfo_Access) return Boolean renames org.allbinary.game.terrain.BasicTerrainInfo_Package_References."=";
   subtype BasicTerrainInfo_Access_Array is org.allbinary.game.terrain.BasicTerrainInfo_Package_References.BasicTerrainInfo_Access_Array;
   function "=" (Left, Right : BasicTerrainInfo_Access_Array) return Boolean renames org.allbinary.game.terrain.BasicTerrainInfo_Package_References."=";
   subtype BasicTerrainInfo_Access_Array_Access is org.allbinary.game.terrain.BasicTerrainInfo_Package_References.BasicTerrainInfo_Access_Array_Access;
   function "=" (Left, Right : BasicTerrainInfo_Access_Array_Access) return Boolean renames org.allbinary.game.terrain.BasicTerrainInfo_Package_References."=";
   subtype BasicTerrainInfo_Access_Array_Access_Array is org.allbinary.game.terrain.BasicTerrainInfo_Package_References.BasicTerrainInfo_Access_Array_Access_Array;
   function "=" (Left, Right : BasicTerrainInfo_Access_Array_Access_Array) return Boolean renames org.allbinary.game.terrain.BasicTerrainInfo_Package_References."=";
   subtype BasicTerrainInfo_Access_Array_Access_Array_Access is org.allbinary.game.terrain.BasicTerrainInfo_Package_References.BasicTerrainInfo_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicTerrainInfo_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.terrain.BasicTerrainInfo_Package_References."=";
   subtype TerrainEventListener_Access is org.allbinary.game.terrain.TerrainEventListener_Package_References.TerrainEventListener_Access;
   function "=" (Left, Right : TerrainEventListener_Access) return Boolean renames org.allbinary.game.terrain.TerrainEventListener_Package_References."=";
   subtype TerrainEventListener_Access_Array is org.allbinary.game.terrain.TerrainEventListener_Package_References.TerrainEventListener_Access_Array;
   function "=" (Left, Right : TerrainEventListener_Access_Array) return Boolean renames org.allbinary.game.terrain.TerrainEventListener_Package_References."=";
   subtype TerrainEventListener_Access_Array_Access is org.allbinary.game.terrain.TerrainEventListener_Package_References.TerrainEventListener_Access_Array_Access;
   function "=" (Left, Right : TerrainEventListener_Access_Array_Access) return Boolean renames org.allbinary.game.terrain.TerrainEventListener_Package_References."=";
   subtype TerrainEventListener_Access_Array_Access_Array is org.allbinary.game.terrain.TerrainEventListener_Package_References.TerrainEventListener_Access_Array_Access_Array;
   function "=" (Left, Right : TerrainEventListener_Access_Array_Access_Array) return Boolean renames org.allbinary.game.terrain.TerrainEventListener_Package_References."=";
   subtype TerrainEventListener_Access_Array_Access_Array_Access is org.allbinary.game.terrain.TerrainEventListener_Package_References.TerrainEventListener_Access_Array_Access_Array_Access;
   function "=" (Left, Right : TerrainEventListener_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.terrain.TerrainEventListener_Package_References."=";
   subtype AllBinaryLayer_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access;
   function "=" (Left, Right : AllBinaryLayer_Access) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   subtype AllBinaryLayer_Access_Array is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array;
   function "=" (Left, Right : AllBinaryLayer_Access_Array) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   subtype AllBinaryLayer_Access_Array_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access;
   function "=" (Left, Right : AllBinaryLayer_Access_Array_Access) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   subtype AllBinaryLayer_Access_Array_Access_Array is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryLayer_Access_Array_Access_Array) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   subtype AllBinaryLayer_Access_Array_Access_Array_Access is org.allbinary.layer.AllBinaryLayer_Package_References.AllBinaryLayer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryLayer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.layer.AllBinaryLayer_Package_References."=";
   subtype Angle_Access is org.allbinary.math.Angle_Package_References.Angle_Access;
   function "=" (Left, Right : Angle_Access) return Boolean renames org.allbinary.math.Angle_Package_References."=";
   subtype Angle_Access_Array is org.allbinary.math.Angle_Package_References.Angle_Access_Array;
   function "=" (Left, Right : Angle_Access_Array) return Boolean renames org.allbinary.math.Angle_Package_References."=";
   subtype Angle_Access_Array_Access is org.allbinary.math.Angle_Package_References.Angle_Access_Array_Access;
   function "=" (Left, Right : Angle_Access_Array_Access) return Boolean renames org.allbinary.math.Angle_Package_References."=";
   subtype Angle_Access_Array_Access_Array is org.allbinary.math.Angle_Package_References.Angle_Access_Array_Access_Array;
   function "=" (Left, Right : Angle_Access_Array_Access_Array) return Boolean renames org.allbinary.math.Angle_Package_References."=";
   subtype Angle_Access_Array_Access_Array_Access is org.allbinary.math.Angle_Package_References.Angle_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Angle_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.math.Angle_Package_References."=";
   subtype ABHashtable_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access;
   function "=" (Left, Right : ABHashtable_Access) return Boolean renames org.allbinary.util.ABHashtable_Package_References."=";
   subtype ABHashtable_Access_Array is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array;
   function "=" (Left, Right : ABHashtable_Access_Array) return Boolean renames org.allbinary.util.ABHashtable_Package_References."=";
   subtype ABHashtable_Access_Array_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access;
   function "=" (Left, Right : ABHashtable_Access_Array_Access) return Boolean renames org.allbinary.util.ABHashtable_Package_References."=";
   subtype ABHashtable_Access_Array_Access_Array is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access_Array;
   function "=" (Left, Right : ABHashtable_Access_Array_Access_Array) return Boolean renames org.allbinary.util.ABHashtable_Package_References."=";
   subtype ABHashtable_Access_Array_Access_Array_Access is org.allbinary.util.ABHashtable_Package_References.ABHashtable_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ABHashtable_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.ABHashtable_Package_References."=";
   procedure Initialize_Fields (This : in out TerrainPatrolAI'Class) is
   begin
      null;
      This.terrainEventListener := TerrainEventListener_Package.Create;
      This.DOWN := Angle_Access (AngleFactory_Package.getInstance.DOWN);
      This.CLIFF := BasicTerrainInfo_Package.Create (This.DOWN);
   end Initialize_Fields;


   procedure Initialize (This : in out TerrainPatrolAI'Class; hashtable_Param : access ABHashtable_Package.ABHashtable'Class; ownerLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; gameInput_Param : access GameInput_Package.GameInput'Class) is
      hashtable : constant ABHashtable_Access := ABHashtable_Access (hashtable_Param);
      ownerLayerInterface : constant AllBinaryLayer_Access := AllBinaryLayer_Access (ownerLayerInterface_Param);
      gameInput : constant GameInput_Access := GameInput_Access (gameInput_Param);
   begin
        PacePatrolAI_Package.Initialize (This, hashtable, ownerLayerInterface, gameInput);
        Initialize_Fields (This);
        TerrainEventHandler_Package.getInstance (ownerLayerInterface).addListener (This.terrainEventListener);
        This.terrainEventListener.onTerrainEvent (TerrainEventCircularStaticPool_Package.getInstance.getNext (This.CLIFF));
   end Initialize;

   function Create (hashtable_Param : access ABHashtable_Package.ABHashtable'Class; ownerLayerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; gameInput_Param : access GameInput_Package.GameInput'Class) return TerrainPatrolAI_Access is
      This : constant TerrainPatrolAI_Access := new TerrainPatrolAI;
   begin
      TerrainPatrolAI_Package.Initialize (This.all, hashtable_Param, ownerLayerInterface_Param, gameInput_Param);
      return This;
   end Create;

   procedure update (This : in out TerrainPatrolAI) is
   begin
        PacePatrolAI (This).update;
        TerrainPatrolAI'Class (This).changeDirectionIfCliffReached;
   end update;

   procedure changeDirectionIfCliffReached (This : in out TerrainPatrolAI) is
      list : BasicArrayList_Access;
      size : Integer;
      terrainEvent : TerrainEvent_Access;
      basicTerrainInfo : BasicTerrainInfo_Access;
      angle : Angle_Access;
      index : Integer;
   begin
        list := This.terrainEventListener.getList;
        size := list.size;
        for index in 0 .. (size) - 1 loop
            terrainEvent := TerrainEvent_Access (list.removeAt (index));
            basicTerrainInfo := terrainEvent.getBasicTerrainInfo;
            angle := basicTerrainInfo.getAngle;
            if (angle) = (This.DOWN) then
                TerrainPatrolAI'Class (This).nextDirection;
                if not (This.isFollowLimitedByTerrain) then
                    This.logUtil.putF (To_Unbounded_String ("Following Limited"), TerrainPatrolAI_Access'(This'Unchecked_Access), To_Unbounded_String ("onTerrainEvent"));
                    This.isFollowLimitedByTerrain := True;
                end if;
            end if;
        end loop;
   end changeDirectionIfCliffReached;

end org.allbinary.game.ag.ai.scroller.TerrainPatrolAI_Package;


