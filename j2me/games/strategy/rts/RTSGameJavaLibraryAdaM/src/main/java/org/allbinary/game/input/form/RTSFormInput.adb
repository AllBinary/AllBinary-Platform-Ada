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


with org.allbinary.game.layer.RTSLayer_Package; use org.allbinary.game.layer.RTSLayer_Package;
with org.allbinary.game.layer.item.LayerInterfaceFactoryImageItem_Package; use org.allbinary.game.layer.item.LayerInterfaceFactoryImageItem_Package;
with org.allbinary.direction.DirectionFactory_Package; use org.allbinary.direction.DirectionFactory_Package;
with org.allbinary.graphics.form.ScrollSelectionForm_Package; use org.allbinary.graphics.form.ScrollSelectionForm_Package;
with org.allbinary.layer.LayerInterfaceFactoryInterface_Package; use org.allbinary.layer.LayerInterfaceFactoryInterface_Package;
with org.allbinary.logic.StdUtil_Package; use org.allbinary.logic.StdUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package; use org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory_Package; use org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory_Package;

package body org.allbinary.game.input.form.RTSFormInput_Package is

   package RTSLayer_Package renames Standard.org.allbinary.game.layer.RTSLayer_Package;
   package LayerInterfaceFactoryImageItem_Package renames Standard.org.allbinary.game.layer.item.LayerInterfaceFactoryImageItem_Package;
   package DirectionFactory_Package renames Standard.org.allbinary.direction.DirectionFactory_Package;
   package ScrollSelectionForm_Package renames Standard.org.allbinary.graphics.form.ScrollSelectionForm_Package;
   package LayerInterfaceFactoryInterface_Package renames Standard.org.allbinary.layer.LayerInterfaceFactoryInterface_Package;
   package StdUtil_Package renames Standard.org.allbinary.logic.StdUtil_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;
   package StringUtil_Package renames Standard.org.allbinary.logic.string_Id.StringUtil_Package;
   package SimpleGeographicMapCellPositionFactory_Package renames Standard.org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory_Package;
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
      RTSFormInput_Package.Initialize (This.all, groupInterfaceArray);
      return This;
   end Create;

   --  throws Exception
   procedure setAllBinaryGameLayerManager (This : in out RTSFormInput; allBinaryGameLayerManager_Param : access AllBinaryGameLayerManager_Package.AllBinaryGameLayerManager'Class) is
      allBinaryGameLayerManager : constant AllBinaryGameLayerManager_Access := AllBinaryGameLayerManager_Access (allBinaryGameLayerManager_Param);
   begin
        null;
   end setAllBinaryGameLayerManager;

   --  throws Exception
   procedure processAtPoint (This : in out RTSFormInput; associatedRtsLayer_Param : access CollidableDestroyableDamageableLayer_Package.CollidableDestroyableDamageableLayer'Class; rtsPlayerLayerInterface_Param : access RTSPlayerLayerInterface_Package.RTSPlayerLayerInterface'Class; layerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; point_Param : access GPoint_Package.GPoint'Class) is
      associatedRtsLayer : constant CollidableDestroyableDamageableLayer_Access := CollidableDestroyableDamageableLayer_Access (associatedRtsLayer_Param);
      rtsPlayerLayerInterface : constant RTSPlayerLayerInterface_Access := RTSPlayerLayerInterface_Access (rtsPlayerLayerInterface_Param);
      layerManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (layerManager_Param);
      point : constant GPoint_Access := GPoint_Access (point_Param);
      index : Integer;
      scrollSelectionForm : ScrollSelectionForm_Access;
      item : ABCustomItem_Access;
   begin
        index := RTSFormInput'Class (This).getIndexAt (rtsPlayerLayerInterface, point);
        if (index) < (0) then
            return;
        end if;
        scrollSelectionForm := rtsPlayerLayerInterface.getCurrentScrollSelectionForm;
        item := scrollSelectionForm.get (index);
        if (item) = (null) then
            return;
        end if;
        RTSFormInput'Class (This).processGameSpecific (associatedRtsLayer, rtsPlayerLayerInterface, layerManager, item, index);
   end processAtPoint;

   --  throws Exception
   procedure process (This : in out RTSFormInput; layerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class) is
      layerManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (layerManager_Param);
   begin
        RTSFormInput'Class (This).setAllBinaryGameLayerManager (AllBinaryGameLayerManager_Access (layerManager));
   end process;

   --  throws Exception
   procedure processGameSpecific (This : in out RTSFormInput; associatedRtsLayer_Param : access CollidableDestroyableDamageableLayer_Package.CollidableDestroyableDamageableLayer'Class; rtsPlayerLayerInterface_Param : access RTSPlayerLayerInterface_Package.RTSPlayerLayerInterface'Class; layerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; item_Param : access ABCustomItem_Package.ABCustomItem'Class; index : Integer) is
      associatedRtsLayer : constant CollidableDestroyableDamageableLayer_Access := CollidableDestroyableDamageableLayer_Access (associatedRtsLayer_Param);
      rtsPlayerLayerInterface : constant RTSPlayerLayerInterface_Access := RTSPlayerLayerInterface_Access (rtsPlayerLayerInterface_Param);
      layerManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (layerManager_Param);
      item : constant ABCustomItem_Access := ABCustomItem_Access (item_Param);
   begin
        null;
   end processGameSpecific;

   --  throws Exception
   function processSticky (This : in out RTSFormInput; associatedRtsLayer_Param : access CollidableDestroyableDamageableLayer_Package.CollidableDestroyableDamageableLayer'Class; rtsPlayerLayerInterface_Param : access RTSPlayerLayerInterface_Package.RTSPlayerLayerInterface'Class; layerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; point_Param : access GPoint_Package.GPoint'Class) return Boolean is
      associatedRtsLayer : constant CollidableDestroyableDamageableLayer_Access := CollidableDestroyableDamageableLayer_Access (associatedRtsLayer_Param);
      rtsPlayerLayerInterface : constant RTSPlayerLayerInterface_Access := RTSPlayerLayerInterface_Access (rtsPlayerLayerInterface_Param);
      layerManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (layerManager_Param);
      point : constant GPoint_Access := GPoint_Access (point_Param);
      index : Integer;
      scrollSelectionForm : ScrollSelectionForm_Access;
      item : ABCustomItem_Access;
   begin
        index := RTSFormInput'Class (This).getIndexAt (rtsPlayerLayerInterface, point);
        if (index) < (0) then
            return False;
        end if;
        scrollSelectionForm := rtsPlayerLayerInterface.getCurrentScrollSelectionForm;
        item := scrollSelectionForm.get (index);
        if (item) = (null) then
            return False;
        end if;
        RTSFormInput'Class (This).processStickyGameSpecific (associatedRtsLayer, rtsPlayerLayerInterface, layerManager, item, index);
        return True;
   end processSticky;

   --  throws Exception
   procedure processStickyGameSpecific (This : in out RTSFormInput; associatedRtsLayer_Param : access CollidableDestroyableDamageableLayer_Package.CollidableDestroyableDamageableLayer'Class; rtsPlayerLayerInterface_Param : access RTSPlayerLayerInterface_Package.RTSPlayerLayerInterface'Class; layerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; item_Param : access ABCustomItem_Package.ABCustomItem'Class; index : Integer) is
      associatedRtsLayer : constant CollidableDestroyableDamageableLayer_Access := CollidableDestroyableDamageableLayer_Access (associatedRtsLayer_Param);
      rtsPlayerLayerInterface : constant RTSPlayerLayerInterface_Access := RTSPlayerLayerInterface_Access (rtsPlayerLayerInterface_Param);
      layerManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (layerManager_Param);
      item : constant ABCustomItem_Access := ABCustomItem_Access (item_Param);
   begin
        null;
   end processStickyGameSpecific;

   --  throws Exception
   function getItemAt (This : in out RTSFormInput; rtsPlayerLayerInterface_Param : access RTSPlayerLayerInterface_Package.RTSPlayerLayerInterface'Class; point_Param : access GPoint_Package.GPoint'Class) return ABCustomItem_Access is
      rtsPlayerLayerInterface : constant RTSPlayerLayerInterface_Access := RTSPlayerLayerInterface_Access (rtsPlayerLayerInterface_Param);
      point : constant GPoint_Access := GPoint_Access (point_Param);
      scrollSelectionForm : ScrollSelectionForm_Access;
   begin
        This.logUtil.putF (StringMaker_Package.Create.append (To_Unbounded_String ("Point: ")).append (StringUtil_Package.getInstance.toString (point)).toString, RTSFormInput_Access'(This'Unchecked_Access), To_Unbounded_String ("getItemAt"));
        scrollSelectionForm := rtsPlayerLayerInterface.getCurrentScrollSelectionForm;
        return scrollSelectionForm.getSelectedItem (point);
   end getItemAt;

   --  throws Exception
   function getIndexAt (This : in out RTSFormInput; rtsPlayerLayerInterface_Param : access RTSPlayerLayerInterface_Package.RTSPlayerLayerInterface'Class; point_Param : access GPoint_Package.GPoint'Class) return Integer is
      rtsPlayerLayerInterface : constant RTSPlayerLayerInterface_Access := RTSPlayerLayerInterface_Access (rtsPlayerLayerInterface_Param);
      point : constant GPoint_Access := GPoint_Access (point_Param);
      scrollSelectionForm : ScrollSelectionForm_Access;
   begin
        This.logUtil.putF (StringMaker_Package.Create.append (To_Unbounded_String ("Point: ")).append (StringUtil_Package.getInstance.toString (point)).toString, RTSFormInput_Access'(This'Unchecked_Access), To_Unbounded_String ("getItemAt"));
        scrollSelectionForm := rtsPlayerLayerInterface.getCurrentScrollSelectionForm;
        return scrollSelectionForm.getSelectedIndexForPoint (point);
   end getIndexAt;

   --  throws Exception
   function getInstance (This : in out RTSFormInput; layerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; aItem_Param : access ABCustomItem_Package.ABCustomItem'Class; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) return CollidableDestroyableDamageableLayer_Access is
      layerManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (layerManager_Param);
      aItem : constant ABCustomItem_Access := ABCustomItem_Access (aItem_Param);
      geographicMapCellPosition : constant GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (geographicMapCellPosition_Param);
      item : LayerInterfaceFactoryImageItem_Access;
      layerInterfaceFactoryInterface : LayerInterfaceFactoryInterface_Access;
      cellPoint : GPoint_Access;
   begin
        item := LayerInterfaceFactoryImageItem_Access (aItem);
        layerInterfaceFactoryInterface := LayerInterfaceFactoryInterface_Access (item.getLayerInterfaceFactoryInterface);
        cellPoint := geographicMapCellPosition.getPoint;
        if (layerInterfaceFactoryInterface) /= (null) then
            This.hashtable.put (AllBinaryGameLayerManager_Package.ID, layerManager);
            return RTSLayer_Access (layerInterfaceFactoryInterface.getNextInstance (RTSFormInput'Class (This).getHashtable, cellPoint.getX, cellPoint.getY, cellPoint.getZ));
        end if;
        return CollidableDestroyableDamageableLayer_Package.getNullInstance;
   end getInstance;

   function getSelectedGeographicCellPosition (This : in out RTSFormInput) return GeographicMapCellPosition_Access is
   begin
        return This.selectedGeographicCellPosition;
   end getSelectedGeographicCellPosition;

   procedure setSelectedGeographicCellPosition (This : in out RTSFormInput; selectedGeographicCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) is
      selectedGeographicCellPosition : constant GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (selectedGeographicCellPosition_Param);
   begin
        This.logUtil.putF (StringMaker_Package.Create.append (To_Unbounded_String ("Selected GeographicMapCellPosition: ")).append (selectedGeographicCellPosition.toString).toString, RTSFormInput_Access'(This'Unchecked_Access), To_Unbounded_String ("setSelectedGeographicCellPosition"));
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

   procedure setSelectedStickyItem (This : in out RTSFormInput; selectedStickyItem_Param : access ABCustomItem_Package.ABCustomItem'Class) is
      selectedStickyItem : constant ABCustomItem_Access := ABCustomItem_Access (selectedStickyItem_Param);
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

   procedure processSticky (This : in out RTSFormInput; associatedRtsLayer_Param : access CollidableDestroyableDamageableLayer_Package.CollidableDestroyableDamageableLayer'Class; rtsPlayerLayerInterface_Param : access RTSPlayerLayerInterface_Package.RTSPlayerLayerInterface'Class; layerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; point_Param : access GPoint_Package.GPoint'Class) is
      Java_Result : constant Boolean := RTSFormInput'Class (This).processSticky (associatedRtsLayer_Param => associatedRtsLayer_Param, rtsPlayerLayerInterface_Param => rtsPlayerLayerInterface_Param, layerManager_Param => layerManager_Param, point_Param => point_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end processSticky;

   procedure getItemAt (This : in out RTSFormInput; rtsPlayerLayerInterface_Param : access RTSPlayerLayerInterface_Package.RTSPlayerLayerInterface'Class; point_Param : access GPoint_Package.GPoint'Class) is
      Java_Result : constant ABCustomItem_Access := RTSFormInput'Class (This).getItemAt (rtsPlayerLayerInterface_Param => rtsPlayerLayerInterface_Param, point_Param => point_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getItemAt;

   procedure getIndexAt (This : in out RTSFormInput; rtsPlayerLayerInterface_Param : access RTSPlayerLayerInterface_Package.RTSPlayerLayerInterface'Class; point_Param : access GPoint_Package.GPoint'Class) is
      Java_Result : constant Integer := RTSFormInput'Class (This).getIndexAt (rtsPlayerLayerInterface_Param => rtsPlayerLayerInterface_Param, point_Param => point_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getIndexAt;

   procedure getInstance (This : in out RTSFormInput; layerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; aItem_Param : access ABCustomItem_Package.ABCustomItem'Class; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) is
      Java_Result : constant CollidableDestroyableDamageableLayer_Access := RTSFormInput'Class (This).getInstance (layerManager_Param => layerManager_Param, aItem_Param => aItem_Param, geographicMapCellPosition_Param => geographicMapCellPosition_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.game.input.form.RTSFormInput_Package;


