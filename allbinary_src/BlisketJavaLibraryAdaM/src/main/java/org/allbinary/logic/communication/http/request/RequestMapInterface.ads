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

limited with org.allbinary.logic.communication.http.request.RequestMapInterface_Package;
package org.allbinary.logic.communication.http.request.RequestMapInterface_Package_References is
   type RequestMapInterface_Access is access all org.allbinary.logic.communication.http.request.RequestMapInterface_Package.RequestMapInterface'Class;
   type RequestMapInterface_Access_Array is array (Natural range <>) of RequestMapInterface_Access;
   type RequestMapInterface_Access_Array_Access is access all RequestMapInterface_Access_Array;
   type RequestMapInterface_Access_Array_Access_Array is array (Natural range <>) of RequestMapInterface_Access_Array_Access;
   type RequestMapInterface_Access_Array_Access_Array_Access is access all RequestMapInterface_Access_Array_Access_Array;
end org.allbinary.logic.communication.http.request.RequestMapInterface_Package_References;

with org.allbinary.logic.communication.http.request.RequestMapInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.util.HashMap_Package; use java.util.HashMap_Package;

package org.allbinary.logic.communication.http.request.RequestMapInterface_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   type RequestMapInterface is interface;
   subtype RequestMapInterface_Access is org.allbinary.logic.communication.http.request.RequestMapInterface_Package_References.RequestMapInterface_Access;
   function "=" (Left, Right : RequestMapInterface_Access) return Boolean renames org.allbinary.logic.communication.http.request.RequestMapInterface_Package_References."=";
   subtype RequestMapInterface_Access_Array is org.allbinary.logic.communication.http.request.RequestMapInterface_Package_References.RequestMapInterface_Access_Array;
   function "=" (Left, Right : RequestMapInterface_Access_Array) return Boolean renames org.allbinary.logic.communication.http.request.RequestMapInterface_Package_References."=";
   subtype RequestMapInterface_Access_Array_Access is org.allbinary.logic.communication.http.request.RequestMapInterface_Package_References.RequestMapInterface_Access_Array_Access;
   function "=" (Left, Right : RequestMapInterface_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.http.request.RequestMapInterface_Package_References."=";
   subtype RequestMapInterface_Access_Array_Access_Array is org.allbinary.logic.communication.http.request.RequestMapInterface_Package_References.RequestMapInterface_Access_Array_Access_Array;
   function "=" (Left, Right : RequestMapInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.http.request.RequestMapInterface_Package_References."=";
   subtype RequestMapInterface_Access_Array_Access_Array_Access is org.allbinary.logic.communication.http.request.RequestMapInterface_Package_References.RequestMapInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RequestMapInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.http.request.RequestMapInterface_Package_References."=";
   function Java_Object_Access_From_RequestMapInterface (Value : RequestMapInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getRequestHashMap (This : in out RequestMapInterface) return HashMap_Access is abstract;

end org.allbinary.logic.communication.http.request.RequestMapInterface_Package;


