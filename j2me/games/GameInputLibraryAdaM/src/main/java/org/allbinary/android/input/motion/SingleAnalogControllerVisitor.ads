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
with org.allbinary.game.input.analog.AnalogLocationInputFactory_Package; use org.allbinary.game.input.analog.AnalogLocationInputFactory_Package;
with org.allbinary.layer.AllBinaryLayerManager_Package; use org.allbinary.layer.AllBinaryLayerManager_Package;
with org.allbinary.android.input.motion.AnalogControllerVisitor_Package; use org.allbinary.android.input.motion.AnalogControllerVisitor_Package;
with org.allbinary.android.input.motion.AnalogLocationInputProcessor_Package; use org.allbinary.android.input.motion.AnalogLocationInputProcessor_Package;

package org.allbinary.android.input.motion.SingleAnalogControllerVisitor_Package is

   package AnalogLocationInput_Package renames Standard.org.allbinary.game.input.analog.AnalogLocationInput_Package;
   package AnalogLocationInputFactory_Package renames Standard.org.allbinary.game.input.analog.AnalogLocationInputFactory_Package;
   package AllBinaryLayerManager_Package renames Standard.org.allbinary.layer.AllBinaryLayerManager_Package;

   type SingleAnalogControllerVisitor is tagged;
   type SingleAnalogControllerVisitor_Access is access all SingleAnalogControllerVisitor'Class;
   type SingleAnalogControllerVisitor_Access_Array is array (Natural range <>) of SingleAnalogControllerVisitor_Access;
   type SingleAnalogControllerVisitor_Access_Array_Access is access all SingleAnalogControllerVisitor_Access_Array;

   type SingleAnalogControllerVisitor is new AnalogControllerVisitor with record
      playerInputId : Integer;
   end record;

   procedure Initialize (This : in out SingleAnalogControllerVisitor'Class; playerInputId : Integer);
   function Create (playerInputId : Integer) return SingleAnalogControllerVisitor_Access;
   procedure process (This : in out SingleAnalogControllerVisitor; allbinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; analogLocationInputProcessor_Param : access AnalogLocationInputProcessor_Package.AnalogLocationInputProcessor'Class);

end org.allbinary.android.input.motion.SingleAnalogControllerVisitor_Package;


