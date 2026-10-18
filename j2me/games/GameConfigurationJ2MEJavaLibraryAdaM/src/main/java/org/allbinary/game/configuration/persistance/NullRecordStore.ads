-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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
with javax.microedition.rms.RecordStore_Package; use javax.microedition.rms.RecordStore_Package;

package org.allbinary.game.configuration.persistance.NullRecordStore_Package is

   package RecordStore_Package renames Standard.javax.microedition.rms.RecordStore_Package;

   type NullRecordStore is tagged;
   type NullRecordStore_Access is access all NullRecordStore'Class;
   type NullRecordStore_Access_Array is array (Natural range <>) of NullRecordStore_Access;
   type NullRecordStore_Access_Array_Access is access all NullRecordStore_Access_Array;
   type NullRecordStore_Access_Array_Access_Array is array (Natural range <>) of NullRecordStore_Access_Array_Access;
   type NullRecordStore_Access_Array_Access_Array_Access is access all NullRecordStore_Access_Array_Access_Array;

   type NullRecordStore is new RecordStore with null record;
   NULL_RECORD_STORE : NullRecordStore_Access;

   procedure Initialize (This : in out NullRecordStore'Class);
   function Create return NullRecordStore_Access;

end org.allbinary.game.configuration.persistance.NullRecordStore_Package;


