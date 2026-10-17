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
with org.allbinary.game.input.analog.AnalogLocationInput_Package; use org.allbinary.game.input.analog.AnalogLocationInput_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package; use org.allbinary.layer.AllBinaryLayerManager_Package;

package org.allbinary.android.input.motion.AnalogLocationInputProcessor_Package is

   package AnalogLocationInput_Package renames Standard.org.allbinary.game.input.analog.AnalogLocationInput_Package;
   package AllBinaryLayerManager_Package renames Standard.org.allbinary.layer.AllBinaryLayerManager_Package;

   type AnalogLocationInputProcessor is tagged;
   type AnalogLocationInputProcessor_Access is access all AnalogLocationInputProcessor'Class;
   type AnalogLocationInputProcessor_Access_Array is array (Natural range <>) of AnalogLocationInputProcessor_Access;
   type AnalogLocationInputProcessor_Access_Array_Access is access all AnalogLocationInputProcessor_Access_Array;

   type AnalogLocationInputProcessor is new Java_Object with null record;

   procedure Initialize (This : in out AnalogLocationInputProcessor'Class);
   function Create return AnalogLocationInputProcessor_Access;
   procedure process (This : in out AnalogLocationInputProcessor; allbinaryLayerManager_Param : access AllBinaryLayerManager'Class; analogLocationInput_Param : access AnalogLocationInput'Class);

end org.allbinary.android.input.motion.AnalogLocationInputProcessor_Package;


