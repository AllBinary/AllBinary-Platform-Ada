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
--  with javax.servlet.http.HttpServletRequest_Package; use javax.servlet.http.HttpServletRequest_Package;
with org.allbinary.logic.communication.log.LogUtil_Package; use org.allbinary.logic.communication.log.LogUtil_Package;
with org.allbinary.string_Id.CommonStrings_Package; use org.allbinary.string_Id.CommonStrings_Package;

package org.allbinary.logic.communication.http.AcceptableResponseGenerator_Package is

   package LogUtil_Package renames org.allbinary.logic.communication.log.LogUtil_Package;
   package CommonStrings_Package renames org.allbinary.string_Id.CommonStrings_Package;

   type AcceptableResponseGenerator is tagged;
   type AcceptableResponseGenerator_Access is access all AcceptableResponseGenerator'Class;
   type AcceptableResponseGenerator_Access_Array is array (Natural range <>) of AcceptableResponseGenerator_Access;
   type AcceptableResponseGenerator_Access_Array_Access is access all AcceptableResponseGenerator_Access_Array;

   type AcceptableResponseGenerator is new Java_Object with record
      logUtil : LogUtil_Access;
   end record;
   instance : AcceptableResponseGenerator_Access;

   procedure Initialize (This : in out AcceptableResponseGenerator'Class);
   function Create return AcceptableResponseGenerator_Access;
   function getInstance return AcceptableResponseGenerator_Access;
   procedure getInstance;
   function get (This : in out AcceptableResponseGenerator; httpServletRequest : HttpServletRequest_Access) return Unbounded_String;
   procedure get (This : in out AcceptableResponseGenerator; httpServletRequest : HttpServletRequest_Access);

end org.allbinary.logic.communication.http.AcceptableResponseGenerator_Package;


