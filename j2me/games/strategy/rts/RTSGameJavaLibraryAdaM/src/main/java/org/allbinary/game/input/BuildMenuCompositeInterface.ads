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
with org.allbinary.graphics.form.ScrollSelectionForm_Package; use org.allbinary.graphics.form.ScrollSelectionForm_Package;

package org.allbinary.game.input.BuildMenuCompositeInterface_Package is

   package ScrollSelectionForm_Package renames Standard.org.allbinary.graphics.form.ScrollSelectionForm_Package;

   type BuildMenuCompositeInterface is interface;
   type BuildMenuCompositeInterface_Access is access all BuildMenuCompositeInterface'Class;
   type BuildMenuCompositeInterface_Access_Array is array (Natural range <>) of BuildMenuCompositeInterface_Access;
   type BuildMenuCompositeInterface_Access_Array_Access is access all BuildMenuCompositeInterface_Access_Array;
   function getCurrentScrollSelectionForm (This : in out BuildMenuCompositeInterface) return ScrollSelectionForm_Access is abstract;
   procedure setCurrentScrollSelectionForm (This : in out BuildMenuCompositeInterface; currentScrollSelectionForm : ScrollSelectionForm_Access) is abstract;
   function getBuildingScrollSelectionForm (This : in out BuildMenuCompositeInterface) return ScrollSelectionForm_Access is abstract;

end org.allbinary.game.input.BuildMenuCompositeInterface_Package;


