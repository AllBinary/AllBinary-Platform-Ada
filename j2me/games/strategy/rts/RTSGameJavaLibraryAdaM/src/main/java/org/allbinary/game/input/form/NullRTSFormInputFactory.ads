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
with org.allbinary.game.identification.BasicGroupFactory_Package; use org.allbinary.game.identification.BasicGroupFactory_Package;
with org.allbinary.game.input.form.RTSFormInput_Package; use org.allbinary.game.input.form.RTSFormInput_Package;

package org.allbinary.game.input.form.NullRTSFormInputFactory_Package is

   package BasicGroupFactory_Package renames Standard.org.allbinary.game.identification.BasicGroupFactory_Package;

   type NullRTSFormInputFactory is tagged;
   type NullRTSFormInputFactory_Access is access all NullRTSFormInputFactory'Class;
   type NullRTSFormInputFactory_Access_Array is array (Natural range <>) of NullRTSFormInputFactory_Access;
   type NullRTSFormInputFactory_Access_Array_Access is access all NullRTSFormInputFactory_Access_Array;

   type NullRTSFormInputFactory is new Java_Object with null record;
   SINGLETON : RTSFormInput_Access;

   procedure Initialize (This : in out NullRTSFormInputFactory'Class);
   function Create return NullRTSFormInputFactory_Access;
   function getInstance return RTSFormInput_Access;

end org.allbinary.game.input.form.NullRTSFormInputFactory_Package;


