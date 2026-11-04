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

limited with org.allbinary.logic.io.AbDataOutputStream_Package;
package org.allbinary.logic.io.AbDataOutputStream_Package_References is
   type AbDataOutputStream_Access is access all org.allbinary.logic.io.AbDataOutputStream_Package.AbDataOutputStream'Class;
   type AbDataOutputStream_Access_Array is array (Natural range <>) of AbDataOutputStream_Access;
   type AbDataOutputStream_Access_Array_Access is access all AbDataOutputStream_Access_Array;
   type AbDataOutputStream_Access_Array_Access_Array is array (Natural range <>) of AbDataOutputStream_Access_Array_Access;
   type AbDataOutputStream_Access_Array_Access_Array_Access is access all AbDataOutputStream_Access_Array_Access_Array;
end org.allbinary.logic.io.AbDataOutputStream_Package_References;

with org.allbinary.logic.io.AbDataOutputStream_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.io.DataOutputStream_Package; use java.io.DataOutputStream_Package;
with java.io.OutputStream_Package; use java.io.OutputStream_Package;

package org.allbinary.logic.io.AbDataOutputStream_Package is

   package DataOutputStream_Package renames Standard.java.io.DataOutputStream_Package;
   package OutputStream_Package renames Standard.java.io.OutputStream_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype AbDataOutputStream_Access is org.allbinary.logic.io.AbDataOutputStream_Package_References.AbDataOutputStream_Access;
   function "=" (Left, Right : AbDataOutputStream_Access) return Boolean renames org.allbinary.logic.io.AbDataOutputStream_Package_References."=";
   subtype AbDataOutputStream_Access_Array is org.allbinary.logic.io.AbDataOutputStream_Package_References.AbDataOutputStream_Access_Array;
   function "=" (Left, Right : AbDataOutputStream_Access_Array) return Boolean renames org.allbinary.logic.io.AbDataOutputStream_Package_References."=";
   subtype AbDataOutputStream_Access_Array_Access is org.allbinary.logic.io.AbDataOutputStream_Package_References.AbDataOutputStream_Access_Array_Access;
   function "=" (Left, Right : AbDataOutputStream_Access_Array_Access) return Boolean renames org.allbinary.logic.io.AbDataOutputStream_Package_References."=";
   subtype AbDataOutputStream_Access_Array_Access_Array is org.allbinary.logic.io.AbDataOutputStream_Package_References.AbDataOutputStream_Access_Array_Access_Array;
   function "=" (Left, Right : AbDataOutputStream_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.io.AbDataOutputStream_Package_References."=";
   subtype AbDataOutputStream_Access_Array_Access_Array_Access is org.allbinary.logic.io.AbDataOutputStream_Package_References.AbDataOutputStream_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AbDataOutputStream_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.io.AbDataOutputStream_Package_References."=";

   type AbDataOutputStream is new DataOutputStream with null record;

   procedure Initialize (This : in out AbDataOutputStream'Class; out_Id_Param : access OutputStream_Package.OutputStream'Class);
   function Create (out_Id_Param : access OutputStream_Package.OutputStream'Class) return AbDataOutputStream_Access;

end org.allbinary.logic.io.AbDataOutputStream_Package;


