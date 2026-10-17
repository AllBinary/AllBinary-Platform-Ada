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


package body org.allbinary.game.combat.destroy.event.DestroyEventCircularStaticPool_Package is

   procedure Initialize_Fields (This : in out DestroyEventCircularStaticPool'Class) is
   begin
      null;
      This.EVENT_POOL := AllBinaryEventCircularPool_Package.Create (20);
   end Initialize_Fields;


   function getInstance return DestroyEventCircularStaticPool_Access is
   begin
        return DestroyEventCircularStaticPool_Package.instance;
   end getInstance;

   procedure Initialize (This : in out DestroyEventCircularStaticPool'Class) is
   begin
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return DestroyEventCircularStaticPool_Access is
      This : constant DestroyEventCircularStaticPool_Access := new DestroyEventCircularStaticPool;
   begin
      DestroyEventCircularStaticPool_Package.Initialize (This.all);
      return This;
   end Create;

   procedure init (This : in out DestroyEventCircularStaticPool; combatGameCanvas : AllBinaryGameCanvas_Access) is
   begin
        This.EVENT_POOL.initAllBinaryEventCircularPool (DestroyEventFactory_Package.Create (combatGameCanvas));
   end init;

   --  throws Exception
   function getInstanceForLayer (This : in out DestroyEventCircularStaticPool; layerInterface : AllBinaryLayer_Access) return DestroyedEvent_Access is
      destroyedEvent : DestroyedEvent_Access;
   begin
        destroyedEvent := DestroyedEvent_Access (This.EVENT_POOL.getNextInstance);
        destroyedEvent.setLayerInterfaceForCircularStaticPool (layerInterface);
        return destroyedEvent;
   end getInstanceForLayer;

   procedure getInstanceForLayer (This : in out DestroyEventCircularStaticPool; layerInterface : AllBinaryLayer_Access) is
      Java_Result : constant DestroyedEvent_Access := DestroyEventCircularStaticPool'Class (This).getInstanceForLayer (layerInterface);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstanceForLayer;

begin
   null;
   instance := DestroyEventCircularStaticPool_Package.Create;

end org.allbinary.game.combat.destroy.event.DestroyEventCircularStaticPool_Package;


