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

limited with org.allbinary.logic.communication.http.AcceptableResponseFactory_Package;
package org.allbinary.logic.communication.http.AcceptableResponseFactory_Package_References is
   type AcceptableResponseFactory_Access is access all org.allbinary.logic.communication.http.AcceptableResponseFactory_Package.AcceptableResponseFactory'Class;
   type AcceptableResponseFactory_Access_Array is array (Natural range <>) of AcceptableResponseFactory_Access;
   type AcceptableResponseFactory_Access_Array_Access is access all AcceptableResponseFactory_Access_Array;
   type AcceptableResponseFactory_Access_Array_Access_Array is array (Natural range <>) of AcceptableResponseFactory_Access_Array_Access;
   type AcceptableResponseFactory_Access_Array_Access_Array_Access is access all AcceptableResponseFactory_Access_Array_Access_Array;
end org.allbinary.logic.communication.http.AcceptableResponseFactory_Package_References;

with org.allbinary.logic.communication.http.AcceptableResponseFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.logic.communication.http.AcceptableResponse_Package;
with org.allbinary.logic.communication.http.AcceptableResponse_Package_References;

package org.allbinary.logic.communication.http.AcceptableResponseFactory_Package is

   package Reference_Types is
   subtype AcceptableResponse_Access is org.allbinary.logic.communication.http.AcceptableResponse_Package_References.AcceptableResponse_Access;
   use type AcceptableResponse_Access;
   subtype AcceptableResponse_Access_Array is org.allbinary.logic.communication.http.AcceptableResponse_Package_References.AcceptableResponse_Access_Array;
   use type AcceptableResponse_Access_Array;
   subtype AcceptableResponse_Access_Array_Access is org.allbinary.logic.communication.http.AcceptableResponse_Package_References.AcceptableResponse_Access_Array_Access;
   use type AcceptableResponse_Access_Array_Access;
   subtype AcceptableResponse_Access_Array_Access_Array is org.allbinary.logic.communication.http.AcceptableResponse_Package_References.AcceptableResponse_Access_Array_Access_Array;
   use type AcceptableResponse_Access_Array_Access_Array;
   subtype AcceptableResponse_Access_Array_Access_Array_Access is org.allbinary.logic.communication.http.AcceptableResponse_Package_References.AcceptableResponse_Access_Array_Access_Array_Access;
   use type AcceptableResponse_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype AcceptableResponseFactory_Access is org.allbinary.logic.communication.http.AcceptableResponseFactory_Package_References.AcceptableResponseFactory_Access;
   function "=" (Left, Right : AcceptableResponseFactory_Access) return Boolean renames org.allbinary.logic.communication.http.AcceptableResponseFactory_Package_References."=";
   subtype AcceptableResponseFactory_Access_Array is org.allbinary.logic.communication.http.AcceptableResponseFactory_Package_References.AcceptableResponseFactory_Access_Array;
   function "=" (Left, Right : AcceptableResponseFactory_Access_Array) return Boolean renames org.allbinary.logic.communication.http.AcceptableResponseFactory_Package_References."=";
   subtype AcceptableResponseFactory_Access_Array_Access is org.allbinary.logic.communication.http.AcceptableResponseFactory_Package_References.AcceptableResponseFactory_Access_Array_Access;
   function "=" (Left, Right : AcceptableResponseFactory_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.http.AcceptableResponseFactory_Package_References."=";
   subtype AcceptableResponseFactory_Access_Array_Access_Array is org.allbinary.logic.communication.http.AcceptableResponseFactory_Package_References.AcceptableResponseFactory_Access_Array_Access_Array;
   function "=" (Left, Right : AcceptableResponseFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.http.AcceptableResponseFactory_Package_References."=";
   subtype AcceptableResponseFactory_Access_Array_Access_Array_Access is org.allbinary.logic.communication.http.AcceptableResponseFactory_Package_References.AcceptableResponseFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AcceptableResponseFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.http.AcceptableResponseFactory_Package_References."=";

   type AcceptableResponseFactory is new Java_Object with record
      HTML : AcceptableResponse_Access;
      WML : AcceptableResponse_Access;
      VXML : AcceptableResponse_Access;
   end record;
   instance : AcceptableResponseFactory_Access;

   procedure Initialize (This : in out AcceptableResponseFactory'Class);
   function Create return AcceptableResponseFactory_Access;
   function getInstance return AcceptableResponseFactory_Access;

end org.allbinary.logic.communication.http.AcceptableResponseFactory_Package;


