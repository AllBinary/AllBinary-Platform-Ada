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
with org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package; use org.allbinary.logic.visual.transform.info.TransformInfoInterface_Package;

package org.allbinary.logic.visual.transform.info.CompositeTransformInfoInterface_Package is


   type CompositeTransformInfoInterface is interface;
   type CompositeTransformInfoInterface_Access is access all CompositeTransformInfoInterface'Class;
   type CompositeTransformInfoInterface_Access_Array is array (Natural range <>) of CompositeTransformInfoInterface_Access;
   type CompositeTransformInfoInterface_Access_Array_Access is access all CompositeTransformInfoInterface_Access_Array;
   type CompositeTransformInfoInterface_Access_Array_Access_Array is array (Natural range <>) of CompositeTransformInfoInterface_Access_Array_Access;
   type CompositeTransformInfoInterface_Access_Array_Access_Array_Access is access all CompositeTransformInfoInterface_Access_Array_Access_Array;
   function getTransformInfoInterface (This : in out CompositeTransformInfoInterface) return TransformInfoInterface_Access is abstract;

end org.allbinary.logic.visual.transform.info.CompositeTransformInfoInterface_Package;


