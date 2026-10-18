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
with java.io.DataInputStream_Package; use java.io.DataInputStream_Package;
with java.io.InputStream_Package; use java.io.InputStream_Package;

package org.allbinary.logic.io.AbDataInputStream_Package is

   package DataInputStream_Package renames Standard.java.io.DataInputStream_Package;
   package InputStream_Package renames Standard.java.io.InputStream_Package;

   type AbDataInputStream is tagged;
   type AbDataInputStream_Access is access all AbDataInputStream'Class;
   type AbDataInputStream_Access_Array is array (Natural range <>) of AbDataInputStream_Access;
   type AbDataInputStream_Access_Array_Access is access all AbDataInputStream_Access_Array;
   type AbDataInputStream_Access_Array_Access_Array is array (Natural range <>) of AbDataInputStream_Access_Array_Access;
   type AbDataInputStream_Access_Array_Access_Array_Access is access all AbDataInputStream_Access_Array_Access_Array;

   type AbDataInputStream is new DataInputStream with null record;

   procedure Initialize (This : in out AbDataInputStream'Class; out_Id_Param : access InputStream_Package.InputStream'Class);
   function Create (out_Id_Param : access InputStream_Package.InputStream'Class) return AbDataInputStream_Access;

end org.allbinary.logic.io.AbDataInputStream_Package;


