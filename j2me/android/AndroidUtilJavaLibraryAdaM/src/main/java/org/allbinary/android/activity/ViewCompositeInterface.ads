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
with android.view.View_Package; use android.view.View_Package;

package org.allbinary.android.activity.ViewCompositeInterface_Package is

   package View_Package renames android.view.View_Package;

   type ViewCompositeInterface is interface;
   type ViewCompositeInterface_Access is access all ViewCompositeInterface'Class;
   type ViewCompositeInterface_Access_Array is array (Natural range <>) of ViewCompositeInterface_Access;
   type ViewCompositeInterface_Access_Array_Access is access all ViewCompositeInterface_Access_Array;
   function getRootView (This : in out ViewCompositeInterface) return View_Access is abstract;
   function getView (This : in out ViewCompositeInterface) return View_Access is abstract;
   procedure runOnUiThread (This : in out ViewCompositeInterface; action : Runnable_Access) is abstract;

end org.allbinary.android.activity.ViewCompositeInterface_Package;


