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
with jsinterop.annotations.JsType_Package; use jsinterop.annotations.JsType_Package;
with jsinterop.annotations.JsMethod_Package; use jsinterop.annotations.JsMethod_Package;
with org.allbinary.graphics.color.BasicColorCompositeSetterInterface_Package; use org.allbinary.graphics.color.BasicColorCompositeSetterInterface_Package;

package org.allbinary.graphics.color.ColorCompositeInterface_Package is

   package JsType_Package renames Standard.jsinterop.annotations.JsType_Package;
   package JsMethod_Package renames Standard.jsinterop.annotations.JsMethod_Package;

   type ColorCompositeInterface is interface and BasicColorCompositeSetterInterface;
   type ColorCompositeInterface_Access is access all ColorCompositeInterface'Class;
   type ColorCompositeInterface_Access_Array is array (Natural range <>) of ColorCompositeInterface_Access;
   type ColorCompositeInterface_Access_Array_Access is access all ColorCompositeInterface_Access_Array;
   function getBasicColorP (This : in out ColorCompositeInterface) return BasicColor_Access is abstract;

end org.allbinary.graphics.color.ColorCompositeInterface_Package;


