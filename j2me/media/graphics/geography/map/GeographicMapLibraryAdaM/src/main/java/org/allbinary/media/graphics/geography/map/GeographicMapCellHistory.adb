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


with javax.microedition.lcdui.Font_Package; use javax.microedition.lcdui.Font_Package;
with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with javax.microedition.lcdui.Graphics_Package_References;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.communication.log.LogUtil_Package_References;
with org.allbinary.logic.java.bool.BooleanFactory_Package; use org.allbinary.logic.java.bool.BooleanFactory_Package;
with org.allbinary.logic.java.bool.BooleanFactory_Package_References;
with org.allbinary.animation.Animation_Package; use org.allbinary.animation.Animation_Package;
with org.allbinary.animation.Animation_Package_References;
with org.allbinary.animation.AnimationBehavior_Package; use org.allbinary.animation.AnimationBehavior_Package;
with org.allbinary.animation.text.TextAnimation_Package; use org.allbinary.animation.text.TextAnimation_Package;
with org.allbinary.game.layer.AllBinaryTiledLayer_Package; use org.allbinary.game.layer.AllBinaryTiledLayer_Package;
with org.allbinary.game.layer.AllBinaryTiledLayer_Package_References;
with org.allbinary.graphics.GPoint_Package; use org.allbinary.graphics.GPoint_Package;
with org.allbinary.graphics.GPoint_Package_References;
with org.allbinary.graphics.color.BasicColorFactory_Package; use org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.graphics.font.MyFontProcessor_Package; use org.allbinary.graphics.font.MyFontProcessor_Package;
with org.allbinary.graphics.font.MyFontProcessor_Package_References;
with org.allbinary.graphics.font.UpdateMyFontInterface_Package; use org.allbinary.graphics.font.UpdateMyFontInterface_Package;
with org.allbinary.graphics.font.UpdateMyFontProcessor_Package; use org.allbinary.graphics.font.UpdateMyFontProcessor_Package;
with org.allbinary.logic.math.BasicDecimal_Package; use org.allbinary.logic.math.BasicDecimal_Package;
with org.allbinary.logic.math.BasicDecimal_Package_References;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package; use org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package_References;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package; use org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References;
with org.allbinary.util.ArrayUtil_Package;
with org.allbinary.util.BasicArrayListS_Package;
with org.allbinary.graphics.color.BasicColor_Package;
with org.allbinary.graphics.color.BasicColorSetUtil_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package;
with org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory_Package;
with org.allbinary.graphics.CellPosition_Package;
with org.allbinary.string_Id.CommonSeps_Package;
with org.allbinary.logic.java.exception_Id.ExceptionUtil_Package;
with javax.microedition.khronos.opengles.GL_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPosition_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPositionBaseFactory_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInitVisitorInterface_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellType_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory_Package;
with org.allbinary.media.graphics.geography.map.GeographicMapInterface_Package;
with javax.microedition.lcdui.Image_Package;
with org.allbinary.animation.IndexedAnimation_Package;
with org.allbinary.layer.Layer_Package;
with org.allbinary.logic.communication.log.Log_Package;
with org.allbinary.logic.communication.log.LogFormatUtil_Package;
with org.allbinary.logic.math.MathUtil_Package;
with org.allbinary.logic.NullUtil_Package;
with org.allbinary.media.graphics.geography.map.SimpleGeographicMap_Package;
with org.allbinary.logic.string_Id.StringMaker_Package;
with org.allbinary.logic.string_Id.StringUtil_Package;
with org.allbinary.animation.text.TextChangeListener_Package;
with org.allbinary.time.TimeStampUtil_Package;
with org.allbinary.graph.V_Package;

