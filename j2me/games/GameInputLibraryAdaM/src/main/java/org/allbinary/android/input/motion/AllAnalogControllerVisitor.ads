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
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.android.input.motion.AnalogControllerVisitor_Package; use org.allbinary.android.input.motion.AnalogControllerVisitor_Package;
with org.allbinary.android.input.motion.AnalogLocationInputProcessor_Package; use org.allbinary.android.input.motion.AnalogLocationInputProcessor_Package;

package org.allbinary.android.input.motion.AllAnalogControllerVisitor_Package is

   package AnalogLocationInput_Package renames Standard.org.allbinary.game.input.analog.AnalogLocationInput_Package;
   package AnalogLocationInputFactory_Package renames Standard.org.allbinary.game.input.analog.AnalogLocationInputFactory_Package;
   package AllBinaryLayerManager_Package renames Standard.org.allbinary.layer.AllBinaryLayerManager_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;

   type AllAnalogControllerVisitor is tagged;
   type AllAnalogControllerVisitor_Access is access all AllAnalogControllerVisitor'Class;
   type AllAnalogControllerVisitor_Access_Array is array (Natural range <>) of AllAnalogControllerVisitor_Access;
   type AllAnalogControllerVisitor_Access_Array_Access is access all AllAnalogControllerVisitor_Access_Array;

   type AllAnalogControllerVisitor is new AnalogControllerVisitor with null record;

   procedure Initialize (This : in out AllAnalogControllerVisitor'Class);
   function Create return AllAnalogControllerVisitor_Access;
   procedure process (This : in out AllAnalogControllerVisitor; allbinaryLayerManager_Param : access AllBinaryLayerManager_Package.AllBinaryLayerManager'Class; analogLocationInputProcessor_Param : access AnalogLocationInputProcessor_Package.AnalogLocationInputProcessor'Class);

end org.allbinary.android.input.motion.AllAnalogControllerVisitor_Package;


