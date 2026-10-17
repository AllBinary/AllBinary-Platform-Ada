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
--  with java.io.FileInputStream_Package; use java.io.FileInputStream_Package;
--  with java.io.FileNotFoundException_Package; use java.io.FileNotFoundException_Package;
--  with java.io.IOException_Package; use java.io.IOException_Package;
--  with java.io.InputStream_Package; use java.io.InputStream_Package;
--  with java.nio.channels.FileChannel_Package; use java.nio.channels.FileChannel_Package;

package org.allbinary.logic.io.AbFileInputStream_Package is


   type AbFileInputStream is tagged;
   type AbFileInputStream_Access is access all AbFileInputStream'Class;
   type AbFileInputStream_Access_Array is array (Natural range <>) of AbFileInputStream_Access;
   type AbFileInputStream_Access_Array_Access is access all AbFileInputStream_Access_Array;

   type AbFileInputStream is new InputStream with record
      fileInputStream : FileInputStream_Access;
   end record;

   procedure Initialize (This : in out AbFileInputStream'Class; fileInputStream_Param : access FileInputStream'Class);
   function Create (fileInputStream_Param : access FileInputStream'Class) return AbFileInputStream_Access;
   procedure mark (This : in out AbFileInputStream; readlimit : Integer);
   function markSupported (This : in out AbFileInputStream) return Boolean;
   procedure reset (This : in out AbFileInputStream);
   function available (This : in out AbFileInputStream) return Integer;
   procedure close (This : in out AbFileInputStream);
   function getChannel (This : in out AbFileInputStream) return FileChannel_Access;
   function read (This : in out AbFileInputStream) return Integer;
   function read (This : in out AbFileInputStream; b : Short_Short_Integer_Array_Access) return Integer;
   procedure read (This : in out AbFileInputStream; b : Short_Short_Integer_Array_Access);
   function read (This : in out AbFileInputStream; buffer : Short_Short_Integer_Array_Access; offset : Integer; count : Integer) return Integer;
   procedure read (This : in out AbFileInputStream; buffer : Short_Short_Integer_Array_Access; offset : Integer; count : Integer);
   function skip (This : in out AbFileInputStream; n : Long_Long_Integer) return Long_Long_Integer;
   procedure skip (This : in out AbFileInputStream; n : Long_Long_Integer);

end org.allbinary.logic.io.AbFileInputStream_Package;


