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


package body org.allbinary.game.combat.destroy.DestroyedLayerProcessor_Package is

   procedure Initialize_Fields (This : in out DestroyedLayerProcessor'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out DestroyedLayerProcessor'Class) is
   begin
      BasicLayerProcessor_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return DestroyedLayerProcessor_Access is
      This : constant DestroyedLayerProcessor_Access := new DestroyedLayerProcessor;
   begin
      DestroyedLayerProcessor_Package.Initialize (This.all);
      return This;
   end Create;

   procedure init is
   begin
        DestroyedLayerProcessor_Package.DESTROYED_LAYER_PROCESSOR := DestroyedLayerProcessor_Package.Create;
   end init;

   function getInstance return BasicLayerProcessor_Access is
   begin
        return DestroyedLayerProcessor_Package.DESTROYED_LAYER_PROCESSOR;
   end getInstance;

   --  throws Exception
   procedure process (This : in out DestroyedLayerProcessor; allBinaryLayerManager : AllBinaryLayerManager_Access) is
      list : BasicArrayList_Access;
      size : Integer;
      destroyedEventHandler : DestroyedEventHandler_Access;
      destroyEventCircularStaticPool : DestroyEventCircularStaticPool_Access;
      destroyedEvent : DestroyedEvent_Access;
      layerInterface : AllBinaryLayer_Access;
      layerInterfaceCanBeNull : Java_Object_Access;
      commonStrings : CommonStrings_Access;
      index : Integer;
   begin
        list := This.getList;
        size := list.size;
        destroyedEventHandler := DestroyedEventHandler_Package.getInstance;
        destroyEventCircularStaticPool := DestroyEventCircularStaticPool_Package.getInstance;
        destroyedEvent := null;
        layerInterface := null;
        for index in 0 .. (size) - 1 loop
            layerInterfaceCanBeNull := list.objectArray (index);
            if (layerInterfaceCanBeNull) /= (null) then
                layerInterface := AllBinaryLayer_Access (layerInterfaceCanBeNull);
                allBinaryLayerManager.remove (layerInterface);
                destroyedEvent := destroyEventCircularStaticPool.getInstanceForLayer (layerInterface);
                destroyedEventHandler.fireEvent (destroyedEvent);
            else
                commonStrings := CommonStrings_Package.getInstance;
            end if;
        end loop;
        list.clear;
   end process;

begin
   null;
   DESTROYED_LAYER_PROCESSOR := BasicLayerProcessor_Package.NULL_LAYER_PROCESSOR;

end org.allbinary.game.combat.destroy.DestroyedLayerProcessor_Package;


