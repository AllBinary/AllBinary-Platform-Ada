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


package body org.allbinary.game.ag.ai.scroller.TerrainPatrolAI_Package is

   procedure Initialize_Fields (This : in out TerrainPatrolAI'Class) is
   begin
      null;
      This.terrainEventListener := TerrainEventListener_Package.Create;
      This.DOWN := AngleFactory_Package.getInstance.DOWN;
      This.CLIFF := BasicTerrainInfo_Package.Create (This.DOWN);
   end Initialize_Fields;


   procedure Initialize (This : in out TerrainPatrolAI'Class; hashtable : ABHashtable_Access; ownerLayerInterface : AllBinaryLayer_Access; gameInput : GameInput_Access) is
   begin
        PacePatrolAI_Package.Initialize (This, hashtable, ownerLayerInterface, gameInput);
        Initialize_Fields (This);
        TerrainEventHandler_Package.getInstance (ownerLayerInterface).addListener (This.terrainEventListener);
        This.terrainEventListener.onTerrainEvent (TerrainEventCircularStaticPool_Package.getInstance.getNext (This.CLIFF));
   end Initialize;

   function Create (hashtable : ABHashtable_Access; ownerLayerInterface : AllBinaryLayer_Access; gameInput : GameInput_Access) return TerrainPatrolAI_Access is
      This : constant TerrainPatrolAI_Access := new TerrainPatrolAI;
   begin
      Initialize (This.all, hashtable, ownerLayerInterface, gameInput);
      return This;
   end Create;

   procedure update (This : in out TerrainPatrolAI) is
   begin
        PacePatrolAI (This).update;
        This.changeDirectionIfCliffReached;
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
                This.nextDirection;
                if not (This.isFollowLimitedByTerrain) then
                    This.logUtil.putF (To_Unbounded_String ("Following Limited"), This'Unchecked_Access, To_Unbounded_String ("onTerrainEvent"));
                    This.isFollowLimitedByTerrain := True;
                end if;
            end if;
        end loop;
   end changeDirectionIfCliffReached;

end org.allbinary.game.ag.ai.scroller.TerrainPatrolAI_Package;


