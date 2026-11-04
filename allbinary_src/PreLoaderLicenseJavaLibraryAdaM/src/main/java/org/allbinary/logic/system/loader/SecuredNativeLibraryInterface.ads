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

limited with org.allbinary.logic.system.loader.SecuredNativeLibraryInterface_Package;
package org.allbinary.logic.system.loader.SecuredNativeLibraryInterface_Package_References is
   type SecuredNativeLibraryInterface_Access is access all org.allbinary.logic.system.loader.SecuredNativeLibraryInterface_Package.SecuredNativeLibraryInterface'Class;
   type SecuredNativeLibraryInterface_Access_Array is array (Natural range <>) of SecuredNativeLibraryInterface_Access;
   type SecuredNativeLibraryInterface_Access_Array_Access is access all SecuredNativeLibraryInterface_Access_Array;
   type SecuredNativeLibraryInterface_Access_Array_Access_Array is array (Natural range <>) of SecuredNativeLibraryInterface_Access_Array_Access;
   type SecuredNativeLibraryInterface_Access_Array_Access_Array_Access is access all SecuredNativeLibraryInterface_Access_Array_Access_Array;
end org.allbinary.logic.system.loader.SecuredNativeLibraryInterface_Package_References;

with org.allbinary.logic.system.loader.SecuredNativeLibraryInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.logic.system.loader.SecuredNativeLibraryInterface_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   type SecuredNativeLibraryInterface is interface;
   subtype SecuredNativeLibraryInterface_Access is org.allbinary.logic.system.loader.SecuredNativeLibraryInterface_Package_References.SecuredNativeLibraryInterface_Access;
   function "=" (Left, Right : SecuredNativeLibraryInterface_Access) return Boolean renames org.allbinary.logic.system.loader.SecuredNativeLibraryInterface_Package_References."=";
   subtype SecuredNativeLibraryInterface_Access_Array is org.allbinary.logic.system.loader.SecuredNativeLibraryInterface_Package_References.SecuredNativeLibraryInterface_Access_Array;
   function "=" (Left, Right : SecuredNativeLibraryInterface_Access_Array) return Boolean renames org.allbinary.logic.system.loader.SecuredNativeLibraryInterface_Package_References."=";
   subtype SecuredNativeLibraryInterface_Access_Array_Access is org.allbinary.logic.system.loader.SecuredNativeLibraryInterface_Package_References.SecuredNativeLibraryInterface_Access_Array_Access;
   function "=" (Left, Right : SecuredNativeLibraryInterface_Access_Array_Access) return Boolean renames org.allbinary.logic.system.loader.SecuredNativeLibraryInterface_Package_References."=";
   subtype SecuredNativeLibraryInterface_Access_Array_Access_Array is org.allbinary.logic.system.loader.SecuredNativeLibraryInterface_Package_References.SecuredNativeLibraryInterface_Access_Array_Access_Array;
   function "=" (Left, Right : SecuredNativeLibraryInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.logic.system.loader.SecuredNativeLibraryInterface_Package_References."=";
   subtype SecuredNativeLibraryInterface_Access_Array_Access_Array_Access is org.allbinary.logic.system.loader.SecuredNativeLibraryInterface_Package_References.SecuredNativeLibraryInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : SecuredNativeLibraryInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.logic.system.loader.SecuredNativeLibraryInterface_Package_References."=";
   function Java_Object_Access_From_SecuredNativeLibraryInterface (Value : SecuredNativeLibraryInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   procedure load (This : in out SecuredNativeLibraryInterface) is abstract;
   procedure unload (This : in out SecuredNativeLibraryInterface) is abstract;
   function unlock (This : in out SecuredNativeLibraryInterface; key : Unbounded_String) return Boolean is abstract;
   function getLibraryName (This : in out SecuredNativeLibraryInterface) return Unbounded_String is abstract;
   function getName (This : in out SecuredNativeLibraryInterface) return Unbounded_String is abstract;

end org.allbinary.logic.system.loader.SecuredNativeLibraryInterface_Package;


