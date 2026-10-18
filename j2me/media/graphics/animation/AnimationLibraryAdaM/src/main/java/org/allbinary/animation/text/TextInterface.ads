-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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
with org.allbinary.animation.text.TextChangeListener_Package; use org.allbinary.animation.text.TextChangeListener_Package;

package org.allbinary.animation.text.TextInterface_Package is


   type TextInterface is interface;
   type TextInterface_Access is access all TextInterface'Class;
   type TextInterface_Access_Array is array (Natural range <>) of TextInterface_Access;
   type TextInterface_Access_Array_Access is access all TextInterface_Access_Array;
   type TextInterface_Access_Array_Access_Array is array (Natural range <>) of TextInterface_Access_Array_Access;
   type TextInterface_Access_Array_Access_Array_Access is access all TextInterface_Access_Array_Access_Array;
   procedure setTextWithOnMeasure (This : in out TextInterface; text : Unbounded_String; textChangeListener_Param : access TextChangeListener_Package.TextChangeListener'Class) is abstract;
   function getText (This : in out TextInterface) return Unbounded_String is abstract;
   procedure setText (This : in out TextInterface; text : Unbounded_String) is abstract;
   function getFontHeight (This : in out TextInterface) return Integer is abstract;
   function getWidth (This : in out TextInterface) return Integer is abstract;

end org.allbinary.animation.text.TextInterface_Package;


