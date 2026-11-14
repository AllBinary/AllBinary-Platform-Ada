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


with org.allbinary.game.input.RTSLayerFormFactory_Package; use org.allbinary.game.input.RTSLayerFormFactory_Package;
with org.allbinary.graphics.form.item.ABCustomItem_Package; use org.allbinary.graphics.form.item.ABCustomItem_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.graphics.form.ScrollSelectionForm_Package; use org.allbinary.graphics.form.ScrollSelectionForm_Package;
with org.allbinary.graphics.form.ScrollSelectionForm_Package_References;
with org.allbinary.graphics.form.item.ItemArraySingletonFactoryInterface_Package; use org.allbinary.graphics.form.item.ItemArraySingletonFactoryInterface_Package;
with org.allbinary.graphics.form.item.ItemArraySingletonFactoryInterface_Package_References;
with org.allbinary.game.layer.RTSScrollSelectionFormFactory_Package; use org.allbinary.game.layer.RTSScrollSelectionFormFactory_Package;
with org.allbinary.game.layer.RTSLayer_Package; use org.allbinary.game.layer.RTSLayer_Package;
with org.allbinary.game.layer.RTSLayer_Package_References;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.displayable.CanvasStrings_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.graphics.form.FormType_Package;
with org.allbinary.graphics.GPoint_Package;
with org.allbinary.graphics.form.ItemPaintableFactory_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.game.layer.RTSScrollSelectionFormFactory_Package;
with org.allbinary.graphics.Rectangle_Package;
with org.allbinary.math.RectangleCollisionUtil_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;

