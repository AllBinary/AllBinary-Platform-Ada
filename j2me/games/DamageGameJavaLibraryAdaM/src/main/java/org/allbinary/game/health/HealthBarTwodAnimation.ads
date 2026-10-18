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
with org.allbinary.layer.AllBinaryLayer_Package; use org.allbinary.layer.AllBinaryLayer_Package;
with org.allbinary.game.health.HealthBarAnimation_Package; use org.allbinary.game.health.HealthBarAnimation_Package;

package org.allbinary.game.health.HealthBarTwodAnimation_Package is

   package Graphics_Package renames Standard.javax.microedition.lcdui.Graphics_Package;
   package AllBinaryLayer_Package renames Standard.org.allbinary.layer.AllBinaryLayer_Package;

   type HealthBarTwodAnimation is tagged;
   type HealthBarTwodAnimation_Access is access all HealthBarTwodAnimation'Class;
   type HealthBarTwodAnimation_Access_Array is array (Natural range <>) of HealthBarTwodAnimation_Access;
   type HealthBarTwodAnimation_Access_Array_Access is access all HealthBarTwodAnimation_Access_Array;
   type HealthBarTwodAnimation_Access_Array_Access_Array is array (Natural range <>) of HealthBarTwodAnimation_Access_Array_Access;
   type HealthBarTwodAnimation_Access_Array_Access_Array_Access is access all HealthBarTwodAnimation_Access_Array_Access_Array;

   type HealthBarTwodAnimation is new HealthBarAnimation with null record;

   procedure Initialize (This : in out HealthBarTwodAnimation'Class; layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; location : Integer);
   function Create (layerInterface_Param : access AllBinaryLayer_Package.AllBinaryLayer'Class; location : Integer) return HealthBarTwodAnimation_Access;
   procedure paintXY (This : in out HealthBarTwodAnimation; graphics_Param : access Graphics_Package.Graphics'Class; x : Integer; y : Integer);

end org.allbinary.game.health.HealthBarTwodAnimation_Package;


