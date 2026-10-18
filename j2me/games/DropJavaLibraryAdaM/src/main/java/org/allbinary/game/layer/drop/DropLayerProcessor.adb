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


with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.game.layer.drop.DropLayerInterface_Package; use org.allbinary.game.layer.drop.DropLayerInterface_Package;

package body org.allbinary.game.layer.drop.DropLayerProcessor_Package is

   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   procedure Initialize_Fields (This : in out DropLayerProcessor'Class) is
   begin
      null;
   end Initialize_Fields;


   procedure Initialize (This : in out DropLayerProcessor'Class) is
   begin
      BasicLayerProcessor_Package.Initialize (This);
      Initialize_Fields (This);
        null;
   end Initialize;

   function Create return DropLayerProcessor_Access is
      This : constant DropLayerProcessor_Access := new DropLayerProcessor;
   begin
      DropLayerProcessor_Package.Initialize (This.all);
      return This;
   end Create;

   function getInstance return BasicLayerProcessor_Access is
   begin
        return DropLayerProcessor_Package.LAYER_PROCESSOR;
   end getInstance;

   --  throws Exception
   procedure process (This : in out DropLayerProcessor; allBinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class) is
      allBinaryLayerManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (allBinaryLayerManager_Param);
      list : BasicArrayList_Access;
      size : Integer;
      layerInterface : AllBinaryLayer_Access;
      dropLayerInterface : DropLayerInterface_Access;
      index : Integer;
   begin
        list := DropLayerProcessor'Class (This).getList;
        size := list.size;
        layerInterface := null;
        dropLayerInterface := null;
        for index in 0 .. (size) - 1 loop
            layerInterface := AllBinaryLayer_Access (list.objectArray (index));
            dropLayerInterface := DropLayerInterface_Access (layerInterface);
            layerInterface := AllBinaryLayer_Access (dropLayerInterface.getDroppedLayer);
            allBinaryLayerManager.append (layerInterface);
        end loop;
        list.clear;
   end process;

begin
   null;
   LAYER_PROCESSOR := BasicLayerProcessor_Access (DropLayerProcessor_Package.Create);

end org.allbinary.game.layer.drop.DropLayerProcessor_Package;


