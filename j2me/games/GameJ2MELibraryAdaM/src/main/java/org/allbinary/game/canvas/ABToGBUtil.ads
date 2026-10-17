-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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
--  with javax.microedition.lcdui.Canvas_Package; use javax.microedition.lcdui.Canvas_Package;
--  with javax.microedition.lcdui.NullCanvas_Package; use javax.microedition.lcdui.NullCanvas_Package;
with org.allbinary.game.layer.AllBinaryGameLayerManager_Package; use org.allbinary.game.layer.AllBinaryGameLayerManager_Package;

package org.allbinary.game.canvas.ABToGBUtil_Package is

   package AllBinaryGameLayerManager_Package renames Standard.org.allbinary.game.layer.AllBinaryGameLayerManager_Package;

   type ABToGBUtil is tagged;
   type ABToGBUtil_Access is access all ABToGBUtil'Class;
   type ABToGBUtil_Access_Array is array (Natural range <>) of ABToGBUtil_Access;
   type ABToGBUtil_Access_Array_Access is access all ABToGBUtil_Access_Array;

   type ABToGBUtil is new Java_Object with record
      abCanvas : Canvas_Access;
      allBinaryGameLayerManager : AllBinaryGameLayerManager_Access;
   end record;
   instance : ABToGBUtil_Access;

   procedure Initialize (This : in out ABToGBUtil'Class);
   function Create return ABToGBUtil_Access;
   function getInstance return ABToGBUtil_Access;
   procedure getInstance;

end org.allbinary.game.canvas.ABToGBUtil_Package;


