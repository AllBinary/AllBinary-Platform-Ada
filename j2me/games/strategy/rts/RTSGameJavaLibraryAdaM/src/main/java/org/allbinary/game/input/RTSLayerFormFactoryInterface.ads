-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2003 AllBinary 
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
with org.allbinary.game.layer.RTSLayer_Package; use org.allbinary.game.layer.RTSLayer_Package;
with org.allbinary.graphics.form.ScrollSelectionForm_Package; use org.allbinary.graphics.form.ScrollSelectionForm_Package;

package org.allbinary.game.input.RTSLayerFormFactoryInterface_Package is

   package RTSLayer_Package renames Standard.org.allbinary.game.layer.RTSLayer_Package;
   package ScrollSelectionForm_Package renames Standard.org.allbinary.graphics.form.ScrollSelectionForm_Package;

   type RTSLayerFormFactoryInterface is interface;
   type RTSLayerFormFactoryInterface_Access is access all RTSLayerFormFactoryInterface'Class;
   type RTSLayerFormFactoryInterface_Access_Array is array (Natural range <>) of RTSLayerFormFactoryInterface_Access;
   type RTSLayerFormFactoryInterface_Access_Array_Access is access all RTSLayerFormFactoryInterface_Access_Array;
   type RTSLayerFormFactoryInterface_Access_Array_Access_Array is array (Natural range <>) of RTSLayerFormFactoryInterface_Access_Array_Access;
   type RTSLayerFormFactoryInterface_Access_Array_Access_Array_Access is access all RTSLayerFormFactoryInterface_Access_Array_Access_Array;
   function getInstance (This : in out RTSLayerFormFactoryInterface; rtsLayer_Param : access RTSLayer_Package.RTSLayer'Class) return ScrollSelectionForm_Access is abstract;

end org.allbinary.game.input.RTSLayerFormFactoryInterface_Package;


