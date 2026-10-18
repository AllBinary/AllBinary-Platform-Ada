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
with org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface_Package;

package org.allbinary.logic.visual.transform.info.TransformInfoHttpStoreInterface_Package is


   type TransformInfoHttpStoreInterface is interface and TransformInfoHttpInterface;
   type TransformInfoHttpStoreInterface_Access is access all TransformInfoHttpStoreInterface'Class;
   type TransformInfoHttpStoreInterface_Access_Array is array (Natural range <>) of TransformInfoHttpStoreInterface_Access;
   type TransformInfoHttpStoreInterface_Access_Array_Access is access all TransformInfoHttpStoreInterface_Access_Array;
   type TransformInfoHttpStoreInterface_Access_Array_Access_Array is array (Natural range <>) of TransformInfoHttpStoreInterface_Access_Array_Access;
   type TransformInfoHttpStoreInterface_Access_Array_Access_Array_Access is access all TransformInfoHttpStoreInterface_Access_Array_Access_Array;
   procedure setStoreName (This : in out TransformInfoHttpStoreInterface; value : Unbounded_String) is abstract;
   function getStoreName (This : in out TransformInfoHttpStoreInterface) return Unbounded_String is abstract;

end org.allbinary.logic.visual.transform.info.TransformInfoHttpStoreInterface_Package;


