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

limited with org.allbinary.servlet.BlisketServletUtil_Package;
package org.allbinary.servlet.BlisketServletUtil_Package_References is
   type BlisketServletUtil_Access is access all org.allbinary.servlet.BlisketServletUtil_Package.BlisketServletUtil'Class;
   type BlisketServletUtil_Access_Array is array (Natural range <>) of BlisketServletUtil_Access;
   type BlisketServletUtil_Access_Array_Access is access all BlisketServletUtil_Access_Array;
   type BlisketServletUtil_Access_Array_Access_Array is array (Natural range <>) of BlisketServletUtil_Access_Array_Access;
   type BlisketServletUtil_Access_Array_Access_Array_Access is access all BlisketServletUtil_Access_Array_Access_Array;
end org.allbinary.servlet.BlisketServletUtil_Package_References;

with org.allbinary.servlet.BlisketServletUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with javax.servlet.http.HttpServletRequest_Package; use javax.servlet.http.HttpServletRequest_Package;

package org.allbinary.servlet.BlisketServletUtil_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype BlisketServletUtil_Access is org.allbinary.servlet.BlisketServletUtil_Package_References.BlisketServletUtil_Access;
   function "=" (Left, Right : BlisketServletUtil_Access) return Boolean renames org.allbinary.servlet.BlisketServletUtil_Package_References."=";
   subtype BlisketServletUtil_Access_Array is org.allbinary.servlet.BlisketServletUtil_Package_References.BlisketServletUtil_Access_Array;
   function "=" (Left, Right : BlisketServletUtil_Access_Array) return Boolean renames org.allbinary.servlet.BlisketServletUtil_Package_References."=";
   subtype BlisketServletUtil_Access_Array_Access is org.allbinary.servlet.BlisketServletUtil_Package_References.BlisketServletUtil_Access_Array_Access;
   function "=" (Left, Right : BlisketServletUtil_Access_Array_Access) return Boolean renames org.allbinary.servlet.BlisketServletUtil_Package_References."=";
   subtype BlisketServletUtil_Access_Array_Access_Array is org.allbinary.servlet.BlisketServletUtil_Package_References.BlisketServletUtil_Access_Array_Access_Array;
   function "=" (Left, Right : BlisketServletUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.servlet.BlisketServletUtil_Package_References."=";
   subtype BlisketServletUtil_Access_Array_Access_Array_Access is org.allbinary.servlet.BlisketServletUtil_Package_References.BlisketServletUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BlisketServletUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.servlet.BlisketServletUtil_Package_References."=";

   type BlisketServletUtil is new Java_Object with null record;
   instance : BlisketServletUtil_Access;

   procedure Initialize (This : in out BlisketServletUtil'Class);
   function Create return BlisketServletUtil_Access;
   function getInstance return BlisketServletUtil_Access;
   procedure init (This : in out BlisketServletUtil; request_Param : access HttpServletRequest_Package.HttpServletRequest'Class);

end org.allbinary.servlet.BlisketServletUtil_Package;


