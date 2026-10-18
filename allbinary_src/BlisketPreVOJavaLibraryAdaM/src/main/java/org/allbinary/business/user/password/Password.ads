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
with java.util.HashMap_Package; use java.util.HashMap_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;

package org.allbinary.business.user.password.Password_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package LogUtil_Package renames Standard.org.allbinary.logic.communication.log.LogUtil_Package;

   type Password is tagged;
   type Password_Access is access all Password'Class;
   type Password_Access_Array is array (Natural range <>) of Password_Access;
   type Password_Access_Array_Access is access all Password_Access_Array;
   type Password_Access_Array_Access_Array is array (Natural range <>) of Password_Access_Array_Access;
   type Password_Access_Array_Access_Array_Access is access all Password_Access_Array_Access_Array;

   type Password is new Java_Object with record
      logUtil : LogUtil_Access;
      password_Var : Unbounded_String;
   end record;

   procedure Initialize (This : in out Password'Class; password_Var : Unbounded_String);
   function Create (password_Var : Unbounded_String) return Password_Access;
   procedure set (This : in out Password; value : Unbounded_String);
   function get (This : in out Password) return Unbounded_String;
   function isValid (This : in out Password) return Boolean;
   function getValidationInfo (This : in out Password) return Unbounded_String;
   function toVector (This : in out Password; secret : Unbounded_String) return BasicArrayList_Access;
   procedure toVector (This : in out Password; secret : Unbounded_String);
   function toHashMap (This : in out Password; secret : Unbounded_String) return HashMap_Access;
   procedure toHashMap (This : in out Password; secret : Unbounded_String);

end org.allbinary.business.user.password.Password_Package;


