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


with org.allbinary.game.layer.AllBinaryTiledLayer_Package; use org.allbinary.game.layer.AllBinaryTiledLayer_Package;
with org.allbinary.game.layer.AllBinaryTiledLayer_Package_References;
with org.allbinary.graphics.color.BasicColor_Package; use org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColor_Package_References;
with org.allbinary.layer.Layer_Package; use org.allbinary.layer.Layer_Package;
with org.allbinary.layer.Layer_Package_References;
with org.allbinary.logic.math.MathUtil_Package; use org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.logic.math.MathUtil_Package_References;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package; use org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package_References;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package_References;
with org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package_References;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPositionBaseFactory_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPositionBaseFactory_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPositionBaseFactory_Package_References;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References;
with org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory_Package; use org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package_References;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package;
with org.allbinary.graphics.CellPosition_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with org.allbinary.graphics.GPoint_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPositionBaseFactory_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInitVisitorInterface_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.time.TimeStampUtil_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References;

package body org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package is

   subtype AllBinaryTiledLayer_Access is org.allbinary.game.layer.AllBinaryTiledLayer_Package_References.AllBinaryTiledLayer_Access;
   function "=" (Left, Right : AllBinaryTiledLayer_Access) return Boolean renames org.allbinary.game.layer.AllBinaryTiledLayer_Package_References."=";
   subtype AllBinaryTiledLayer_Access_Array is org.allbinary.game.layer.AllBinaryTiledLayer_Package_References.AllBinaryTiledLayer_Access_Array;
   function "=" (Left, Right : AllBinaryTiledLayer_Access_Array) return Boolean renames org.allbinary.game.layer.AllBinaryTiledLayer_Package_References."=";
   subtype AllBinaryTiledLayer_Access_Array_Access is org.allbinary.game.layer.AllBinaryTiledLayer_Package_References.AllBinaryTiledLayer_Access_Array_Access;
   function "=" (Left, Right : AllBinaryTiledLayer_Access_Array_Access) return Boolean renames org.allbinary.game.layer.AllBinaryTiledLayer_Package_References."=";
   subtype AllBinaryTiledLayer_Access_Array_Access_Array is org.allbinary.game.layer.AllBinaryTiledLayer_Package_References.AllBinaryTiledLayer_Access_Array_Access_Array;
   function "=" (Left, Right : AllBinaryTiledLayer_Access_Array_Access_Array) return Boolean renames org.allbinary.game.layer.AllBinaryTiledLayer_Package_References."=";
   subtype AllBinaryTiledLayer_Access_Array_Access_Array_Access is org.allbinary.game.layer.AllBinaryTiledLayer_Package_References.AllBinaryTiledLayer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AllBinaryTiledLayer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.layer.AllBinaryTiledLayer_Package_References."=";
   subtype BasicColor_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access;
   function "=" (Left, Right : BasicColor_Access) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array;
   function "=" (Left, Right : BasicColor_Access_Array) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access;
   function "=" (Left, Right : BasicColor_Access_Array_Access) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array_Access_Array is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array;
   function "=" (Left, Right : BasicColor_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype BasicColor_Access_Array_Access_Array_Access is org.allbinary.graphics.color.BasicColor_Package_References.BasicColor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicColor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.color.BasicColor_Package_References."=";
   subtype Layer_Access is org.allbinary.layer.Layer_Package_References.Layer_Access;
   function "=" (Left, Right : Layer_Access) return Boolean renames org.allbinary.layer.Layer_Package_References."=";
   subtype Layer_Access_Array is org.allbinary.layer.Layer_Package_References.Layer_Access_Array;
   function "=" (Left, Right : Layer_Access_Array) return Boolean renames org.allbinary.layer.Layer_Package_References."=";
   subtype Layer_Access_Array_Access is org.allbinary.layer.Layer_Package_References.Layer_Access_Array_Access;
   function "=" (Left, Right : Layer_Access_Array_Access) return Boolean renames org.allbinary.layer.Layer_Package_References."=";
   subtype Layer_Access_Array_Access_Array is org.allbinary.layer.Layer_Package_References.Layer_Access_Array_Access_Array;
   function "=" (Left, Right : Layer_Access_Array_Access_Array) return Boolean renames org.allbinary.layer.Layer_Package_References."=";
   subtype Layer_Access_Array_Access_Array_Access is org.allbinary.layer.Layer_Package_References.Layer_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Layer_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.layer.Layer_Package_References."=";
   subtype MathUtil_Access is org.allbinary.logic.math.MathUtil_Package_References.MathUtil_Access;
   function "=" (Left, Right : MathUtil_Access) return Boolean renames org.allbinary.logic.math.MathUtil_Package_References."=";
   subtype MathUtil_Access_Array is org.allbinary.logic.math.MathUtil_Package_References.MathUtil_Access_Array;
   function "=" (Left, Right : MathUtil_Access_Array) return Boolean renames org.allbinary.logic.math.MathUtil_Package_References."=";
   subtype MathUtil_Access_Array_Access is org.allbinary.logic.math.MathUtil_Package_References.MathUtil_Access_Array_Access;
   function "=" (Left, Right : MathUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.math.MathUtil_Package_References."=";
   subtype MathUtil_Access_Array_Access_Array is org.allbinary.logic.math.MathUtil_Package_References.MathUtil_Access_Array_Access_Array;
   function "=" (Left, Right : MathUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.math.MathUtil_Package_References."=";
   subtype MathUtil_Access_Array_Access_Array_Access is org.allbinary.logic.math.MathUtil_Package_References.MathUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MathUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.math.MathUtil_Package_References."=";
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   function "=" (Left, Right : BasicArrayList_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicArrayList_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.util.BasicArrayList_Package_References."=";
   subtype BasicGeographicMapCellPositionFactory_Access is org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package_References.BasicGeographicMapCellPositionFactory_Access;
   function "=" (Left, Right : BasicGeographicMapCellPositionFactory_Access) return Boolean renames org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package_References."=";
   subtype BasicGeographicMapCellPositionFactory_Access_Array is org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package_References.BasicGeographicMapCellPositionFactory_Access_Array;
   function "=" (Left, Right : BasicGeographicMapCellPositionFactory_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package_References."=";
   subtype BasicGeographicMapCellPositionFactory_Access_Array_Access is org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package_References.BasicGeographicMapCellPositionFactory_Access_Array_Access;
   function "=" (Left, Right : BasicGeographicMapCellPositionFactory_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package_References."=";
   subtype BasicGeographicMapCellPositionFactory_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package_References.BasicGeographicMapCellPositionFactory_Access_Array_Access_Array;
   function "=" (Left, Right : BasicGeographicMapCellPositionFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package_References."=";
   subtype BasicGeographicMapCellPositionFactory_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package_References.BasicGeographicMapCellPositionFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicGeographicMapCellPositionFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package_References."=";
   subtype GeographicMapCellPositionFactoryInterface_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package_References.GeographicMapCellPositionFactoryInterface_Access;
   function "=" (Left, Right : GeographicMapCellPositionFactoryInterface_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package_References."=";
   subtype GeographicMapCellPositionFactoryInterface_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package_References.GeographicMapCellPositionFactoryInterface_Access_Array;
   function "=" (Left, Right : GeographicMapCellPositionFactoryInterface_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package_References."=";
   subtype GeographicMapCellPositionFactoryInterface_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package_References.GeographicMapCellPositionFactoryInterface_Access_Array_Access;
   function "=" (Left, Right : GeographicMapCellPositionFactoryInterface_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package_References."=";
   subtype GeographicMapCellPositionFactoryInterface_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package_References.GeographicMapCellPositionFactoryInterface_Access_Array_Access_Array;
   function "=" (Left, Right : GeographicMapCellPositionFactoryInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package_References."=";
   subtype GeographicMapCellPositionFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package_References.GeographicMapCellPositionFactoryInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GeographicMapCellPositionFactoryInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package_References."=";
   subtype GeographicMapCellTypeFactory_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package_References.GeographicMapCellTypeFactory_Access;
   function "=" (Left, Right : GeographicMapCellTypeFactory_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package_References."=";
   subtype GeographicMapCellTypeFactory_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package_References.GeographicMapCellTypeFactory_Access_Array;
   function "=" (Left, Right : GeographicMapCellTypeFactory_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package_References."=";
   subtype GeographicMapCellTypeFactory_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package_References.GeographicMapCellTypeFactory_Access_Array_Access;
   function "=" (Left, Right : GeographicMapCellTypeFactory_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package_References."=";
   subtype GeographicMapCellTypeFactory_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package_References.GeographicMapCellTypeFactory_Access_Array_Access_Array;
   function "=" (Left, Right : GeographicMapCellTypeFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package_References."=";
   subtype GeographicMapCellTypeFactory_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package_References.GeographicMapCellTypeFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GeographicMapCellTypeFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package_References."=";
   subtype GeographicMapCellPositionBaseFactory_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPositionBaseFactory_Package_References.GeographicMapCellPositionBaseFactory_Access;
   function "=" (Left, Right : GeographicMapCellPositionBaseFactory_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPositionBaseFactory_Package_References."=";
   subtype GeographicMapCellPositionBaseFactory_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellPositionBaseFactory_Package_References.GeographicMapCellPositionBaseFactory_Access_Array;
   function "=" (Left, Right : GeographicMapCellPositionBaseFactory_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPositionBaseFactory_Package_References."=";
   subtype GeographicMapCellPositionBaseFactory_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPositionBaseFactory_Package_References.GeographicMapCellPositionBaseFactory_Access_Array_Access;
   function "=" (Left, Right : GeographicMapCellPositionBaseFactory_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPositionBaseFactory_Package_References."=";
   subtype GeographicMapCellPositionBaseFactory_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellPositionBaseFactory_Package_References.GeographicMapCellPositionBaseFactory_Access_Array_Access_Array;
   function "=" (Left, Right : GeographicMapCellPositionBaseFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPositionBaseFactory_Package_References."=";
   subtype GeographicMapCellPositionBaseFactory_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPositionBaseFactory_Package_References.GeographicMapCellPositionBaseFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GeographicMapCellPositionBaseFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPositionBaseFactory_Package_References."=";
   subtype GeographicMapCellPosition_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access;
   function "=" (Left, Right : GeographicMapCellPosition_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References."=";
   subtype GeographicMapCellPosition_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access_Array;
   function "=" (Left, Right : GeographicMapCellPosition_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References."=";
   subtype GeographicMapCellPosition_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access_Array_Access;
   function "=" (Left, Right : GeographicMapCellPosition_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References."=";
   subtype GeographicMapCellPosition_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access_Array_Access_Array;
   function "=" (Left, Right : GeographicMapCellPosition_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References."=";
   subtype GeographicMapCellPosition_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References.GeographicMapCellPosition_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GeographicMapCellPosition_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References."=";
   subtype GeographicMapCellType_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package_References.GeographicMapCellType_Access;
   function "=" (Left, Right : GeographicMapCellType_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package_References."=";
   subtype GeographicMapCellType_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package_References.GeographicMapCellType_Access_Array;
   function "=" (Left, Right : GeographicMapCellType_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package_References."=";
   subtype GeographicMapCellType_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package_References.GeographicMapCellType_Access_Array_Access;
   function "=" (Left, Right : GeographicMapCellType_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package_References."=";
   subtype GeographicMapCellType_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package_References.GeographicMapCellType_Access_Array_Access_Array;
   function "=" (Left, Right : GeographicMapCellType_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package_References."=";
   subtype GeographicMapCellType_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package_References.GeographicMapCellType_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GeographicMapCellType_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package_References."=";
   procedure Initialize_Fields (This : in out BasicGeographicMap'Class) is
   begin
      null;
      This.mathUtil := MathUtil_Package.getInstance;
      
      
      
   end Initialize_Fields;


   procedure Initialize (This : in out BasicGeographicMap'Class; id : Integer; name : Unbounded_String; cellTypeIdToGeographicMapCellType : Integer_Array_Access; tiledLayer_Param : access AllBinaryTiledLayer_Package.AllBinaryTiledLayer'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; geographicMapCellPositionFactoryInterface_Param : access GeographicMapCellPositionFactoryInterface_Package.GeographicMapCellPositionFactoryInterface'Class; geographicMapCellPositionBaseFactory_Param : access GeographicMapCellPositionBaseFactory_Package.GeographicMapCellPositionBaseFactory'Class; geographicMapCellTypeFactory_Param : access GeographicMapCellTypeFactory_Package.GeographicMapCellTypeFactory'Class) is
      tiledLayer : constant AllBinaryTiledLayer_Access := AllBinaryTiledLayer_Access (tiledLayer_Param);
      foregroundBasicColor : constant BasicColor_Access := BasicColor_Access (foregroundBasicColor_Param);
      backgroundBasicColor : constant BasicColor_Access := BasicColor_Access (backgroundBasicColor_Param);
      geographicMapCellPositionFactoryInterface : constant GeographicMapCellPositionFactoryInterface_Access := GeographicMapCellPositionFactoryInterface_Access (geographicMapCellPositionFactoryInterface_Param);
      geographicMapCellPositionBaseFactory : constant GeographicMapCellPositionBaseFactory_Access := GeographicMapCellPositionBaseFactory_Access (geographicMapCellPositionBaseFactory_Param);
      geographicMapCellTypeFactory : constant GeographicMapCellTypeFactory_Access := GeographicMapCellTypeFactory_Access (geographicMapCellTypeFactory_Param);
   begin
        SimpleGeographicMap_Package.Initialize (This, id, name, cellTypeIdToGeographicMapCellType, tiledLayer, foregroundBasicColor, backgroundBasicColor);
        Initialize_Fields (This);
        This.geographicMapCellPositionFactoryInterface := geographicMapCellPositionFactoryInterface;
        This.geographicMapCellPositionFactory := geographicMapCellPositionBaseFactory.getInstance (BasicGeographicMap_Access'(This'Unchecked_Access));
        This.BasicGeographicMap_Field_geographicMapCellTypeFactory := geographicMapCellTypeFactory;
   end Initialize;

   function Create (id : Integer; name : Unbounded_String; cellTypeIdToGeographicMapCellType : Integer_Array_Access; tiledLayer_Param : access AllBinaryTiledLayer_Package.AllBinaryTiledLayer'Class; foregroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; backgroundBasicColor_Param : access BasicColor_Package.BasicColor'Class; geographicMapCellPositionFactoryInterface_Param : access GeographicMapCellPositionFactoryInterface_Package.GeographicMapCellPositionFactoryInterface'Class; geographicMapCellPositionBaseFactory_Param : access GeographicMapCellPositionBaseFactory_Package.GeographicMapCellPositionBaseFactory'Class; geographicMapCellTypeFactory_Param : access GeographicMapCellTypeFactory_Package.GeographicMapCellTypeFactory'Class) return BasicGeographicMap_Access is
      This : constant BasicGeographicMap_Access := new BasicGeographicMap;
   begin
      BasicGeographicMap_Package.Initialize (This.all, id, name, cellTypeIdToGeographicMapCellType, tiledLayer_Param, foregroundBasicColor_Param, backgroundBasicColor_Param, geographicMapCellPositionFactoryInterface_Param, geographicMapCellPositionBaseFactory_Param, geographicMapCellTypeFactory_Param);
      return This;
   end Create;

   --  throws Exception
   function getCellPosition (This : in out BasicGeographicMap; direction : Integer; oldGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) return GeographicMapCellPosition_Access is
      oldGeographicMapCellPosition : constant GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (oldGeographicMapCellPosition_Param);
   begin
        case direction is
            when 0 =>
                return This.geographicMapCellPositionFactory.getAt ((oldGeographicMapCellPosition.getColumn) - (1), oldGeographicMapCellPosition.getRow);
            when 1 =>
                return This.geographicMapCellPositionFactory.getAt ((oldGeographicMapCellPosition.getColumn) + (1), oldGeographicMapCellPosition.getRow);
            when 2 =>
                return This.geographicMapCellPositionFactory.getAt (oldGeographicMapCellPosition.getColumn, (oldGeographicMapCellPosition.getRow) - (1));
            when 3 =>
                return This.geographicMapCellPositionFactory.getAt (oldGeographicMapCellPosition.getColumn, (oldGeographicMapCellPosition.getRow) + (1));
            when others =>
                Java_Throw (Java_New_Exception ("Exception", To_Unbounded_String ("Only Four Directions")));
        end case;
   end getCellPosition;

   --  throws Exception
   function getCellPositionNoThrow (This : in out BasicGeographicMap; direction : Integer; oldGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) return GeographicMapCellPosition_Access is
      oldGeographicMapCellPosition : constant GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (oldGeographicMapCellPosition_Param);
   begin
        case direction is
            when 0 =>
                if ((oldGeographicMapCellPosition.getColumn) - (1)) >= (0) then
                    return This.geographicMapCellPositionFactory.getAt ((oldGeographicMapCellPosition.getColumn) - (1), oldGeographicMapCellPosition.getRow);
                else
                    return GeographicMapCellPosition_Access (SimpleGeographicMapCellPositionFactory_Package.NULL_GEOGRAPHIC_MAP_CELL_POSITION);
                end if;
            when 1 =>
                if ((oldGeographicMapCellPosition.getColumn) + (1)) < (BasicGeographicMap'Class (This).getAllBinaryTiledLayer.getColumns) then
                    return This.geographicMapCellPositionFactory.getAt ((oldGeographicMapCellPosition.getColumn) + (1), oldGeographicMapCellPosition.getRow);
                else
                    return GeographicMapCellPosition_Access (SimpleGeographicMapCellPositionFactory_Package.NULL_GEOGRAPHIC_MAP_CELL_POSITION);
                end if;
            when 2 =>
                if ((oldGeographicMapCellPosition.getRow) - (1)) >= (0) then
                    return This.geographicMapCellPositionFactory.getAt (oldGeographicMapCellPosition.getColumn, (oldGeographicMapCellPosition.getRow) - (1));
                else
                    return GeographicMapCellPosition_Access (SimpleGeographicMapCellPositionFactory_Package.NULL_GEOGRAPHIC_MAP_CELL_POSITION);
                end if;
            when 3 =>
                if ((oldGeographicMapCellPosition.getRow) + (1)) < (BasicGeographicMap'Class (This).getAllBinaryTiledLayer.getRows) then
                    return This.geographicMapCellPositionFactory.getAt (oldGeographicMapCellPosition.getColumn, (oldGeographicMapCellPosition.getRow) + (1));
                else
                    return GeographicMapCellPosition_Access (SimpleGeographicMapCellPositionFactory_Package.NULL_GEOGRAPHIC_MAP_CELL_POSITION);
                end if;
            when others =>
                return GeographicMapCellPosition_Access (SimpleGeographicMapCellPositionFactory_Package.NULL_GEOGRAPHIC_MAP_CELL_POSITION);
        end case;
   end getCellPositionNoThrow;

   --  throws Exception
   function isOfFourDirections (This : in out BasicGeographicMap; oldGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class; newGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) return Boolean is
      oldGeographicMapCellPosition : constant GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (oldGeographicMapCellPosition_Param);
      newGeographicMapCellPosition : constant GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (newGeographicMapCellPosition_Param);
      index : Integer;
   begin
        for index in 0 .. (4) - 1 loop
            if org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References."=" (newGeographicMapCellPosition, BasicGeographicMap'Class (This).getCellPositionNoThrow (index, oldGeographicMapCellPosition)) then
                return True;
            end if;
        end loop;
        return False;
   end isOfFourDirections;

   --  throws Exception
   function getCellPositionAtXY (This : in out BasicGeographicMap; x : Integer; y : Integer) return GeographicMapCellPosition_Access is
      allBinaryTiledLayer : AllBinaryTiledLayer_Access;
      i_column : Integer;
      i_row : Integer;
   begin
        allBinaryTiledLayer := BasicGeographicMap'Class (This).getAllBinaryTiledLayer;
        i_column := This.mathUtil.abs_Id ((x) / (allBinaryTiledLayer.getCellHeight));
        i_row := This.mathUtil.abs_Id ((y) / (allBinaryTiledLayer.getCellWidth));
        return This.geographicMapCellPositionFactory.getAt (i_column, i_row);
   end getCellPositionAtXY;

   function getCellPositionAtXYNoThrow (This : in out BasicGeographicMap; x : Integer; y : Integer) return GeographicMapCellPosition_Access is
      allBinaryTiledLayer : AllBinaryTiledLayer_Access;
      i_column : Integer;
      i_row : Integer;
   begin
        allBinaryTiledLayer := BasicGeographicMap'Class (This).getAllBinaryTiledLayer;
        i_column := This.mathUtil.abs_Id ((x) / (allBinaryTiledLayer.getCellHeight));
        i_row := This.mathUtil.abs_Id ((y) / (allBinaryTiledLayer.getCellWidth));
        if ((allBinaryTiledLayer.getColumns) > (i_column)) and then ((allBinaryTiledLayer.getRows) > (i_row)) then
            begin
                return This.geographicMapCellPositionFactory.getAt (i_column, i_row);
            exception
                when Java_Occurrence : others =>
                    declare
                        e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                    begin
                return GeographicMapCellPosition_Access (SimpleGeographicMapCellPositionFactory_Package.NULL_GEOGRAPHIC_MAP_CELL_POSITION);
                    end;
            end;
        else
            return GeographicMapCellPosition_Access (SimpleGeographicMapCellPositionFactory_Package.NULL_GEOGRAPHIC_MAP_CELL_POSITION);
        end if;
   end getCellPositionAtXYNoThrow;

   --  throws Exception
   function isOnMap (This : in out BasicGeographicMap; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) return Boolean is
      geographicMapCellPosition : constant GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (geographicMapCellPosition_Param);
      allBinaryTiledLayer : AllBinaryTiledLayer_Access;
      i_column : Integer;
      i_row : Integer;
   begin
        allBinaryTiledLayer := BasicGeographicMap'Class (This).getAllBinaryTiledLayer;
        i_column := geographicMapCellPosition.getColumn;
        i_row := geographicMapCellPosition.getRow;
        if ((allBinaryTiledLayer.getColumns) > (i_column)) and then ((allBinaryTiledLayer.getRows) > (i_row)) then
            return True;
        else
            return False;
        end if;
   end isOnMap;

   --  throws Exception
   function getCellPositionAtNoThrow (This : in out BasicGeographicMap; x : Integer; y : Integer; x2 : Integer; y2 : Integer; geographicMapCellPositionList_Param : access BasicArrayList_Package.BasicArrayList'Class) return BasicArrayList_Access is
      geographicMapCellPositionList : constant BasicArrayList_Access := BasicArrayList_Access (geographicMapCellPositionList_Param);
      allBinaryTiledLayer : AllBinaryTiledLayer_Access;
      i_columnMin : Integer;
      i_rowMin : Integer;
      i_columnMax : Integer;
      i_rowMax : Integer;
      rowIndex : Integer;
      columnIndex : Integer;
   begin
        geographicMapCellPositionList.clear;
        allBinaryTiledLayer := BasicGeographicMap'Class (This).getAllBinaryTiledLayer;
        i_columnMin := This.mathUtil.abs_Id ((x) / (allBinaryTiledLayer.getCellHeight));
        i_rowMin := This.mathUtil.abs_Id ((y) / (allBinaryTiledLayer.getCellWidth));
        i_columnMax := (This.mathUtil.abs_Id ((x2) / (allBinaryTiledLayer.getCellHeight))) + (1);
        i_rowMax := (This.mathUtil.abs_Id ((y2) / (allBinaryTiledLayer.getCellWidth))) + (1);
        for columnIndex in i_columnMin .. (i_columnMax) - 1 loop
            for rowIndex in i_rowMin .. (i_rowMax) - 1 loop
                if ((allBinaryTiledLayer.getColumns) > (columnIndex)) and then ((allBinaryTiledLayer.getRows) > (rowIndex)) then
                    geographicMapCellPositionList.add (This.geographicMapCellPositionFactory.getAt (columnIndex, rowIndex));
                end if;
            end loop;
        end loop;
        return geographicMapCellPositionList;
   end getCellPositionAtNoThrow;

   --  throws Exception
   function getCellPositionsAt (This : in out BasicGeographicMap; layer_Param : access Layer_Package.Layer'Class; currentCellPositionArray : GeographicMapCellPosition_Access_Array_Access_Array_Access; cellPositionArray : GeographicMapCellPosition_Access_Array_Access_Array_Access) return Boolean is
      layer : constant Layer_Access := Layer_Access (layer_Param);
      hasChanged : Boolean;
      size : Integer;
      size2 : Integer;
      xPortion : Integer;
      yPortion : Integer;
      x : Integer;
      y : Integer;
      index2 : Integer;
      index : Integer;
   begin
        hasChanged := False;
        size := cellPositionArray'Length;
        size2 := cellPositionArray (0)'Length;
        xPortion := (layer.getXP) / (((size) - (1)));
        yPortion := (layer.getYP) / (((size) - (1)));
        for index in 0 .. (size) - 1 loop
            for index2 in 0 .. (size2) - 1 loop
                x := (xPortion) * (index);
                y := (yPortion) * (index);
                cellPositionArray (index) (index2) := BasicGeographicMap'Class (This).getCellPositionAtXY (x, y);
                if (currentCellPositionArray (index) (index2)) /= (cellPositionArray (index) (index2)) then
                    hasChanged := True;
                end if;
            end loop;
        end loop;
        return hasChanged;
   end getCellPositionsAt;

   --  throws Exception
   function getCellTypeAtXY (This : in out BasicGeographicMap; x : Integer; y : Integer) return GeographicMapCellType_Access is
      cellPosition : GeographicMapCellPosition_Access;
   begin
        cellPosition := BasicGeographicMap'Class (This).getCellPositionAtXY (x, y);
        return BasicGeographicMap'Class (This).getCellTypeAt (cellPosition);
   end getCellTypeAtXY;

   function getGeographicMapCellPositionFactory (This : in out BasicGeographicMap) return BasicGeographicMapCellPositionFactory_Access is
   begin
        return This.geographicMapCellPositionFactory;
   end getGeographicMapCellPositionFactory;

   function getGeographicMapCellPositionFactoryInterface (This : in out BasicGeographicMap) return GeographicMapCellPositionFactoryInterface_Access is
   begin
        return This.geographicMapCellPositionFactoryInterface;
   end getGeographicMapCellPositionFactoryInterface;

   function getGeographicMapCellTypeFactory (This : in out BasicGeographicMap) return GeographicMapCellTypeFactory_Access is
   begin
        return This.BasicGeographicMap_Field_geographicMapCellTypeFactory;
   end getGeographicMapCellTypeFactory;

   function getId (This : in out BasicGeographicMap) return Integer is
   begin
        return SimpleGeographicMap_Package.SimpleGeographicMap (This).getId;
   end getId;

   function getName (This : in out BasicGeographicMap) return Unbounded_String is
   begin
        return SimpleGeographicMap_Package.SimpleGeographicMap (This).getName;
   end getName;

   procedure reset (This : in out BasicGeographicMap) is
   begin
        SimpleGeographicMap_Package.SimpleGeographicMap (This).reset;
   end reset;

   function getAllBinaryTiledLayer (This : in out BasicGeographicMap) return AllBinaryTiledLayer_Access is
   begin
        return SimpleGeographicMap_Package.SimpleGeographicMap (This).getAllBinaryTiledLayer;
   end getAllBinaryTiledLayer;

   function getCellTypeFromMapCellTypeInt (This : in out BasicGeographicMap; cellTypeId : Integer) return Integer is
   begin
        return SimpleGeographicMap_Package.SimpleGeographicMap (This).getCellTypeFromMapCellTypeInt (cellTypeId);
   end getCellTypeFromMapCellTypeInt;

   --  throws Exception
   function getCellTypeAt (This : in out BasicGeographicMap; cellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) return GeographicMapCellType_Access is
      cellPosition : constant GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (cellPosition_Param);
   begin
        return SimpleGeographicMap_Package.SimpleGeographicMap (This).getCellTypeAt (cellPosition);
   end getCellTypeAt;

   function getForegroundBasicColor (This : in out BasicGeographicMap) return BasicColor_Access is
   begin
        return SimpleGeographicMap_Package.SimpleGeographicMap (This).getForegroundBasicColor;
   end getForegroundBasicColor;

   function getBackgroundBasicColor (This : in out BasicGeographicMap) return BasicColor_Access is
   begin
        return SimpleGeographicMap_Package.SimpleGeographicMap (This).getBackgroundBasicColor;
   end getBackgroundBasicColor;

   procedure getCellPosition (This : in out BasicGeographicMap; direction : Integer; oldGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) is
      Java_Result : constant GeographicMapCellPosition_Access := BasicGeographicMap'Class (This).getCellPosition (direction => direction, oldGeographicMapCellPosition_Param => oldGeographicMapCellPosition_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getCellPosition;

   procedure getCellPositionNoThrow (This : in out BasicGeographicMap; direction : Integer; oldGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) is
      Java_Result : constant GeographicMapCellPosition_Access := BasicGeographicMap'Class (This).getCellPositionNoThrow (direction => direction, oldGeographicMapCellPosition_Param => oldGeographicMapCellPosition_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getCellPositionNoThrow;

   procedure isOfFourDirections (This : in out BasicGeographicMap; oldGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class; newGeographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) is
      Java_Result : constant Boolean := BasicGeographicMap'Class (This).isOfFourDirections (oldGeographicMapCellPosition_Param => oldGeographicMapCellPosition_Param, newGeographicMapCellPosition_Param => newGeographicMapCellPosition_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isOfFourDirections;

   procedure getCellPositionAtXY (This : in out BasicGeographicMap; x : Integer; y : Integer) is
      Java_Result : constant GeographicMapCellPosition_Access := BasicGeographicMap'Class (This).getCellPositionAtXY (x => x, y => y);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getCellPositionAtXY;

   procedure getCellPositionAtXYNoThrow (This : in out BasicGeographicMap; x : Integer; y : Integer) is
      Java_Result : constant GeographicMapCellPosition_Access := BasicGeographicMap'Class (This).getCellPositionAtXYNoThrow (x => x, y => y);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getCellPositionAtXYNoThrow;

   procedure isOnMap (This : in out BasicGeographicMap; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) is
      Java_Result : constant Boolean := BasicGeographicMap'Class (This).isOnMap (geographicMapCellPosition_Param => geographicMapCellPosition_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isOnMap;

   procedure getCellPositionAtNoThrow (This : in out BasicGeographicMap; x : Integer; y : Integer; x2 : Integer; y2 : Integer; geographicMapCellPositionList_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      Java_Result : constant BasicArrayList_Access := BasicGeographicMap'Class (This).getCellPositionAtNoThrow (x => x, y => y, x2 => x2, y2 => y2, geographicMapCellPositionList_Param => geographicMapCellPositionList_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getCellPositionAtNoThrow;

   procedure getCellPositionsAt (This : in out BasicGeographicMap; layer_Param : access Layer_Package.Layer'Class; currentCellPositionArray : GeographicMapCellPosition_Access_Array_Access_Array_Access; cellPositionArray : GeographicMapCellPosition_Access_Array_Access_Array_Access) is
      Java_Result : constant Boolean := BasicGeographicMap'Class (This).getCellPositionsAt (layer_Param => layer_Param, currentCellPositionArray => currentCellPositionArray, cellPositionArray => cellPositionArray);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getCellPositionsAt;

   procedure getCellTypeAtXY (This : in out BasicGeographicMap; x : Integer; y : Integer) is
      Java_Result : constant GeographicMapCellType_Access := BasicGeographicMap'Class (This).getCellTypeAtXY (x => x, y => y);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getCellTypeAtXY;

   procedure getCellTypeFromMapCellTypeInt (This : in out BasicGeographicMap; cellTypeId : Integer) is
      Java_Result : constant Integer := BasicGeographicMap'Class (This).getCellTypeFromMapCellTypeInt (cellTypeId => cellTypeId);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getCellTypeFromMapCellTypeInt;

   procedure getCellTypeAt (This : in out BasicGeographicMap; cellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) is
      Java_Result : constant GeographicMapCellType_Access := BasicGeographicMap'Class (This).getCellTypeAt (cellPosition_Param => cellPosition_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getCellTypeAt;

begin
   null;
   NULL_BASIC_GEOGRAPHIC_MAP_ARRAY := new BasicGeographicMap_Access_Array'(0 .. (0) - 1 => null);

end org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;


