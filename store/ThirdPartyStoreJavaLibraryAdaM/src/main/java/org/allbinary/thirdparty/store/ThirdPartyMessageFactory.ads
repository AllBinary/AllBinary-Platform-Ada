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

limited with org.allbinary.thirdparty.store.ThirdPartyMessageFactory_Package;
package org.allbinary.thirdparty.store.ThirdPartyMessageFactory_Package_References is
   type ThirdPartyMessageFactory_Access is access all org.allbinary.thirdparty.store.ThirdPartyMessageFactory_Package.ThirdPartyMessageFactory'Class;
   type ThirdPartyMessageFactory_Access_Array is array (Natural range <>) of ThirdPartyMessageFactory_Access;
   type ThirdPartyMessageFactory_Access_Array_Access is access all ThirdPartyMessageFactory_Access_Array;
   type ThirdPartyMessageFactory_Access_Array_Access_Array is array (Natural range <>) of ThirdPartyMessageFactory_Access_Array_Access;
   type ThirdPartyMessageFactory_Access_Array_Access_Array_Access is access all ThirdPartyMessageFactory_Access_Array_Access_Array;
end org.allbinary.thirdparty.store.ThirdPartyMessageFactory_Package_References;

with org.allbinary.thirdparty.store.ThirdPartyMessageFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.thirdparty.store.ThirdPartyMessageFactory_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype ThirdPartyMessageFactory_Access is org.allbinary.thirdparty.store.ThirdPartyMessageFactory_Package_References.ThirdPartyMessageFactory_Access;
   function "=" (Left, Right : ThirdPartyMessageFactory_Access) return Boolean renames org.allbinary.thirdparty.store.ThirdPartyMessageFactory_Package_References."=";
   subtype ThirdPartyMessageFactory_Access_Array is org.allbinary.thirdparty.store.ThirdPartyMessageFactory_Package_References.ThirdPartyMessageFactory_Access_Array;
   function "=" (Left, Right : ThirdPartyMessageFactory_Access_Array) return Boolean renames org.allbinary.thirdparty.store.ThirdPartyMessageFactory_Package_References."=";
   subtype ThirdPartyMessageFactory_Access_Array_Access is org.allbinary.thirdparty.store.ThirdPartyMessageFactory_Package_References.ThirdPartyMessageFactory_Access_Array_Access;
   function "=" (Left, Right : ThirdPartyMessageFactory_Access_Array_Access) return Boolean renames org.allbinary.thirdparty.store.ThirdPartyMessageFactory_Package_References."=";
   subtype ThirdPartyMessageFactory_Access_Array_Access_Array is org.allbinary.thirdparty.store.ThirdPartyMessageFactory_Package_References.ThirdPartyMessageFactory_Access_Array_Access_Array;
   function "=" (Left, Right : ThirdPartyMessageFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.thirdparty.store.ThirdPartyMessageFactory_Package_References."=";
   subtype ThirdPartyMessageFactory_Access_Array_Access_Array_Access is org.allbinary.thirdparty.store.ThirdPartyMessageFactory_Package_References.ThirdPartyMessageFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ThirdPartyMessageFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.thirdparty.store.ThirdPartyMessageFactory_Package_References."=";

   type ThirdPartyMessageFactory is new Java_Object with record
      AUTHORIZED : Unbounded_String;
      NOT_AUTHORIZED : Unbounded_String;
      LINKAGE_ERROR : Unbounded_String;
   end record;
   instance : ThirdPartyMessageFactory_Access;

   procedure Initialize (This : in out ThirdPartyMessageFactory'Class);
   function Create return ThirdPartyMessageFactory_Access;
   function getInstance return ThirdPartyMessageFactory_Access;

end org.allbinary.thirdparty.store.ThirdPartyMessageFactory_Package;


