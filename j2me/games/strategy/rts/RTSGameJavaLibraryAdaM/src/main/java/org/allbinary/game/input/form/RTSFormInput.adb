-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2003 AllBinary 
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


package body org.allbinary.game.input.form.RTSFormInput_Package is

   procedure Initialize_Fields (This : in out RTSFormInput'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.groupCommonFactory := GroupCommonFactory_Package.getInstance;
      This.hashtable := StdUtil_Package.getInstance.createHashtable;
      This.newUnconstructedRTSLayerInterfaceArray := new CollidableDestroyableDamageableLayer_Access_Array'(0 .. (7) - 1 => null);
      
      This.selectedGeographicCellPosition := SimpleGeographicMapCellPositionFactory_Package.NULL_GEOGRAPHIC_MAP_CELL_POSITION;
      This.stickyItemSelected := False;
      This.selectedStickyItemIndex := 0;
      This.selectedStickyItem := ABCustomItem_Package.getNullInstance;
   end Initialize_Fields;


   procedure Initialize (This : in out RTSFormInput'Class; groupInterfaceArray : Group_Access_Array_Access) is
      size : Integer;
      index : Integer;
   begin
      Initialize_Fields (This);
        size := This.newUnconstructedRTSLayerInterfaceArray'Length;
        for index in 0 .. (size) - 1 loop
            This.newUnconstructedRTSLayerInterfaceArray (index) := CollidableDestroyableDamageableLayer_Package.getNullInstance;
        end loop;
        This.groupInterfaceArray := groupInterfaceArray;
        This.hashtable.put (DirectionFactory_Package.getInstance.NAME, DirectionFactory_Package.getInstance.DOWN);
        if (groupInterfaceArray) /= (null) then
            This.hashtable.put (This.groupCommonFactory.ID, groupInterfaceArray);
        end if;
   end Initialize;

   function Create (groupInterfaceArray : Group_Access_Array_Access) return RTSFormInput_Access is
      This : constant RTSFormInput_Access := new RTSFormInput;
   begin
      Initialize (This.all, groupInterfaceArray);
      return This;
   end Create;

   --  throws Exception
   procedure setAllBinaryGameLayerManager (This : in out RTSFormInput; allBinaryGameLayerManager : AllBinaryGameLayerManager_Access) is
   begin
        null;
   end setAllBinaryGameLayerManager;

   --  throws Exception
   procedure processAtPoint (This : in out RTSFormInput; associatedRtsLayer : CollidableDestroyableDamageableLayer_Access; rtsPlayerLayerInterface : RTSPlayerLayerInterface_Access; layerManager : AllBinaryLayerManager_Access; point : GPoint_Access) is
      index : Integer;
      scrollSelectionForm : ScrollSelectionForm_Access;
      item : ABCustomItem_Access;
   begin
        index := This.getIndexAt (rtsPlayerLayerInterface, point);
        if (index) < (0) then
            return;
        end if;
        scrollSelectionForm := rtsPlayerLayerInterface.getCurrentScrollSelectionForm;
        item := scrollSelectionForm.get (index);
        if (item) = (null) then
            return;
        end if;
        This.processGameSpecific (associatedRtsLayer, rtsPlayerLayerInterface, layerManager, item, index);
   end processAtPoint;

   --  throws Exception
   procedure process (This : in out RTSFormInput; layerManager : AllBinaryLayerManager_Access) is
   begin
        This.setAllBinaryGameLayerManager (AllBinaryGameLayerManager_Access (layerManager));
   end process;

   --  throws Exception
   procedure processGameSpecific (This : in out RTSFormInput; associatedRtsLayer : CollidableDestroyableDamageableLayer_Access; rtsPlayerLayerInterface : RTSPlayerLayerInterface_Access; layerManager : AllBinaryLayerManager_Access; item : ABCustomItem_Access; index : Integer) is
   begin
        null;
   end processGameSpecific;

   --  throws Exception
   function processSticky (This : in out RTSFormInput; associatedRtsLayer : CollidableDestroyableDamageableLayer_Access; rtsPlayerLayerInterface : RTSPlayerLayerInterface_Access; layerManager : AllBinaryLayerManager_Access; point : GPoint_Access) return Boolean is
      index : Integer;
      scrollSelectionForm : ScrollSelectionForm_Access;
      item : ABCustomItem_Access;
   begin
        index := This.getIndexAt (rtsPlayerLayerInterface, point);
        if (index) < (0) then
            return False;
        end if;
        scrollSelectionForm := rtsPlayerLayerInterface.getCurrentScrollSelectionForm;
        item := scrollSelectionForm.get (index);
        if (item) = (null) then
            return False;
        end if;
        This.processStickyGameSpecific (associatedRtsLayer, rtsPlayerLayerInterface, layerManager, item, index);
        return True;
   end processSticky;

   --  throws Exception
   procedure processStickyGameSpecific (This : in out RTSFormInput; associatedRtsLayer : CollidableDestroyableDamageableLayer_Access; rtsPlayerLayerInterface : RTSPlayerLayerInterface_Access; layerManager : AllBinaryLayerManager_Access; item : ABCustomItem_Access; index : Integer) is
   begin
        null;
   end processStickyGameSpecific;

   --  throws Exception
   function getItemAt (This : in out RTSFormInput; rtsPlayerLayerInterface : RTSPlayerLayerInterface_Access; point : GPoint_Access) return ABCustomItem_Access is
      scrollSelectionForm : ScrollSelectionForm_Access;
   begin
        This.logUtil.putF (StringMaker_Package.Create.append (To_Unbounded_String ("Point: ")).append (StringUtil_Package.getInstance.toString (point)).toString, This'Unchecked_Access, To_Unbounded_String ("getItemAt"));
        scrollSelectionForm := rtsPlayerLayerInterface.getCurrentScrollSelectionForm;
        return scrollSelectionForm.getSelectedItem (point);
   end getItemAt;

   --  throws Exception
   function getIndexAt (This : in out RTSFormInput; rtsPlayerLayerInterface : RTSPlayerLayerInterface_Access; point : GPoint_Access) return Integer is
      scrollSelectionForm : ScrollSelectionForm_Access;
   begin
        This.logUtil.putF (StringMaker_Package.Create.append (To_Unbounded_String ("Point: ")).append (StringUtil_Package.getInstance.toString (point)).toString, This'Unchecked_Access, To_Unbounded_String ("getItemAt"));
        scrollSelectionForm := rtsPlayerLayerInterface.getCurrentScrollSelectionForm;
        return scrollSelectionForm.getSelectedIndexForPoint (point);
   end getIndexAt;

   --  throws Exception
   function getInstance (This : in out RTSFormInput; layerManager : AllBinaryLayerManager_Access; aItem : ABCustomItem_Access; geographicMapCellPosition : GeographicMapCellPosition_Access) return CollidableDestroyableDamageableLayer_Access is
      item : LayerInterfaceFactoryImageItem_Access;
      layerInterfaceFactoryInterface : LayerInterfaceFactoryInterface_Access;
      cellPoint : GPoint_Access;
   begin
        item := LayerInterfaceFactoryImageItem_Access (aItem);
        layerInterfaceFactoryInterface := item.getLayerInterfaceFactoryInterface;
        cellPoint := geographicMapCellPosition.getPoint;
        if (layerInterfaceFactoryInterface) /= (null) then
            This.hashtable.put (AllBinaryGameLayerManager_Package.ID, layerManager);
            return RTSLayer_Access (layerInterfaceFactoryInterface.getNextInstance (This.getHashtable, cellPoint.getX, cellPoint.getY, cellPoint.getZ));
        end if;
        return CollidableDestroyableDamageableLayer_Package.getNullInstance;
   end getInstance;

   function getSelectedGeographicCellPosition (This : in out RTSFormInput) return GeographicMapCellPosition_Access is
   begin
        return This.selectedGeographicCellPosition;
   end getSelectedGeographicCellPosition;

   procedure setSelectedGeographicCellPosition (This : in out RTSFormInput; selectedGeographicCellPosition : GeographicMapCellPosition_Access) is
   begin
        This.logUtil.putF (StringMaker_Package.Create.append (To_Unbounded_String ("Selected GeographicMapCellPosition: ")).append (selectedGeographicCellPosition.toString).toString, This'Unchecked_Access, To_Unbounded_String ("setSelectedGeographicCellPosition"));
        This.selectedGeographicCellPosition := selectedGeographicCellPosition;
   end setSelectedGeographicCellPosition;

   function isStickyItemSelected (This : in out RTSFormInput) return Boolean is
   begin
        return This.stickyItemSelected;
   end isStickyItemSelected;

   procedure setStickyItemSelected (This : in out RTSFormInput; stickyItemSelected : Boolean) is
   begin
        This.stickyItemSelected := stickyItemSelected;
   end setStickyItemSelected;

   function getSelectedStickyItem (This : in out RTSFormInput) return ABCustomItem_Access is
   begin
        return This.selectedStickyItem;
   end getSelectedStickyItem;

   procedure setSelectedStickyItem (This : in out RTSFormInput; selectedStickyItem : ABCustomItem_Access) is
   begin
        This.selectedStickyItem := selectedStickyItem;
   end setSelectedStickyItem;

   function getSelectedStickyItemIndex (This : in out RTSFormInput) return Integer is
   begin
        return This.selectedStickyItemIndex;
   end getSelectedStickyItemIndex;

   procedure setSelectedStickyItemIndex (This : in out RTSFormInput; selectedStickyItemIndex : Integer) is
   begin
        This.selectedStickyItemIndex := selectedStickyItemIndex;
   end setSelectedStickyItemIndex;

   function getHashtable (This : in out RTSFormInput) return ABHashtable_Access is
   begin
        return This.hashtable;
   end getHashtable;

   procedure processSticky (This : in out RTSFormInput; associatedRtsLayer : CollidableDestroyableDamageableLayer_Access; rtsPlayerLayerInterface : RTSPlayerLayerInterface_Access; layerManager : AllBinaryLayerManager_Access; point : GPoint_Access) is
      Java_Result : constant Boolean := RTSFormInput'Class (This).processSticky (associatedRtsLayer, rtsPlayerLayerInterface, layerManager, point);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end processSticky;

   procedure getItemAt (This : in out RTSFormInput; rtsPlayerLayerInterface : RTSPlayerLayerInterface_Access; point : GPoint_Access) is
      Java_Result : constant ABCustomItem_Access := RTSFormInput'Class (This).getItemAt (rtsPlayerLayerInterface, point);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getItemAt;

   procedure getIndexAt (This : in out RTSFormInput; rtsPlayerLayerInterface : RTSPlayerLayerInterface_Access; point : GPoint_Access) is
      Java_Result : constant Integer := RTSFormInput'Class (This).getIndexAt (rtsPlayerLayerInterface, point);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getIndexAt;

   procedure getInstance (This : in out RTSFormInput; layerManager : AllBinaryLayerManager_Access; aItem : ABCustomItem_Access; geographicMapCellPosition : GeographicMapCellPosition_Access) is
      Java_Result : constant CollidableDestroyableDamageableLayer_Access := RTSFormInput'Class (This).getInstance (layerManager, aItem, geographicMapCellPosition);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

   procedure getSelectedGeographicCellPosition (This : in out RTSFormInput) is
      Java_Result : constant GeographicMapCellPosition_Access := RTSFormInput'Class (This).getSelectedGeographicCellPosition;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getSelectedGeographicCellPosition;

   procedure isStickyItemSelected (This : in out RTSFormInput) is
      Java_Result : constant Boolean := RTSFormInput'Class (This).isStickyItemSelected;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isStickyItemSelected;

   procedure getSelectedStickyItem (This : in out RTSFormInput) is
      Java_Result : constant ABCustomItem_Access := RTSFormInput'Class (This).getSelectedStickyItem;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getSelectedStickyItem;

   procedure getSelectedStickyItemIndex (This : in out RTSFormInput) is
      Java_Result : constant Integer := RTSFormInput'Class (This).getSelectedStickyItemIndex;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getSelectedStickyItemIndex;

   procedure getHashtable (This : in out RTSFormInput) is
      Java_Result : constant ABHashtable_Access := RTSFormInput'Class (This).getHashtable;
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getHashtable;

end org.allbinary.game.input.form.RTSFormInput_Package;


