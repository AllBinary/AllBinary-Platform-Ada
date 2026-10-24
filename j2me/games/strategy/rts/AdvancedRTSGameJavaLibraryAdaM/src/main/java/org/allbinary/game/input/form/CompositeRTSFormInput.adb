-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2006 AllBinary 
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


with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.graphics.form.ScrollSelectionForm_Package; use org.allbinary.graphics.form.ScrollSelectionForm_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package; use org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface_Package;
with org.allbinary.string_Id.CommonLabels_Package; use org.allbinary.string_Id.CommonLabels_Package;
with org.allbinary.game.input.form.WaypointRTSFormInput_Package; use org.allbinary.game.input.form.WaypointRTSFormInput_Package;
with org.allbinary.game.input.form.UnitRTSFormInput_Package; use org.allbinary.game.input.form.UnitRTSFormInput_Package;

package body org.allbinary.game.input.form.CompositeRTSFormInput_Package is

   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package ScrollSelectionForm_Package renames Standard.org.allbinary.graphics.form.ScrollSelectionForm_Package;
   package BasicGeographicMap_Package renames Standard.org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
   package GeographicMapCompositeInterface_Package renames Standard.org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface_Package;
   package CommonLabels_Package renames Standard.org.allbinary.string_Id.CommonLabels_Package;
   procedure Initialize_Fields (This : in out CompositeRTSFormInput'Class) is
   begin
      null;
      
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out CompositeRTSFormInput'Class; groupInterface : Group_Access_Array_Access; isPrimaryWaypointCreator : Boolean; itemIndex : Integer_Array_Access) is
   begin
        RTSFormInput_Package.Initialize (This, groupInterface);
        Initialize_Fields (This);
        This.itemIndex := itemIndex;
        This.isPrimaryWaypointCreator := isPrimaryWaypointCreator;
        This.rtsFormInputArray := new RTSFormInput_Access_Array'(0 .. (2) - 1 => null);
        This.rtsFormInputArray (0) := RTSFormInput_Access (WaypointRTSFormInput_Package.Create (This.groupInterfaceArray, isPrimaryWaypointCreator));
        This.rtsFormInputArray (1) := RTSFormInput_Access (UnitRTSFormInput_Package.Create (This.groupInterfaceArray));
   end Initialize;

   function Create (groupInterface : Group_Access_Array_Access; isPrimaryWaypointCreator : Boolean; itemIndex : Integer_Array_Access) return CompositeRTSFormInput_Access is
      This : constant CompositeRTSFormInput_Access := new CompositeRTSFormInput;
   begin
      CompositeRTSFormInput_Package.Initialize (This.all, groupInterface, isPrimaryWaypointCreator, itemIndex);
      return This;
   end Create;

   --  throws Exception
   procedure setAllBinaryGameLayerManager (This : in out CompositeRTSFormInput; allBinaryGameLayerManager_Param : access AllBinaryGameLayerManager_Package.AllBinaryGameLayerManager'Class) is
      allBinaryGameLayerManager : constant AllBinaryGameLayerManager_Access := AllBinaryGameLayerManager_Access (allBinaryGameLayerManager_Param);
      geographicMapCompositeInterface : GeographicMapCompositeInterface_Access;
      geographicMapInterface : BasicGeographicMap_Access;
      size : Integer;
      index : Integer;
   begin
        RTSFormInput (This).setAllBinaryGameLayerManager (allBinaryGameLayerManager);
        geographicMapCompositeInterface := GeographicMapCompositeInterface_Access (allBinaryGameLayerManager);
        geographicMapInterface := geographicMapCompositeInterface.getGeographicMapInterface (0);
        size := This.rtsFormInputArray'Length;
        for index in 0 .. (size) - 1 loop
            This.rtsFormInputArray (index).setAllBinaryGameLayerManager (allBinaryGameLayerManager);
        end loop;
   end setAllBinaryGameLayerManager;

   --  throws Exception
   procedure processAtPoint (This : in out CompositeRTSFormInput; associatedRtsLayer_Param : access CollidableDestroyableDamageableLayer_Package.CollidableDestroyableDamageableLayer'Class; rtsPlayerLayerInterface_Param : access RTSPlayerLayerInterface_Package.RTSPlayerLayerInterface'Class; layerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; point_Param : access GPoint_Package.GPoint'Class) is
      associatedRtsLayer : constant CollidableDestroyableDamageableLayer_Access := CollidableDestroyableDamageableLayer_Access (associatedRtsLayer_Param);
      rtsPlayerLayerInterface : constant RTSPlayerLayerInterface_Access := RTSPlayerLayerInterface_Access (rtsPlayerLayerInterface_Param);
      layerManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (layerManager_Param);
      point : constant GPoint_Access := GPoint_Access (point_Param);
      scrollSelectionForm : ScrollSelectionForm_Access;
      index : Integer;
   begin
        scrollSelectionForm := rtsPlayerLayerInterface.getCurrentScrollSelectionForm;
        index := scrollSelectionForm.getSelectedIndexForPoint (point);
        if (CompositeRTSFormInput'Class (This).isStickyItemSelected) and then ((associatedRtsLayer) = (CollidableDestroyableDamageableLayer_Package.getNullInstance)) then
            if (CompositeRTSFormInput'Class (This).getSelectedStickyItemIndex) <= (This.itemIndex (0)) then
                This.rtsFormInputArray (0).processAtPoint (associatedRtsLayer, rtsPlayerLayerInterface, layerManager, point);
            end if;
        elsif (index) > (This.itemIndex (0)) then
            This.rtsFormInputArray (1).processAtPoint (associatedRtsLayer, rtsPlayerLayerInterface, layerManager, point);
        end if;
   end processAtPoint;

   --  throws Exception
   procedure processGameSpecific (This : in out CompositeRTSFormInput; associatedRtsLayer_Param : access CollidableDestroyableDamageableLayer_Package.CollidableDestroyableDamageableLayer'Class; rtsPlayerLayerInterface_Param : access RTSPlayerLayerInterface_Package.RTSPlayerLayerInterface'Class; layerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; item_Param : access ABCustomItem_Package.ABCustomItem'Class; index : Integer) is
      associatedRtsLayer : constant CollidableDestroyableDamageableLayer_Access := CollidableDestroyableDamageableLayer_Access (associatedRtsLayer_Param);
      rtsPlayerLayerInterface : constant RTSPlayerLayerInterface_Access := RTSPlayerLayerInterface_Access (rtsPlayerLayerInterface_Param);
      layerManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (layerManager_Param);
      item : constant ABCustomItem_Access := ABCustomItem_Access (item_Param);
      commonStrings : CommonStrings_Access;
   begin
        commonStrings := CommonStrings_Package.getInstance;
        This.logUtil.putF (Java_Image ((CommonLabels_Package.getInstance.INDEX_LABEL) + (index)) & To_Unbounded_String (" > ") & Java_Image (This.itemIndex (0)), CompositeRTSFormInput_Access'(This'Unchecked_Access), commonStrings.PROCESS);
        if (CompositeRTSFormInput'Class (This).isStickyItemSelected) and then ((associatedRtsLayer) = (CollidableDestroyableDamageableLayer_Package.getNullInstance)) then
            if (CompositeRTSFormInput'Class (This).getSelectedStickyItemIndex) <= (This.itemIndex (0)) then
                This.rtsFormInputArray (0).processGameSpecific (associatedRtsLayer, rtsPlayerLayerInterface, layerManager, item, index);
            end if;
        elsif (index) > (This.itemIndex (0)) then
            This.rtsFormInputArray (1).processGameSpecific (associatedRtsLayer, rtsPlayerLayerInterface, layerManager, item, index);
        end if;
   end processGameSpecific;

   --  throws Exception
   function processSticky (This : in out CompositeRTSFormInput; associatedRtsLayer_Param : access CollidableDestroyableDamageableLayer_Package.CollidableDestroyableDamageableLayer'Class; rtsPlayerLayerInterface_Param : access RTSPlayerLayerInterface_Package.RTSPlayerLayerInterface'Class; layerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; point_Param : access GPoint_Package.GPoint'Class) return Boolean is
      associatedRtsLayer : constant CollidableDestroyableDamageableLayer_Access := CollidableDestroyableDamageableLayer_Access (associatedRtsLayer_Param);
      rtsPlayerLayerInterface : constant RTSPlayerLayerInterface_Access := RTSPlayerLayerInterface_Access (rtsPlayerLayerInterface_Param);
      layerManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (layerManager_Param);
      point : constant GPoint_Access := GPoint_Access (point_Param);
   begin
        return This.rtsFormInputArray (0).processSticky (associatedRtsLayer, rtsPlayerLayerInterface, layerManager, point);
   end processSticky;

   --  throws Exception
   procedure processStickyGameSpecific (This : in out CompositeRTSFormInput; associatedRtsLayer_Param : access CollidableDestroyableDamageableLayer_Package.CollidableDestroyableDamageableLayer'Class; rtsPlayerLayerInterface_Param : access RTSPlayerLayerInterface_Package.RTSPlayerLayerInterface'Class; layerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; item_Param : access ABCustomItem_Package.ABCustomItem'Class; index : Integer) is
      associatedRtsLayer : constant CollidableDestroyableDamageableLayer_Access := CollidableDestroyableDamageableLayer_Access (associatedRtsLayer_Param);
      rtsPlayerLayerInterface : constant RTSPlayerLayerInterface_Access := RTSPlayerLayerInterface_Access (rtsPlayerLayerInterface_Param);
      layerManager : constant AllBinaryLayerManager_Access := AllBinaryLayerManager_Access (layerManager_Param);
      item : constant ABCustomItem_Access := ABCustomItem_Access (item_Param);
   begin
        This.rtsFormInputArray (0).processStickyGameSpecific (associatedRtsLayer, rtsPlayerLayerInterface, layerManager, item, index);
   end processStickyGameSpecific;

   function getSelectedStickyItemIndex (This : in out CompositeRTSFormInput) return Integer is
   begin
        return This.rtsFormInputArray (0).getSelectedStickyItemIndex;
   end getSelectedStickyItemIndex;

   function isStickyItemSelected (This : in out CompositeRTSFormInput) return Boolean is
   begin
        return This.rtsFormInputArray (0).isStickyItemSelected;
   end isStickyItemSelected;

   procedure setStickyItemSelected (This : in out CompositeRTSFormInput; stickyItemSelected : Boolean) is
   begin
        This.rtsFormInputArray (0).setStickyItemSelected (stickyItemSelected);
   end setStickyItemSelected;

   function getSelectedStickyItem (This : in out CompositeRTSFormInput) return ABCustomItem_Access is
   begin
        return This.rtsFormInputArray (0).getSelectedStickyItem;
   end getSelectedStickyItem;

   procedure setSelectedStickyItem (This : in out CompositeRTSFormInput; selectedStickyItem_Param : access ABCustomItem_Package.ABCustomItem'Class) is
      selectedStickyItem : constant ABCustomItem_Access := ABCustomItem_Access (selectedStickyItem_Param);
   begin
        This.rtsFormInputArray (0).setSelectedStickyItem (selectedStickyItem);
   end setSelectedStickyItem;

   procedure processSticky (This : in out CompositeRTSFormInput; associatedRtsLayer_Param : access CollidableDestroyableDamageableLayer_Package.CollidableDestroyableDamageableLayer'Class; rtsPlayerLayerInterface_Param : access RTSPlayerLayerInterface_Package.RTSPlayerLayerInterface'Class; layerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; point_Param : access GPoint_Package.GPoint'Class) is
      Java_Result : constant Boolean := CompositeRTSFormInput'Class (This).processSticky (associatedRtsLayer_Param => associatedRtsLayer_Param, rtsPlayerLayerInterface_Param => rtsPlayerLayerInterface_Param, layerManager_Param => layerManager_Param, point_Param => point_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end processSticky;

end org.allbinary.game.input.form.CompositeRTSFormInput_Package;