package body org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package is

   package Font_Package renames Standard.javax.microedition.lcdui.Font_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package AnimationBehavior_Package renames Standard.org.allbinary.animation.AnimationBehavior_Package;
   package TextAnimation_Package renames Standard.org.allbinary.animation.text.TextAnimation_Package;
   package BasicColorFactory_Package renames Standard.org.allbinary.graphics.color.BasicColorFactory_Package;
   package UpdateMyFontProcessor_Package renames Standard.org.allbinary.graphics.font.UpdateMyFontProcessor_Package;
   subtype Graphics_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access;
   function "=" (Left, Right : Graphics_Access) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array;
   function "=" (Left, Right : Graphics_Access_Array) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access;
   function "=" (Left, Right : Graphics_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array_Access_Array is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array;
   function "=" (Left, Right : Graphics_Access_Array_Access_Array) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
   subtype Graphics_Access_Array_Access_Array_Access is javax.microedition.lcdui.Graphics_Package_References.Graphics_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Graphics_Access_Array_Access_Array_Access) return Boolean renames javax.microedition.lcdui.Graphics_Package_References."=";
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
   subtype BooleanFactory_Access is org.allbinary.logic.java.bool.BooleanFactory_Package_References.BooleanFactory_Access;
   function "=" (Left, Right : BooleanFactory_Access) return Boolean renames org.allbinary.logic.java.bool.BooleanFactory_Package_References."=";
   subtype BooleanFactory_Access_Array is org.allbinary.logic.java.bool.BooleanFactory_Package_References.BooleanFactory_Access_Array;
   function "=" (Left, Right : BooleanFactory_Access_Array) return Boolean renames org.allbinary.logic.java.bool.BooleanFactory_Package_References."=";
   subtype BooleanFactory_Access_Array_Access is org.allbinary.logic.java.bool.BooleanFactory_Package_References.BooleanFactory_Access_Array_Access;
   function "=" (Left, Right : BooleanFactory_Access_Array_Access) return Boolean renames org.allbinary.logic.java.bool.BooleanFactory_Package_References."=";
   subtype BooleanFactory_Access_Array_Access_Array is org.allbinary.logic.java.bool.BooleanFactory_Package_References.BooleanFactory_Access_Array_Access_Array;
   function "=" (Left, Right : BooleanFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.java.bool.BooleanFactory_Package_References."=";
   subtype BooleanFactory_Access_Array_Access_Array_Access is org.allbinary.logic.java.bool.BooleanFactory_Package_References.BooleanFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BooleanFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.java.bool.BooleanFactory_Package_References."=";
   subtype Animation_Access is org.allbinary.animation.Animation_Package_References.Animation_Access;
   function "=" (Left, Right : Animation_Access) return Boolean renames org.allbinary.animation.Animation_Package_References."=";
   subtype Animation_Access_Array is org.allbinary.animation.Animation_Package_References.Animation_Access_Array;
   function "=" (Left, Right : Animation_Access_Array) return Boolean renames org.allbinary.animation.Animation_Package_References."=";
   subtype Animation_Access_Array_Access is org.allbinary.animation.Animation_Package_References.Animation_Access_Array_Access;
   function "=" (Left, Right : Animation_Access_Array_Access) return Boolean renames org.allbinary.animation.Animation_Package_References."=";
   subtype Animation_Access_Array_Access_Array is org.allbinary.animation.Animation_Package_References.Animation_Access_Array_Access_Array;
   function "=" (Left, Right : Animation_Access_Array_Access_Array) return Boolean renames org.allbinary.animation.Animation_Package_References."=";
   subtype Animation_Access_Array_Access_Array_Access is org.allbinary.animation.Animation_Package_References.Animation_Access_Array_Access_Array_Access;
   function "=" (Left, Right : Animation_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.animation.Animation_Package_References."=";
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
   subtype GPoint_Access is org.allbinary.graphics.GPoint_Package_References.GPoint_Access;
   function "=" (Left, Right : GPoint_Access) return Boolean renames org.allbinary.graphics.GPoint_Package_References."=";
   subtype GPoint_Access_Array is org.allbinary.graphics.GPoint_Package_References.GPoint_Access_Array;
   function "=" (Left, Right : GPoint_Access_Array) return Boolean renames org.allbinary.graphics.GPoint_Package_References."=";
   subtype GPoint_Access_Array_Access is org.allbinary.graphics.GPoint_Package_References.GPoint_Access_Array_Access;
   function "=" (Left, Right : GPoint_Access_Array_Access) return Boolean renames org.allbinary.graphics.GPoint_Package_References."=";
   subtype GPoint_Access_Array_Access_Array is org.allbinary.graphics.GPoint_Package_References.GPoint_Access_Array_Access_Array;
   function "=" (Left, Right : GPoint_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.GPoint_Package_References."=";
   subtype GPoint_Access_Array_Access_Array_Access is org.allbinary.graphics.GPoint_Package_References.GPoint_Access_Array_Access_Array_Access;
   function "=" (Left, Right : GPoint_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.GPoint_Package_References."=";
   subtype MyFontProcessor_Access is org.allbinary.graphics.font.MyFontProcessor_Package_References.MyFontProcessor_Access;
   function "=" (Left, Right : MyFontProcessor_Access) return Boolean renames org.allbinary.graphics.font.MyFontProcessor_Package_References."=";
   subtype MyFontProcessor_Access_Array is org.allbinary.graphics.font.MyFontProcessor_Package_References.MyFontProcessor_Access_Array;
   function "=" (Left, Right : MyFontProcessor_Access_Array) return Boolean renames org.allbinary.graphics.font.MyFontProcessor_Package_References."=";
   subtype MyFontProcessor_Access_Array_Access is org.allbinary.graphics.font.MyFontProcessor_Package_References.MyFontProcessor_Access_Array_Access;
   function "=" (Left, Right : MyFontProcessor_Access_Array_Access) return Boolean renames org.allbinary.graphics.font.MyFontProcessor_Package_References."=";
   subtype MyFontProcessor_Access_Array_Access_Array is org.allbinary.graphics.font.MyFontProcessor_Package_References.MyFontProcessor_Access_Array_Access_Array;
   function "=" (Left, Right : MyFontProcessor_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.font.MyFontProcessor_Package_References."=";
   subtype MyFontProcessor_Access_Array_Access_Array_Access is org.allbinary.graphics.font.MyFontProcessor_Package_References.MyFontProcessor_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MyFontProcessor_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.font.MyFontProcessor_Package_References."=";
   subtype BasicDecimal_Access is org.allbinary.logic.math.BasicDecimal_Package_References.BasicDecimal_Access;
   function "=" (Left, Right : BasicDecimal_Access) return Boolean renames org.allbinary.logic.math.BasicDecimal_Package_References."=";
   subtype BasicDecimal_Access_Array is org.allbinary.logic.math.BasicDecimal_Package_References.BasicDecimal_Access_Array;
   function "=" (Left, Right : BasicDecimal_Access_Array) return Boolean renames org.allbinary.logic.math.BasicDecimal_Package_References."=";
   subtype BasicDecimal_Access_Array_Access is org.allbinary.logic.math.BasicDecimal_Package_References.BasicDecimal_Access_Array_Access;
   function "=" (Left, Right : BasicDecimal_Access_Array_Access) return Boolean renames org.allbinary.logic.math.BasicDecimal_Package_References."=";
   subtype BasicDecimal_Access_Array_Access_Array is org.allbinary.logic.math.BasicDecimal_Package_References.BasicDecimal_Access_Array_Access_Array;
   function "=" (Left, Right : BasicDecimal_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.math.BasicDecimal_Package_References."=";
   subtype BasicDecimal_Access_Array_Access_Array_Access is org.allbinary.logic.math.BasicDecimal_Package_References.BasicDecimal_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicDecimal_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.math.BasicDecimal_Package_References."=";
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
   subtype BasicGeographicMap_Access is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access;
   function "=" (Left, Right : BasicGeographicMap_Access) return Boolean renames org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References."=";
   subtype BasicGeographicMap_Access_Array is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access_Array;
   function "=" (Left, Right : BasicGeographicMap_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References."=";
   subtype BasicGeographicMap_Access_Array_Access is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access_Array_Access;
   function "=" (Left, Right : BasicGeographicMap_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References."=";
   subtype BasicGeographicMap_Access_Array_Access_Array is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access_Array_Access_Array;
   function "=" (Left, Right : BasicGeographicMap_Access_Array_Access_Array) return Boolean renames org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References."=";
   subtype BasicGeographicMap_Access_Array_Access_Array_Access is org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References.BasicGeographicMap_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicGeographicMap_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.media.graphics.geography.map.BasicGeographicMap_Package_References."=";
   procedure Initialize_Fields (This : in out GeographicMapCellHistory'Class) is
   begin
      null;
      This.logUtil := LogUtil_Package.getInstance;
      This.booleanFactory := BooleanFactory_Package.getInstance;
      
      
      This.MISSED_INFO := To_Unbounded_String ("Missed");
      This.animation := Animation_Access (TextAnimation_Package.Create (This.MISSED_INFO, AnimationBehavior_Package.getInstance));
      This.myFontProcessor := MyFontProcessor_Access (UpdateMyFontProcessor_Package.Create (GeographicMapCellHistory_Access'(This'Unchecked_Access)));
      This.totalVisited := 0;
      This.halfWidth := 0;
      This.fontHeight := 0;
      This.RED := BasicColorFactory_Package.getInstance.RED.intValue;
   end Initialize_Fields;


   procedure Initialize (This : in out GeographicMapCellHistory'Class) is
   begin
      Initialize_Fields (This);
        This.list := BasicArrayList_Access (BasicArrayListD_Package.Create);
        This.visitedList := BasicArrayList_Access (BasicArrayListD_Package.Create);
        GeographicMapCellHistory'Class (This).init;
   end Initialize;

   function Create return GeographicMapCellHistory_Access is
      This : constant GeographicMapCellHistory_Access := new GeographicMapCellHistory;
   begin
      GeographicMapCellHistory_Package.Initialize (This.all);
      return This;
   end Create;

   procedure updateMeasurement (This : in out GeographicMapCellHistory; graphics_Param : access Graphics_Package.Graphics'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
      font : Font_Access;
   begin
        font := graphics.getFont;
        This.fontHeight := font.getHeight;
        This.myFontProcessor := MyFontProcessor_Package.getInstance;
   end updateMeasurement;

   function getTotalVisited (This : in out GeographicMapCellHistory) return Integer is
   begin
        return This.totalVisited;
   end getTotalVisited;

   function getTotalNotVisited (This : in out GeographicMapCellHistory) return Integer is
   begin
        return (GeographicMapCellHistory'Class (This).getSize) - (This.totalVisited);
   end getTotalNotVisited;

   function getSize (This : in out GeographicMapCellHistory) return Integer is
   begin
        return This.list.size;
   end getSize;

   procedure trackAll (This : in out GeographicMapCellHistory; list_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      list : constant BasicArrayList_Access := BasicArrayList_Access (list_Param);
      size : Integer;
      geographicMapCellPosition : GeographicMapCellPosition_Access;
      index : Integer;
   begin
        size := list.size;
        This.list.ensureCapacity (size);
        This.visitedList.ensureCapacity (size);
        geographicMapCellPosition := null;
        for index in 0 .. (size) - 1 loop
            geographicMapCellPosition := GeographicMapCellPosition_Access (list.get (index));
            GeographicMapCellHistory'Class (This).track (geographicMapCellPosition);
        end loop;
   end trackAll;

   procedure track (This : in out GeographicMapCellHistory; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) is
      geographicMapCellPosition : constant GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (geographicMapCellPosition_Param);
   begin
        if not (This.list.contains (Java_Object_Access (geographicMapCellPosition))) then
            This.list.add (Java_Object_Access (geographicMapCellPosition));
            This.visitedList.add (Java_Box (This.booleanFactory.FALSE));
        end if;
   end track;

   function getTracked (This : in out GeographicMapCellHistory) return BasicArrayList_Access is
   begin
        return This.list;
   end getTracked;

   function getVisited (This : in out GeographicMapCellHistory) return BasicArrayList_Access is
   begin
        return This.visitedList;
   end getVisited;

   function getAfterIfNotLast (This : in out GeographicMapCellHistory; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) return GeographicMapCellPosition_Access is
      geographicMapCellPosition : constant GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (geographicMapCellPosition_Param);
      localList : BasicArrayList_Access;
      index : Integer;
   begin
        localList := This.list;
        index := localList.indexOf (Java_Object_Access (geographicMapCellPosition));
        if (localList.size) > ((index) + (1)) then
            return GeographicMapCellPosition_Access (localList.get ((index) + (1)));
        end if;
        return geographicMapCellPosition;
   end getAfterIfNotLast;

   function getFirstUnvisited (This : in out GeographicMapCellHistory) return GeographicMapCellPosition_Access is
      localList : BasicArrayList_Access;
      localVisitedList : BasicArrayList_Access;
      size : Integer;
      value : Boolean;
      index : Integer;
   begin
        localList := This.list;
        localVisitedList := This.visitedList;
        size := localVisitedList.size;
        value := False;
        for index in 0 .. (size) - 1 loop
            value := Java_Unbox_Boolean (This.visitedList.get (index));
            if (value) = (This.booleanFactory.FALSE) then
                return GeographicMapCellPosition_Access (localList.get (index));
            end if;
        end loop;
        return GeographicMapCellPosition_Access (localList.get (0));
   end getFirstUnvisited;

   function getFirstUnvisitedIndex (This : in out GeographicMapCellHistory) return Integer is
      localVisitedList : BasicArrayList_Access;
      size : Integer;
      value : Boolean;
      index : Integer;
   begin
        localVisitedList := This.visitedList;
        size := localVisitedList.size;
        value := False;
        for index in 0 .. (size) - 1 loop
            value := Java_Unbox_Boolean (This.visitedList.get (index));
            if (value) = (This.booleanFactory.FALSE) then
                return index;
            end if;
        end loop;
        return 0;
   end getFirstUnvisitedIndex;

   function getInPathButNotTracked (This : in out GeographicMapCellHistory; pathList_Param : access BasicArrayList_Package.BasicArrayList'Class) return BasicArrayList_Access is
      pathList : constant BasicArrayList_Access := BasicArrayList_Access (pathList_Param);
      inPathButNotTrackedList : BasicArrayList_Access;
      localList : BasicArrayList_Access;
      size : Integer;
      geographicMapCellPosition : GeographicMapCellPosition_Access;
      index : Integer;
   begin
        inPathButNotTrackedList := BasicArrayList_Access (BasicArrayListD_Package.Create);
        localList := This.list;
        size := pathList.size;
        geographicMapCellPosition := null;
        for index in 0 .. (size) - 1 loop
            geographicMapCellPosition := GeographicMapCellPosition_Access (pathList.get (index));
            if not (localList.contains (Java_Object_Access (geographicMapCellPosition))) then
                inPathButNotTrackedList.add (Java_Object_Access (geographicMapCellPosition));
            end if;
        end loop;
        return inPathButNotTrackedList;
   end getInPathButNotTracked;

   function isVisited (This : in out GeographicMapCellHistory; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) return Boolean is
      geographicMapCellPosition : constant GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (geographicMapCellPosition_Param);
      index : Integer;
      value : Boolean;
   begin
        index := This.list.indexOf (Java_Object_Access (geographicMapCellPosition));
        if (index) /= (-(1)) then
            value := Java_Unbox_Boolean (This.visitedList.get (index));
            if (value) = (This.booleanFactory.TRUE) then
                return True;
            end if;
        else
            null;
        end if;
        return False;
   end isVisited;

   function visit (This : in out GeographicMapCellHistory; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) return Boolean is
      geographicMapCellPosition : constant GeographicMapCellPosition_Access := GeographicMapCellPosition_Access (geographicMapCellPosition_Param);
      index : Integer;
      value : Boolean;
      TRUE : Boolean;
   begin
        index := This.list.indexOf (Java_Object_Access (geographicMapCellPosition));
        value := False;
        if (index) /= (-(1)) then
            value := Java_Unbox_Boolean (This.visitedList.get (index));
            TRUE := This.booleanFactory.TRUE;
            if (value) /= (TRUE) then
                This.visitedList.set (index, Java_Box (TRUE));
                This.totalVisited := This.totalVisited + 1;
                return True;
            end if;
        else
            null;
        end if;
        return False;
   end visit;

   --  throws Exception
   function isAllVisited (This : in out GeographicMapCellHistory) return Boolean is
   begin
        if (This.totalVisited) = ((GeographicMapCellHistory'Class (This).getSize) - (1)) then
            return True;
        else
            return False;
        end if;
   end isAllVisited;

   --  throws Exception
   function isAllVisited2 (This : in out GeographicMapCellHistory) return Boolean is
   begin
        if (This.totalVisited) = (GeographicMapCellHistory'Class (This).getSize) then
            return True;
        else
            return False;
        end if;
   end isAllVisited2;

   --  throws Exception
   function isPortionVisited (This : in out GeographicMapCellHistory; basicDecimal_Param : access BasicDecimal_Package.BasicDecimal'Class) return Boolean is
      basicDecimal : constant BasicDecimal_Access := BasicDecimal_Access (basicDecimal_Param);
      size : Integer;
      numberRequired : Integer;
      numberNotVisited : Integer;
   begin
        size := GeographicMapCellHistory'Class (This).getSize;
        numberRequired := ((Java_Shift_Left (size, basicDecimal.getScaledFactor))) / (Integer (basicDecimal.getUnscaled));
        numberNotVisited := ((GeographicMapCellHistory'Class (This).getSize) - (1)) - (This.totalVisited);
        if ((size) - (numberNotVisited)) > (numberRequired) then
            return True;
        else
            return False;
        end if;
   end isPortionVisited;

   --  throws Exception
   procedure reset (This : in out GeographicMapCellHistory) is
      localVisitedList : BasicArrayList_Access;
      localFalseBoolean : Boolean;
      size : Integer;
      index : Integer;
   begin
        localVisitedList := This.visitedList;
        localFalseBoolean := This.booleanFactory.FALSE;
        size := localVisitedList.size;
        for index in reverse 0 .. (size) - (1) loop
            localVisitedList.set (index, Java_Box (localFalseBoolean));
        end loop;
        This.totalVisited := 0;
   end reset;

   procedure paintNotVisitedRelativeToPoint (This : in out GeographicMapCellHistory; graphics_Param : access Graphics_Package.Graphics'Class; tiledLayer_Param : access AllBinaryTiledLayer_Package.AllBinaryTiledLayer'Class; point_Param : access GPoint_Package.GPoint'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
      tiledLayer : constant AllBinaryTiledLayer_Access := AllBinaryTiledLayer_Access (tiledLayer_Param);
      point : constant GPoint_Access := GPoint_Access (point_Param);
      x : Integer;
      y : Integer;
      height : Integer;
   begin
        x := (point.getX) - (tiledLayer.getXP);
        y := (point.getY) - (tiledLayer.getYP);
        if (This.halfWidth) = (0) then
            This.halfWidth := (Java_Shift_Right_Arithmetic (graphics.getFont.stringWidth (This.MISSED_INFO), 1));
        end if;
        height := (2) * (This.fontHeight);
        This.animation.paintXY (graphics, (x) + (This.halfWidth), (y) + ((height)));
   end paintNotVisitedRelativeToPoint;

   procedure paintNotVisited (This : in out GeographicMapCellHistory; graphics_Param : access Graphics_Package.Graphics'Class; geographicMapInterface_Param : access BasicGeographicMap_Package.BasicGeographicMap'Class) is
      graphics : constant Graphics_Access := Graphics_Access (graphics_Param);
      geographicMapInterface : constant BasicGeographicMap_Access := BasicGeographicMap_Access (geographicMapInterface_Param);
      localVisitedList : BasicArrayList_Access;
      size : Integer;
      geographicMapCellPosition : GeographicMapCellPosition_Access;
      isCellVisitedBoolean : Boolean;
      index : Integer;
      commonStrings : CommonStrings_Access;
   begin
        begin
            This.myFontProcessor.process (graphics);
            graphics.setColor (This.RED);
            localVisitedList := This.visitedList;
            size := localVisitedList.size;
            geographicMapCellPosition := null;
            isCellVisitedBoolean := False;
            index := size;
            while (Java_Pre_Decrement (index)) >= (0) loop
                geographicMapCellPosition := GeographicMapCellPosition_Access (This.list.get (index));
                isCellVisitedBoolean := Java_Unbox_Boolean (localVisitedList.get (index));
                if not (isCellVisitedBoolean) then
                    GeographicMapCellHistory'Class (This).paintNotVisitedRelativeToPoint (graphics, geographicMapInterface.getAllBinaryTiledLayer, geographicMapCellPosition.getPoint);
                end if;
            end loop;
        exception
            when Java_Occurrence : others =>
                declare
                    e : Java_Throwable := Java_To_Throwable (Java_Occurrence);
                begin
            commonStrings := CommonStrings_Package.getInstance;
            This.logUtil.put (commonStrings.EXCEPTION_Id, GeographicMapCellHistory_Access'(This'Unchecked_Access), To_Unbounded_String ("paintNotVisited"), e);
                end;
        end;
   end paintNotVisited;

   procedure init (This : in out GeographicMapCellHistory) is
   begin
        This.list.clear;
        This.visitedList.clear;
        This.totalVisited := 0;
   end init;

   procedure getAfterIfNotLast (This : in out GeographicMapCellHistory; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) is
      Java_Result : constant GeographicMapCellPosition_Access := GeographicMapCellHistory'Class (This).getAfterIfNotLast (geographicMapCellPosition_Param => geographicMapCellPosition_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getAfterIfNotLast;

   procedure getInPathButNotTracked (This : in out GeographicMapCellHistory; pathList_Param : access BasicArrayList_Package.BasicArrayList'Class) is
      Java_Result : constant BasicArrayList_Access := GeographicMapCellHistory'Class (This).getInPathButNotTracked (pathList_Param => pathList_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end getInPathButNotTracked;

   procedure isVisited (This : in out GeographicMapCellHistory; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) is
      Java_Result : constant Boolean := GeographicMapCellHistory'Class (This).isVisited (geographicMapCellPosition_Param => geographicMapCellPosition_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isVisited;

   procedure visit (This : in out GeographicMapCellHistory; geographicMapCellPosition_Param : access GeographicMapCellPosition_Package.GeographicMapCellPosition'Class) is
      Java_Result : constant Boolean := GeographicMapCellHistory'Class (This).visit (geographicMapCellPosition_Param => geographicMapCellPosition_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end visit;

   procedure isPortionVisited (This : in out GeographicMapCellHistory; basicDecimal_Param : access BasicDecimal_Package.BasicDecimal'Class) is
      Java_Result : constant Boolean := GeographicMapCellHistory'Class (This).isPortionVisited (basicDecimal_Param => basicDecimal_Param);
      pragma Unreferenced (Java_Result);
   begin
      null;
   end isPortionVisited;

begin
   null;
   NULL_GEOGRPAHIC_MAP_HISTORY_ARRAY := new GeographicMapCellHistory_Access_Array'(0 .. (0) - 1 => null);

end org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package;


