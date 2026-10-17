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
with org.allbinary.game.input.RTSLayerFormFactoryInterface_Package; use org.allbinary.game.input.RTSLayerFormFactoryInterface_Package;

package org.allbinary.game.input.RTSLayerFormFactory_Package is

   package RTSLayer_Package renames Standard.org.allbinary.game.layer.RTSLayer_Package;
   package ScrollSelectionForm_Package renames Standard.org.allbinary.graphics.form.ScrollSelectionForm_Package;

   type RTSLayerFormFactory is tagged;
   type RTSLayerFormFactory_Access is access all RTSLayerFormFactory'Class;
   type RTSLayerFormFactory_Access_Array is array (Natural range <>) of RTSLayerFormFactory_Access;
   type RTSLayerFormFactory_Access_Array_Access is access all RTSLayerFormFactory_Access_Array;

   type RTSLayerFormFactory is new RTSLayerFormFactoryInterface with null record;

   procedure Initialize (This : in out RTSLayerFormFactory'Class);
   function Create return RTSLayerFormFactory_Access;
   function getInstance (This : in out RTSLayerFormFactory; rtsLayer_Param : access RTSLayer'Class) return ScrollSelectionForm_Access;
   procedure getInstance (This : in out RTSLayerFormFactory; rtsLayer_Param : access RTSLayer'Class);

end org.allbinary.game.input.RTSLayerFormFactory_Package;