package body org.allbinary.game.layer.AdvancedRTSLayerFormFactory_Package is

   package ABCustomItem_Package renames Standard.org.allbinary.graphics.form.item.ABCustomItem_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   subtype LogUtil_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access;
   function "=" (Left, Right : LogUtil_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype LogUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.log.LogUtil_Package_References.LogUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : LogUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.log.LogUtil_Package_References."=";
   subtype ScrollSelectionForm_Access is org.allbinary.graphics.form.ScrollSelectionForm_Package_References.ScrollSelectionForm_Access;
   function "=" (Left, Right : ScrollSelectionForm_Access) return Boolean renames org.allbinary.graphics.form.ScrollSelectionForm_Package_References."=";
   subtype ScrollSelectionForm_Access_Array is org.allbinary.graphics.form.ScrollSelectionForm_Package_References.ScrollSelectionForm_Access_Array;
   function "=" (Left, Right : ScrollSelectionForm_Access_Array) return Boolean renames org.allbinary.graphics.form.ScrollSelectionForm_Package_References."=";
   subtype ScrollSelectionForm_Access_Array_Access is org.allbinary.graphics.form.ScrollSelectionForm_Package_References.ScrollSelectionForm_Access_Array_Access;
   function "=" (Left, Right : ScrollSelectionForm_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.ScrollSelectionForm_Package_References."=";
   subtype ScrollSelectionForm_Access_Array_Access_Array is org.allbinary.graphics.form.ScrollSelectionForm_Package_References.ScrollSelectionForm_Access_Array_Access_Array;
   function "=" (Left, Right : ScrollSelectionForm_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.form.ScrollSelectionForm_Package_References."=";
   subtype ScrollSelectionForm_Access_Array_Access_Array_Access is org.allbinary.graphics.form.ScrollSelectionForm_Package_References.ScrollSelectionForm_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ScrollSelectionForm_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.ScrollSelectionForm_Package_References."=";
   subtype ItemArraySingletonFactoryInterface_Access is org.allbinary.graphics.form.item.ItemArraySingletonFactoryInterface_Package_References.ItemArraySingletonFactoryInterface_Access;
   function "=" (Left, Right : ItemArraySingletonFactoryInterface_Access) return Boolean renames org.allbinary.graphics.form.item.ItemArraySingletonFactoryInterface_Package_References."=";
   subtype ItemArraySingletonFactoryInterface_Access_Array is org.allbinary.graphics.form.item.ItemArraySingletonFactoryInterface_Package_References.ItemArraySingletonFactoryInterface_Access_Array;
   function "=" (Left, Right : ItemArraySingletonFactoryInterface_Access_Array) return Boolean renames org.allbinary.graphics.form.item.ItemArraySingletonFactoryInterface_Package_References."=";
   subtype ItemArraySingletonFactoryInterface_Access_Array_Access is org.allbinary.graphics.form.item.ItemArraySingletonFactoryInterface_Package_References.ItemArraySingletonFactoryInterface_Access_Array_Access;
   function "=" (Left, Right : ItemArraySingletonFactoryInterface_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.item.ItemArraySingletonFactoryInterface_Package_References."=";
   subtype ItemArraySingletonFactoryInterface_Access_Array_Access_Array is org.allbinary.graphics.form.item.ItemArraySingletonFactoryInterface_Package_References.ItemArraySingletonFactoryInterface_Access_Array_Access_Array;
   function "=" (Left, Right : ItemArraySingletonFactoryInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.form.item.ItemArraySingletonFactoryInterface_Package_References."=";
   subtype ItemArraySingletonFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.graphics.form.item.ItemArraySingletonFactoryInterface_Package_References.ItemArraySingletonFactoryInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ItemArraySingletonFactoryInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.form.item.ItemArraySingletonFactoryInterface_Package_References."=";
   subtype RTSLayer_Access is org.allbinary.game.layer.RTSLayer_Package_References.RTSLayer_Access;
   function "=" (Left, Right : RTSLayer_Access) return Boolean renames org.allbinary.game.layer.RTSLayer_Package_References."=";
   subtype RTSLayer_Access_Array is org.allbinary.game.layer.RTSLayer_Package_References.RTSLayer_Access_Array;
   function "=" (Left, Right : RTSLayer_Access_Array) return Boolean renames org.allbinary.game.layer.RTSLayer_Package_References."=";
   subtype RTSLayer_Access_Array_Access is org.allbinary.game.layer.RTSLayer_Package_References.RTSLayer_Access_Array_Access;
   function "=" (Left, Right : RTSLayer_Access_Array_Access) return Boolean renames org.allbinary.game.layer.RTSLayer_Package_References."=";
   subtype RTSLayer_Access_Array_Access_Array is org.allbinary.game.layer.RTSLayer_Package_References.RTSLayer_Access_Array_Access_Array;
   function "=" (Left, Right : RTSLayer_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.RTSLayer_Package_References."=";
   subtype RTSLayer_Access_Array_Access_Array_Access is org.allbinary.game.layer.RTSLayer_Package_References.RTSLayer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RTSLayer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.RTSLayer_Package_References."=";
   procedure Initialize_Fields (This : in out AdvancedRTSLayerFormFactory'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      
   end Initialize_Fields;


   procedure Initialize (This : in out AdvancedRTSLayerFormFactory'Class; label : Unbounded_String; itemArrayFactoryInterface_Param : access ItemArraySingletonFactoryInterface_Package.ItemArraySingletonFactoryInterface'Class) is
      itemArrayFactoryInterface : constant ItemArraySingletonFactoryInterface_Access := ItemArraySingletonFactoryInterface_Access (itemArrayFactoryInterface_Param);
      scrollSelectionForm : ScrollSelectionForm_Access;
      items : ABCustomItem_Access_Array_Access;
      commonStrings : CommonStrings_Access;
   begin
      RTSLayerFormFactory_Package.Initialize (This);
      Initialize_Fields (This);
        scrollSelectionForm := ScrollSelectionForm_Package.getNullScrollSelectionForm;
        begin
            items := itemArrayFactoryInterface.getItems;
            scrollSelectionForm := RTSScrollSelectionFormFactory_Package.getInstance (label, items);
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            commonStrings := CommonStrings_Package.getInstance;
            This.logUtil.put (commonStrings.EXCEPTION_Id, AdvancedRTSLayerFormFactory_Access'(This'Unchecked_Access), commonStrings.CONSTRUCTOR, e);
                end;
        end;
        This.scrollSelectionForm := scrollSelectionForm;
   end Initialize;

   function Create (label : Unbounded_String; itemArrayFactoryInterface_Param : access ItemArraySingletonFactoryInterface_Package.ItemArraySingletonFactoryInterface'Class) return AdvancedRTSLayerFormFactory_Access is
      This : constant AdvancedRTSLayerFormFactory_Access := new AdvancedRTSLayerFormFactory;
   begin
      AdvancedRTSLayerFormFactory_Package.Initialize (This.all, label, itemArrayFactoryInterface_Param);
      return This;
   end Create;

   function getInstance (This : in out AdvancedRTSLayerFormFactory; rtsLayer_Param : access RTSLayer_Package.RTSLayer'Class) return ScrollSelectionForm_Access is
      rtsLayer : constant RTSLayer_Access := RTSLayer_Access (rtsLayer_Param);
   begin
        return This.scrollSelectionForm;
   end getInstance;

   procedure getInstance (This : in out AdvancedRTSLayerFormFactory; rtsLayer_Param : access RTSLayer_Package.RTSLayer'Class) is
      Java_Result : constant ScrollSelectionForm_Access := AdvancedRTSLayerFormFactory'Class (This).getInstance (rtsLayer_Param => rtsLayer_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInstance;

end org.allbinary.game.layer.AdvancedRTSLayerFormFactory_Package;


