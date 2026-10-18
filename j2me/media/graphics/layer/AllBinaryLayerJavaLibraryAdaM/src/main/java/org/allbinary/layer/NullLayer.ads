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
with javax.microedition.lcdui.Graphics_Package; use javax.microedition.lcdui.Graphics_Package;
with org.allbinary.layer.Layer_Package; use org.allbinary.layer.Layer_Package;

package org.allbinary.layer.NullLayer_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;

   type NullLayer is tagged;
   type NullLayer_Access is access all NullLayer'Class;
   type NullLayer_Access_Array is array (Natural range <>) of NullLayer_Access;
   type NullLayer_Access_Array_Access is access all NullLayer_Access_Array;
   type NullLayer_Access_Array_Access_Array is array (Natural range <>) of NullLayer_Access_Array_Access;
   type NullLayer_Access_Array_Access_Array_Access is access all NullLayer_Access_Array_Access_Array;

   type NullLayer is new Layer_Package.Layer with null record;
   instance : NullLayer_Access;

   procedure Initialize (This : in out NullLayer'Class);
   function Create return NullLayer_Access;
   function getInstance return NullLayer_Access;
   procedure paint (This : in out NullLayer; graphics_Param : access Graphics_Package.Graphics'Class);

end org.allbinary.layer.NullLayer_Package;


