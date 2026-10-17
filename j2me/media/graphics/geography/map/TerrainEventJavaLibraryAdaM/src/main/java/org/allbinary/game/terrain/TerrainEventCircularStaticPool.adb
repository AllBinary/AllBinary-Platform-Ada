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


package body org.allbinary.game.terrain.TerrainEventCircularStaticPool_Package is

   procedure Initialize_Fields (This : in out TerrainEventCircularStaticPool'Class) is
   begin
      null;
      This.EVENT_POOL := AllBinaryEventCircularPool_Package.Create (20);
   end Initialize_Fields;

   procedure Initialize (This : in out TerrainEventCircularStaticPool'Class) is
   begin
      Initialize_Fields (This);
   end Initialize;

   function Create return TerrainEventCircularStaticPool_Access is
      This : constant TerrainEventCircularStaticPool_Access := new TerrainEventCircularStaticPool;
   begin
      Initialize (This.all);
      return This;
   end Create;


   function getInstance return TerrainEventCircularStaticPool_Access is
   begin
        return TerrainEventCircularStaticPool_Package.instance;
   end getInstance;

   procedure init (This : in out TerrainEventCircularStaticPool) is
   begin
        This.EVENT_POOL.initAllBinaryEventCircularPool (TerrainEventFactory_Package.Create);
   end init;

   --  throws Exception
   function getNext (This : in out TerrainEventCircularStaticPool; basicTerrainInfo : BasicTerrainInfo_Access) return TerrainEvent_Access is
      trackingEvent : TerrainEvent_Access;
   begin
        trackingEvent := TerrainEvent_Access (This.EVENT_POOL.getNextInstance);
        trackingEvent.setBasicTerrainInfoForCircularStaticPool (basicTerrainInfo);
        return trackingEvent;
   end getNext;

   procedure getInstance is
      Java_Result : constant TerrainEventCircularStaticPool_Access := getInstance;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getNext (This : in out TerrainEventCircularStaticPool; basicTerrainInfo : BasicTerrainInfo_Access) is
      Java_Result : constant TerrainEvent_Access := TerrainEventCircularStaticPool'Class (This).getNext (basicTerrainInfo);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getNext;

begin
   null;
   instance := TerrainEventCircularStaticPool_Package.Create;

end org.allbinary.game.terrain.TerrainEventCircularStaticPool_Package;


