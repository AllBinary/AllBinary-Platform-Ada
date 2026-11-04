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

limited with org.allbinary.logic.communication.http.request.HttpRequestUtil_Package;
package org.allbinary.logic.communication.http.request.HttpRequestUtil_Package_References is
   type HttpRequestUtil_Access is access all org.allbinary.logic.communication.http.request.HttpRequestUtil_Package.HttpRequestUtil'Class;
   type HttpRequestUtil_Access_Array is array (Natural range <>) of HttpRequestUtil_Access;
   type HttpRequestUtil_Access_Array_Access is access all HttpRequestUtil_Access_Array;
   type HttpRequestUtil_Access_Array_Access_Array is array (Natural range <>) of HttpRequestUtil_Access_Array_Access;
   type HttpRequestUtil_Access_Array_Access_Array_Access is access all HttpRequestUtil_Access_Array_Access_Array;
end org.allbinary.logic.communication.http.request.HttpRequestUtil_Package_References;

with org.allbinary.logic.communication.http.request.HttpRequestUtil_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.logic.communication.http.request.HttpRequestUtil_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype HttpRequestUtil_Access is org.allbinary.logic.communication.http.request.HttpRequestUtil_Package_References.HttpRequestUtil_Access;
   function "=" (Left, Right : HttpRequestUtil_Access) return Boolean renames org.allbinary.logic.communication.http.request.HttpRequestUtil_Package_References."=";
   subtype HttpRequestUtil_Access_Array is org.allbinary.logic.communication.http.request.HttpRequestUtil_Package_References.HttpRequestUtil_Access_Array;
   function "=" (Left, Right : HttpRequestUtil_Access_Array) return Boolean renames org.allbinary.logic.communication.http.request.HttpRequestUtil_Package_References."=";
   subtype HttpRequestUtil_Access_Array_Access is org.allbinary.logic.communication.http.request.HttpRequestUtil_Package_References.HttpRequestUtil_Access_Array_Access;
   function "=" (Left, Right : HttpRequestUtil_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.http.request.HttpRequestUtil_Package_References."=";
   subtype HttpRequestUtil_Access_Array_Access_Array is org.allbinary.logic.communication.http.request.HttpRequestUtil_Package_References.HttpRequestUtil_Access_Array_Access_Array;
   function "=" (Left, Right : HttpRequestUtil_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.http.request.HttpRequestUtil_Package_References."=";
   subtype HttpRequestUtil_Access_Array_Access_Array_Access is org.allbinary.logic.communication.http.request.HttpRequestUtil_Package_References.HttpRequestUtil_Access_Array_Access_Array_Access;
   function "=" (Left, Right : HttpRequestUtil_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.http.request.HttpRequestUtil_Package_References."=";

   type HttpRequestUtil is new Java_Object with null record;
   instance : HttpRequestUtil_Access;

   procedure Initialize (This : in out HttpRequestUtil'Class);
   function Create return HttpRequestUtil_Access;
   function getInstance return HttpRequestUtil_Access;
   function getLastSeparatorIndex (This : in out HttpRequestUtil; requestPath : Unbounded_String) return Integer;
   procedure getLastSeparatorIndex (This : in out HttpRequestUtil; requestPath : Unbounded_String);
   function generateFileName (This : in out HttpRequestUtil; requestPath : Unbounded_String) return Unbounded_String;
   procedure generateFileName (This : in out HttpRequestUtil; requestPath : Unbounded_String);

end org.allbinary.logic.communication.http.request.HttpRequestUtil_Package;


