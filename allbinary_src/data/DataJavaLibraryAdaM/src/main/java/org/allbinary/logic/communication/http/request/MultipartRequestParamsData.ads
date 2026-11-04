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

limited with org.allbinary.logic.communication.http.request.MultipartRequestParamsData_Package;
package org.allbinary.logic.communication.http.request.MultipartRequestParamsData_Package_References is
   type MultipartRequestParamsData_Access is access all org.allbinary.logic.communication.http.request.MultipartRequestParamsData_Package.MultipartRequestParamsData'Class;
   type MultipartRequestParamsData_Access_Array is array (Natural range <>) of MultipartRequestParamsData_Access;
   type MultipartRequestParamsData_Access_Array_Access is access all MultipartRequestParamsData_Access_Array;
   type MultipartRequestParamsData_Access_Array_Access_Array is array (Natural range <>) of MultipartRequestParamsData_Access_Array_Access;
   type MultipartRequestParamsData_Access_Array_Access_Array_Access is access all MultipartRequestParamsData_Access_Array_Access_Array;
end org.allbinary.logic.communication.http.request.MultipartRequestParamsData_Package_References;

with org.allbinary.logic.communication.http.request.MultipartRequestParamsData_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.logic.communication.http.request.MultipartRequestParamsData_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype MultipartRequestParamsData_Access is org.allbinary.logic.communication.http.request.MultipartRequestParamsData_Package_References.MultipartRequestParamsData_Access;
   function "=" (Left, Right : MultipartRequestParamsData_Access) return Boolean renames org.allbinary.logic.communication.http.request.MultipartRequestParamsData_Package_References."=";
   subtype MultipartRequestParamsData_Access_Array is org.allbinary.logic.communication.http.request.MultipartRequestParamsData_Package_References.MultipartRequestParamsData_Access_Array;
   function "=" (Left, Right : MultipartRequestParamsData_Access_Array) return Boolean renames org.allbinary.logic.communication.http.request.MultipartRequestParamsData_Package_References."=";
   subtype MultipartRequestParamsData_Access_Array_Access is org.allbinary.logic.communication.http.request.MultipartRequestParamsData_Package_References.MultipartRequestParamsData_Access_Array_Access;
   function "=" (Left, Right : MultipartRequestParamsData_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.http.request.MultipartRequestParamsData_Package_References."=";
   subtype MultipartRequestParamsData_Access_Array_Access_Array is org.allbinary.logic.communication.http.request.MultipartRequestParamsData_Package_References.MultipartRequestParamsData_Access_Array_Access_Array;
   function "=" (Left, Right : MultipartRequestParamsData_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.http.request.MultipartRequestParamsData_Package_References."=";
   subtype MultipartRequestParamsData_Access_Array_Access_Array_Access is org.allbinary.logic.communication.http.request.MultipartRequestParamsData_Package_References.MultipartRequestParamsData_Access_Array_Access_Array_Access;
   function "=" (Left, Right : MultipartRequestParamsData_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.http.request.MultipartRequestParamsData_Package_References."=";

   type MultipartRequestParamsData is new Java_Object with null record;
   HASHMAP : Unbounded_String;

   procedure Initialize (This : in out MultipartRequestParamsData'Class);
   function Create return MultipartRequestParamsData_Access;

end org.allbinary.logic.communication.http.request.MultipartRequestParamsData_Package;


