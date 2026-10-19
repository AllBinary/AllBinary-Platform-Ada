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


with org.allbinary.game.combat.destroy.event.DestroyEventCircularStaticPool_Package; use org.allbinary.game.combat.destroy.event.DestroyEventCircularStaticPool_Package;
with org.allbinary.game.combat.destroy.event.DestroyedEvent_Package; use org.allbinary.game.combat.destroy.event.DestroyedEvent_Package;
with org.allbinary.game.combat.destroy.event.DestroyedEventHandler_Package; use org.allbinary.game.combat.destroy.event.DestroyedEventHandler_Package;
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;

package body org.allbinary.game.combat.destroy.DestroyedLayerProcessor_Package is

   package DestroyEventCircularStaticPool_Package renames Standard.org.allbinary.game.combat.destroy.event.DestroyEventCircularStaticPool_Package;
   package DestroyedEvent_Package renames Standard.org.allbinary.game.combat.destroy.event.DestroyedEvent_Package;
   package DestroyedEventHandler_Package renames Standard.org.allbinary.game.combat.destroy.event.DestroyedEventHandler_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
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
   procedure process (This : in out DestroyedLayerProcessor; allBinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class) is
      allBinaryLayerManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (allBinaryLayerManager_Param);
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
        list := DestroyedLayerProcessor'Class (This).getList;
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


