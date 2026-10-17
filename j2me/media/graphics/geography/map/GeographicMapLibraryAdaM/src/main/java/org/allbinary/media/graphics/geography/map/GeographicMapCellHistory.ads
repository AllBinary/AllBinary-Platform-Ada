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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with javax.microedition.lcdui.Font_Package; use javax.microedition.lcdui.Font_Package;
--  with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.logic.java.bool.BooleanFactory_Package; use org.allbinary.logic.java.bool.BooleanFactory_Package;
with org.allbinary.animation.Animation_Package; use org.allbinary.animation.Animation_Package;
with org.allbinary.animation.AnimationBehavior_Package; use org.allbinary.animation.AnimationBehavior_Package;
with org.allbinary.animation.text.TextAnimation_Package; use org.allbinary.animation.text.TextAnimation_Package;
with org.allbinary.game.layer.AllBinaryTiledLayer_Package; use org.allbinary.game.layer.AllBinaryTiledLayer_Package;
with org.allbinary.graphics.GPoint_Package; use org.allbinary.graphics.GPoint_Package;
with org.allbinary.graphics.color.BasicColorFactory_Package; use org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.graphics.font.MyFontProcessor_Package; use org.allbinary.graphics.font.MyFontProcessor_Package;
with org.allbinary.graphics.font.UpdateMyFontInterface_Package; use org.allbinary.graphics.font.UpdateMyFontInterface_Package;
with org.allbinary.graphics.font.UpdateMyFontProcessor_Package; use org.allbinary.graphics.font.UpdateMyFontProcessor_Package;
with org.allbinary.logic.math.BasicDecimal_Package; use org.allbinary.logic.math.BasicDecimal_Package;

