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
limited with org.allbinary.business.user.role.BasicUserRole_Package;
package org.allbinary.business.user.role.BasicUserRole_Package_References is
   type BasicUserRole_Access is access all org.allbinary.business.user.role.BasicUserRole_Package.BasicUserRole'Class;
   type BasicUserRole_Access_Array is array (Natural range <>) of BasicUserRole_Access;
   type BasicUserRole_Access_Array_Access is access all BasicUserRole_Access_Array;
   type BasicUserRole_Access_Array_Access_Array is array (Natural range <>) of BasicUserRole_Access_Array_Access;
   type BasicUserRole_Access_Array_Access_Array_Access is access all BasicUserRole_Access_Array_Access_Array;
   type BasicUserRole_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BasicUserRole_Access_Array_Access;
   end record;
   function Java_Box (Value : BasicUserRole_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BasicUserRole_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BasicUserRole_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BasicUserRole_Access_Array_Access is (if Value /= null and then Value.all in BasicUserRole_Access_Array_Object'Class then BasicUserRole_Access_Array_Object'Class (Value.all).Value else null);
   type BasicUserRole_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : BasicUserRole_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : BasicUserRole_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new BasicUserRole_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_BasicUserRole_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return BasicUserRole_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in BasicUserRole_Access_Array_Access_Array_Object'Class then BasicUserRole_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.business.user.role.BasicUserRole_Package_References;

with org.allbinary.business.user.role.BasicUserRole_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.io.Serializable_Package; use java.io.Serializable_Package;

package org.allbinary.business.user.role.BasicUserRole_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype BasicUserRole_Access is org.allbinary.business.user.role.BasicUserRole_Package_References.BasicUserRole_Access;
   function "=" (Left, Right : BasicUserRole_Access) return Boolean renames org.allbinary.business.user.role.BasicUserRole_Package_References."=";
   subtype BasicUserRole_Access_Array is org.allbinary.business.user.role.BasicUserRole_Package_References.BasicUserRole_Access_Array;
   function "=" (Left, Right : BasicUserRole_Access_Array) return Boolean renames org.allbinary.business.user.role.BasicUserRole_Package_References."=";
   subtype BasicUserRole_Access_Array_Access is org.allbinary.business.user.role.BasicUserRole_Package_References.BasicUserRole_Access_Array_Access;
   function "=" (Left, Right : BasicUserRole_Access_Array_Access) return Boolean renames org.allbinary.business.user.role.BasicUserRole_Package_References."=";
   function Java_Box (Value : BasicUserRole_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.user.role.BasicUserRole_Package_References.Java_Box;
   function Java_Unbox_BasicUserRole_Access_Array (Value : access Java_Object'Class) return BasicUserRole_Access_Array_Access renames org.allbinary.business.user.role.BasicUserRole_Package_References.Java_Unbox_BasicUserRole_Access_Array;
   subtype BasicUserRole_Access_Array_Access_Array is org.allbinary.business.user.role.BasicUserRole_Package_References.BasicUserRole_Access_Array_Access_Array;
   function "=" (Left, Right : BasicUserRole_Access_Array_Access_Array) return Boolean renames org.allbinary.business.user.role.BasicUserRole_Package_References."=";
   subtype BasicUserRole_Access_Array_Access_Array_Access is org.allbinary.business.user.role.BasicUserRole_Package_References.BasicUserRole_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BasicUserRole_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.business.user.role.BasicUserRole_Package_References."=";
   function Java_Box (Value : BasicUserRole_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.business.user.role.BasicUserRole_Package_References.Java_Box;
   function Java_Unbox_BasicUserRole_Access_Array_Access_Array (Value : access Java_Object'Class) return BasicUserRole_Access_Array_Access_Array_Access renames org.allbinary.business.user.role.BasicUserRole_Package_References.Java_Unbox_BasicUserRole_Access_Array_Access_Array;

   type BasicUserRole is new Java_Object with record
      m_int_RoleId : Integer;
      role : Unbounded_String;
      displayValue : Unbounded_String;
      sessionTimeout : Long_Long_Integer;
      sessionInactivityTimeout : Long_Long_Integer;
   end record;

   procedure Initialize (This : in out BasicUserRole'Class; aRole : Unbounded_String; a_int_RoleId : Integer; aSessionTimeout : Long_Long_Integer; aSessionInactivityTimeout : Long_Long_Integer);
   function Create (aRole : Unbounded_String; a_int_RoleId : Integer; aSessionTimeout : Long_Long_Integer; aSessionInactivityTimeout : Long_Long_Integer) return BasicUserRole_Access;
   procedure Initialize (This : in out BasicUserRole'Class; aRole : Unbounded_String; aDisplayValue : Unbounded_String; a_int_RoleId : Integer; aSessionTimeout : Long_Long_Integer; aSessionInactivityTimeout : Long_Long_Integer);
   function Create (aRole : Unbounded_String; aDisplayValue : Unbounded_String; a_int_RoleId : Integer; aSessionTimeout : Long_Long_Integer; aSessionInactivityTimeout : Long_Long_Integer) return BasicUserRole_Access;
   function getRoleId (This : in out BasicUserRole) return Integer;
   function getRole (This : in out BasicUserRole) return Unbounded_String;
   function getSessionTimeout (This : in out BasicUserRole) return Long_Long_Integer;
   function getSessionInactivityTimeout (This : in out BasicUserRole) return Long_Long_Integer;
   function equals (This : in out BasicUserRole; basicUserRole_Var_Param : access BasicUserRole_Package.BasicUserRole'Class) return Boolean;
   procedure equals (This : in out BasicUserRole; basicUserRole_Var_Param : access BasicUserRole_Package.BasicUserRole'Class);
   function toString (This : in out BasicUserRole) return Unbounded_String;

end org.allbinary.business.user.role.BasicUserRole_Package;


