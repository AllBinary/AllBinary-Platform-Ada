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

with AllBinary_Java;
limited with org.allbinary.logic.communication.http.request.AbeHttpRequestInfoData_Package;
package org.allbinary.logic.communication.http.request.AbeHttpRequestInfoData_Package_References is
   type AbeHttpRequestInfoData_Access is access all org.allbinary.logic.communication.http.request.AbeHttpRequestInfoData_Package.AbeHttpRequestInfoData'Class;
   type AbeHttpRequestInfoData_Access_Array is array (Natural range <>) of AbeHttpRequestInfoData_Access;
   type AbeHttpRequestInfoData_Access_Array_Access is access all AbeHttpRequestInfoData_Access_Array;
   type AbeHttpRequestInfoData_Access_Array_Access_Array is array (Natural range <>) of AbeHttpRequestInfoData_Access_Array_Access;
   type AbeHttpRequestInfoData_Access_Array_Access_Array_Access is access all AbeHttpRequestInfoData_Access_Array_Access_Array;
   type AbeHttpRequestInfoData_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AbeHttpRequestInfoData_Access_Array_Access;
   end record;
   function Java_Box (Value : AbeHttpRequestInfoData_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AbeHttpRequestInfoData_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AbeHttpRequestInfoData_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AbeHttpRequestInfoData_Access_Array_Access is (if Value /= null and then Value.all in AbeHttpRequestInfoData_Access_Array_Object'Class then AbeHttpRequestInfoData_Access_Array_Object'Class (Value.all).Value else null);
   type AbeHttpRequestInfoData_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : AbeHttpRequestInfoData_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : AbeHttpRequestInfoData_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new AbeHttpRequestInfoData_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_AbeHttpRequestInfoData_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return AbeHttpRequestInfoData_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in AbeHttpRequestInfoData_Access_Array_Access_Array_Object'Class then AbeHttpRequestInfoData_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.logic.communication.http.request.AbeHttpRequestInfoData_Package_References;

with org.allbinary.logic.communication.http.request.AbeHttpRequestInfoData_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.logic.communication.http.request.AbeHttpRequestInfoData_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype AbeHttpRequestInfoData_Access is org.allbinary.logic.communication.http.request.AbeHttpRequestInfoData_Package_References.AbeHttpRequestInfoData_Access;
   function "=" (Left, Right : AbeHttpRequestInfoData_Access) return Boolean renames org.allbinary.logic.communication.http.request.AbeHttpRequestInfoData_Package_References."=";
   subtype AbeHttpRequestInfoData_Access_Array is org.allbinary.logic.communication.http.request.AbeHttpRequestInfoData_Package_References.AbeHttpRequestInfoData_Access_Array;
   function "=" (Left, Right : AbeHttpRequestInfoData_Access_Array) return Boolean renames org.allbinary.logic.communication.http.request.AbeHttpRequestInfoData_Package_References."=";
   subtype AbeHttpRequestInfoData_Access_Array_Access is org.allbinary.logic.communication.http.request.AbeHttpRequestInfoData_Package_References.AbeHttpRequestInfoData_Access_Array_Access;
   function "=" (Left, Right : AbeHttpRequestInfoData_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.http.request.AbeHttpRequestInfoData_Package_References."=";
   function Java_Box (Value : AbeHttpRequestInfoData_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.communication.http.request.AbeHttpRequestInfoData_Package_References.Java_Box;
   function Java_Unbox_AbeHttpRequestInfoData_Access_Array (Value : access Java_Object'Class) return AbeHttpRequestInfoData_Access_Array_Access renames org.allbinary.logic.communication.http.request.AbeHttpRequestInfoData_Package_References.Java_Unbox_AbeHttpRequestInfoData_Access_Array;
   subtype AbeHttpRequestInfoData_Access_Array_Access_Array is org.allbinary.logic.communication.http.request.AbeHttpRequestInfoData_Package_References.AbeHttpRequestInfoData_Access_Array_Access_Array;
   function "=" (Left, Right : AbeHttpRequestInfoData_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.communication.http.request.AbeHttpRequestInfoData_Package_References."=";
   subtype AbeHttpRequestInfoData_Access_Array_Access_Array_Access is org.allbinary.logic.communication.http.request.AbeHttpRequestInfoData_Package_References.AbeHttpRequestInfoData_Access_Array_Access_Array_Access;
   function "=" (Left, Right : AbeHttpRequestInfoData_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.communication.http.request.AbeHttpRequestInfoData_Package_References."=";
   function Java_Box (Value : AbeHttpRequestInfoData_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.logic.communication.http.request.AbeHttpRequestInfoData_Package_References.Java_Box;
   function Java_Unbox_AbeHttpRequestInfoData_Access_Array_Access_Array (Value : access Java_Object'Class) return AbeHttpRequestInfoData_Access_Array_Access_Array_Access renames org.allbinary.logic.communication.http.request.AbeHttpRequestInfoData_Package_References.Java_Unbox_AbeHttpRequestInfoData_Access_Array_Access_Array;

   type AbeHttpRequestInfoData is new Java_Object with record
      HTTP_USER_AGENT : Unbounded_String;
      REMOTE_ADDRESS : Unbounded_String;
      REMOTE_HOST : Unbounded_String;
      REMOTE_HOST_BY_ADDRESS : Unbounded_String;
      REMOTE_PORT : Unbounded_String;
      REQUEST_FILE_PATH : Unbounded_String;
   end record;
   instance : AbeHttpRequestInfoData_Access;

   procedure Initialize (This : in out AbeHttpRequestInfoData'Class);
   function Create return AbeHttpRequestInfoData_Access;
   function getInstance return AbeHttpRequestInfoData_Access;

end org.allbinary.logic.communication.http.request.AbeHttpRequestInfoData_Package;