package org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;
   package BooleanFactory_Package renames Standard.org.allbinary.logic.java.bool.BooleanFactory_Package;
   package Animation_Package renames Standard.org.allbinary.animation.Animation_Package;
   package AnimationBehavior_Package renames Standard.org.allbinary.animation.AnimationBehavior_Package;
   package TextAnimation_Package renames Standard.org.allbinary.animation.text.TextAnimation_Package;
   package AllBinaryTiledLayer_Package renames Standard.org.allbinary.game.layer.AllBinaryTiledLayer_Package;
   package GPoint_Package renames Standard.org.allbinary.graphics.GPoint_Package;
   package BasicColorFactory_Package renames Standard.org.allbinary.graphics.color.BasicColorFactory_Package;
   package MyFontProcessor_Package renames Standard.org.allbinary.graphics.font.MyFontProcessor_Package;
   package UpdateMyFontInterface_Package renames Standard.org.allbinary.graphics.font.UpdateMyFontInterface_Package;
   package UpdateMyFontProcessor_Package renames Standard.org.allbinary.graphics.font.UpdateMyFontProcessor_Package;
   package BasicDecimal_Package renames Standard.org.allbinary.logic.math.BasicDecimal_Package;

   type GeographicMapCellHistory is tagged;
   type GeographicMapCellHistory_Access is access all GeographicMapCellHistory'Class;
   type GeographicMapCellHistory_Access_Array is array (Natural range <>) of GeographicMapCellHistory_Access;
   type GeographicMapCellHistory_Access_Array_Access is access all GeographicMapCellHistory_Access_Array;

   type GeographicMapCellHistory is new UpdateMyFontInterface with record
      logUtil : LogUtil_Access;
      booleanFactory : BooleanFactory_Access;
      list : BasicArrayList_Access;
      visitedList : BasicArrayList_Access;
      MISSED_INFO : Unbounded_String;
      animation : Animation_Access;
      myFontProcessor : MyFontProcessor_Access;
      totalVisited : Integer;
      halfWidth : Integer;
      fontHeight : Integer;
      RED : Integer;
   end record;
   NULL_GEOGRPAHIC_MAP_HISTORY_ARRAY : GeographicMapCellHistory_Access_Array_Access;

   procedure Initialize (This : in out GeographicMapCellHistory'Class);
   function Create return GeographicMapCellHistory_Access;
   procedure updateMeasurement (This : in out GeographicMapCellHistory; graphics : Graphics_Access);
   function getTotalVisited (This : in out GeographicMapCellHistory) return Integer;
   procedure getTotalVisited (This : in out GeographicMapCellHistory);
   function getTotalNotVisited (This : in out GeographicMapCellHistory) return Integer;
   procedure getTotalNotVisited (This : in out GeographicMapCellHistory);
   function getSize (This : in out GeographicMapCellHistory) return Integer;
   procedure getSize (This : in out GeographicMapCellHistory);
   procedure trackAll (This : in out GeographicMapCellHistory; list : BasicArrayList_Access);
   procedure track (This : in out GeographicMapCellHistory; geographicMapCellPosition : GeographicMapCellPosition_Access);
   function getTracked (This : in out GeographicMapCellHistory) return BasicArrayList_Access;
   procedure getTracked (This : in out GeographicMapCellHistory);
   function getVisited (This : in out GeographicMapCellHistory) return BasicArrayList_Access;
   procedure getVisited (This : in out GeographicMapCellHistory);
   function getAfterIfNotLast (This : in out GeographicMapCellHistory; geographicMapCellPosition : GeographicMapCellPosition_Access) return GeographicMapCellPosition_Access;
   procedure getAfterIfNotLast (This : in out GeographicMapCellHistory; geographicMapCellPosition : GeographicMapCellPosition_Access);
   function getFirstUnvisited (This : in out GeographicMapCellHistory) return GeographicMapCellPosition_Access;
   procedure getFirstUnvisited (This : in out GeographicMapCellHistory);
   function getFirstUnvisitedIndex (This : in out GeographicMapCellHistory) return Integer;
   procedure getFirstUnvisitedIndex (This : in out GeographicMapCellHistory);
   function getInPathButNotTracked (This : in out GeographicMapCellHistory; pathList : BasicArrayList_Access) return BasicArrayList_Access;
   procedure getInPathButNotTracked (This : in out GeographicMapCellHistory; pathList : BasicArrayList_Access);
   function isVisited (This : in out GeographicMapCellHistory; geographicMapCellPosition : GeographicMapCellPosition_Access) return Boolean;
   procedure isVisited (This : in out GeographicMapCellHistory; geographicMapCellPosition : GeographicMapCellPosition_Access);
   function visit (This : in out GeographicMapCellHistory; geographicMapCellPosition : GeographicMapCellPosition_Access) return Boolean;
   procedure visit (This : in out GeographicMapCellHistory; geographicMapCellPosition : GeographicMapCellPosition_Access);
   function isAllVisited (This : in out GeographicMapCellHistory) return Boolean;
   procedure isAllVisited (This : in out GeographicMapCellHistory);
   function isAllVisited2 (This : in out GeographicMapCellHistory) return Boolean;
   procedure isAllVisited2 (This : in out GeographicMapCellHistory);
   function isPortionVisited (This : in out GeographicMapCellHistory; basicDecimal : BasicDecimal_Access) return Boolean;
   procedure isPortionVisited (This : in out GeographicMapCellHistory; basicDecimal : BasicDecimal_Access);
   procedure reset (This : in out GeographicMapCellHistory);
   procedure paintNotVisitedRelativeToPoint (This : in out GeographicMapCellHistory; graphics : Graphics_Access; tiledLayer : AllBinaryTiledLayer_Access; point : GPoint_Access);
   procedure paintNotVisited (This : in out GeographicMapCellHistory; graphics : Graphics_Access; geographicMapInterface : BasicGeographicMap_Access);
   procedure init (This : in out GeographicMapCellHistory);

end org.allbinary.media.graphics.geography.map.GeographicMapCellHistory_Package;


