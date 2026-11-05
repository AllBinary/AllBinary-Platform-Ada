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

limited with org.allbinary.business.user.UserFactoryInterface_Package;
package org.allbinary.business.user.UserFactoryInterface_Package_References is
   type UserFactoryInterface_Access is access all org.allbinary.business.user.UserFactoryInterface_Package.UserFactoryInterface'Class;
   type UserFactoryInterface_Access_Array is array (Natural range <>) of UserFactoryInterface_Access;
   type UserFactoryInterface_Access_Array_Access is access all UserFactoryInterface_Access_Array;
   type UserFactoryInterface_Access_Array_Access_Array is array (Natural range <>) of UserFactoryInterface_Access_Array_Access;
   type UserFactoryInterface_Access_Array_Access_Array_Access is access all UserFactoryInterface_Access_Array_Access_Array;
end org.allbinary.business.user.UserFactoryInterface_Package_References;

with org.allbinary.business.user.UserFactoryInterface_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.io.Serializable_Package; use java.io.Serializable_Package;
with java.util.HashMap_Package; use java.util.HashMap_Package;
limited with org.allbinary.business.user.UserInterface_Package;
with org.allbinary.business.user.UserInterface_Package_References;

package org.allbinary.business.user.UserFactoryInterface_Package is

   package HashMap_Package renames Standard.java.util.HashMap_Package;
   package Reference_Types is
   subtype UserInterface_Access is org.allbinary.business.user.UserInterface_Package_References.UserInterface_Access;
   use type UserInterface_Access;
   subtype UserInterface_Access_Array is org.allbinary.business.user.UserInterface_Package_References.UserInterface_Access_Array;
   use type UserInterface_Access_Array;
   subtype UserInterface_Access_Array_Access is org.allbinary.business.user.UserInterface_Package_References.UserInterface_Access_Array_Access;
   use type UserInterface_Access_Array_Access;
   subtype UserInterface_Access_Array_Access_Array is org.allbinary.business.user.UserInterface_Package_References.UserInterface_Access_Array_Access_Array;
   use type UserInterface_Access_Array_Access_Array;
   subtype UserInterface_Access_Array_Access_Array_Access is org.allbinary.business.user.UserInterface_Package_References.UserInterface_Access_Array_Access_Array_Access;
   use type UserInterface_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   type UserFactoryInterface is interface;
   subtype UserFactoryInterface_Access is org.allbinary.business.user.UserFactoryInterface_Package_References.UserFactoryInterface_Access;
   function "=" (Left, Right : UserFactoryInterface_Access) return Boolean renames org.allbinary.business.user.UserFactoryInterface_Package_References."=";
   subtype UserFactoryInterface_Access_Array is org.allbinary.business.user.UserFactoryInterface_Package_References.UserFactoryInterface_Access_Array;
   function "=" (Left, Right : UserFactoryInterface_Access_Array) return Boolean renames org.allbinary.business.user.UserFactoryInterface_Package_References."=";
   subtype UserFactoryInterface_Access_Array_Access is org.allbinary.business.user.UserFactoryInterface_Package_References.UserFactoryInterface_Access_Array_Access;
   function "=" (Left, Right : UserFactoryInterface_Access_Array_Access) return Boolean renames org.allbinary.business.user.UserFactoryInterface_Package_References."=";
   subtype UserFactoryInterface_Access_Array_Access_Array is org.allbinary.business.user.UserFactoryInterface_Package_References.UserFactoryInterface_Access_Array_Access_Array;
   function "=" (Left, Right : UserFactoryInterface_Access_Array_Access_Array) return Boolean renames org.allbinary.business.user.UserFactoryInterface_Package_References."=";
   subtype UserFactoryInterface_Access_Array_Access_Array_Access is org.allbinary.business.user.UserFactoryInterface_Package_References.UserFactoryInterface_Access_Array_Access_Array_Access;
   function "=" (Left, Right : UserFactoryInterface_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.user.UserFactoryInterface_Package_References."=";
   function Java_Object_Access_From_UserFactoryInterface (Value : UserFactoryInterface_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getInstance (This : in out UserFactoryInterface; hashMap_Param : access HashMap_Package.HashMap'Class) return UserInterface_Access is abstract;
   procedure getInstance (This : in out UserFactoryInterface; hashMap_Param : access HashMap_Package.HashMap'Class) is abstract;

end org.allbinary.business.user.UserFactoryInterface_Package;


