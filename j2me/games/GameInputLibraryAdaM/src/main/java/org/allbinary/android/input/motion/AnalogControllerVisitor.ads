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
with org.allbinary.layer.AllBinaryLayerManager_Package; use org.allbinary.layer.AllBinaryLayerManager_Package;

package org.allbinary.android.input.motion.AnalogControllerVisitor_Package is

   package AllBinaryLayerManager_Package renames org.allbinary.layer.AllBinaryLayerManager_Package;

   type AnalogControllerVisitor is tagged;
   type AnalogControllerVisitor_Access is access all AnalogControllerVisitor'Class;
   type AnalogControllerVisitor_Access_Array is array (Natural range <>) of AnalogControllerVisitor_Access;
   type AnalogControllerVisitor_Access_Array_Access is access all AnalogControllerVisitor_Access_Array;

   type AnalogControllerVisitor is new Java_Object with null record;

   procedure Initialize (This : in out AnalogControllerVisitor'Class);
   function Create return AnalogControllerVisitor_Access;
   procedure process (This : in out AnalogControllerVisitor; allbinaryLayerManager : AllBinaryLayerManager_Access; analogLocationInputProcessor : AnalogLocationInputProcessor_Access);

end org.allbinary.android.input.motion.AnalogControllerVisitor_Package;


