-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2006 AllBinary 
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
with org.allbinary.graphics.form.item.ABCustomItem_Package; use org.allbinary.graphics.form.item.ABCustomItem_Package;
with org.allbinary.graphics.PointFactory_Package; use org.allbinary.graphics.PointFactory_Package;
with org.allbinary.graphics.Rectangle_Package; use org.allbinary.graphics.Rectangle_Package;
with org.allbinary.graphics.color.BasicColorFactory_Package; use org.allbinary.graphics.color.BasicColorFactory_Package;
with org.allbinary.graphics.displayable.DisplayInfoSingleton_Package; use org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
with org.allbinary.graphics.form.FormTypeFactory_Package; use org.allbinary.graphics.form.FormTypeFactory_Package;
with org.allbinary.graphics.form.MultipleScrollSelectionHorizontalForm_Package; use org.allbinary.graphics.form.MultipleScrollSelectionHorizontalForm_Package;
with org.allbinary.graphics.form.ScrollSelectionForm_Package; use org.allbinary.graphics.form.ScrollSelectionForm_Package;
with org.allbinary.input.motion.button.CommonButtons_Package; use org.allbinary.input.motion.button.CommonButtons_Package;
with org.allbinary.input.motion.button.TouchButtonLocationHelper_Package; use org.allbinary.input.motion.button.TouchButtonLocationHelper_Package;

package org.allbinary.game.layer.RTSScrollSelectionFormFactory_Package is

   package ABCustomItem_Package renames org.allbinary.graphics.form.item.ABCustomItem_Package;
   package PointFactory_Package renames org.allbinary.graphics.PointFactory_Package;
   package Rectangle_Package renames org.allbinary.graphics.Rectangle_Package;
   package BasicColorFactory_Package renames org.allbinary.graphics.color.BasicColorFactory_Package;
   package DisplayInfoSingleton_Package renames org.allbinary.graphics.displayable.DisplayInfoSingleton_Package;
   package FormTypeFactory_Package renames org.allbinary.graphics.form.FormTypeFactory_Package;
   package MultipleScrollSelectionHorizontalForm_Package renames org.allbinary.graphics.form.MultipleScrollSelectionHorizontalForm_Package;
   package ScrollSelectionForm_Package renames org.allbinary.graphics.form.ScrollSelectionForm_Package;
   package CommonButtons_Package renames org.allbinary.input.motion.button.CommonButtons_Package;
   package TouchButtonLocationHelper_Package renames org.allbinary.input.motion.button.TouchButtonLocationHelper_Package;

   type RTSScrollSelectionFormFactory is tagged;
   type RTSScrollSelectionFormFactory_Access is access all RTSScrollSelectionFormFactory'Class;
   type RTSScrollSelectionFormFactory_Access_Array is array (Natural range <>) of RTSScrollSelectionFormFactory_Access;
   type RTSScrollSelectionFormFactory_Access_Array_Access is access all RTSScrollSelectionFormFactory_Access_Array;

   type RTSScrollSelectionFormFactory is new Java_Object with null record;

   procedure Initialize (This : in out RTSScrollSelectionFormFactory'Class);
   function Create return RTSScrollSelectionFormFactory_Access;
   function getInstance (formLabel : Unbounded_String; items : ABCustomItem_Access_Array_Access) return ScrollSelectionForm_Access;
   procedure getInstance (formLabel : Unbounded_String; items : ABCustomItem_Access_Array_Access);

end org.allbinary.game.layer.RTSScrollSelectionFormFactory_Package;


