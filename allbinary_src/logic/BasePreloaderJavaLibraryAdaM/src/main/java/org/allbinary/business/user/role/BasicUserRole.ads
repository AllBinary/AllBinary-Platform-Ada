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

with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.io.Serializable_Package; use java.io.Serializable_Package;
with org.allbinary.util.BasicArrayList_Package; use org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayListD_Package; use org.allbinary.util.BasicArrayListD_Package;

package org.allbinary.business.user.role.BasicUserRole_Package is

   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package BasicArrayListD_Package renames Standard.org.allbinary.util.BasicArrayListD_Package;

   type BasicUserRole is tagged;
   type BasicUserRole_Access is access all BasicUserRole'Class;
   type BasicUserRole_Access_Array is array (Natural range <>) of BasicUserRole_Access;
   type BasicUserRole_Access_Array_Access is access all BasicUserRole_Access_Array;

   type BasicUserRole is new Serializable with record
      m_int_RoleId : Integer;
      role : Unbounded_String;
      displayValue : Unbounded_String;
      sessionTimeout : Long_Long_Integer;
      sessionInactivityTimeout : Long_Long_Integer;
   end record;
   roleVector : BasicArrayList_Access;

   procedure Initialize (This : in out BasicUserRole'Class; aRole : Unbounded_String; a_int_RoleId : Integer; aSessionTimeout : Long_Long_Integer; aSessionInactivityTimeout : Long_Long_Integer);
   function Create (aRole : Unbounded_String; a_int_RoleId : Integer; aSessionTimeout : Long_Long_Integer; aSessionInactivityTimeout : Long_Long_Integer) return BasicUserRole_Access;
   procedure Initialize (This : in out BasicUserRole'Class; aRole : Unbounded_String; aDisplayValue : Unbounded_String; a_int_RoleId : Integer; aSessionTimeout : Long_Long_Integer; aSessionInactivityTimeout : Long_Long_Integer);
   function Create (aRole : Unbounded_String; aDisplayValue : Unbounded_String; a_int_RoleId : Integer; aSessionTimeout : Long_Long_Integer; aSessionInactivityTimeout : Long_Long_Integer) return BasicUserRole_Access;
   function getRoleId (This : in out BasicUserRole) return Integer;
   function getRole (This : in out BasicUserRole) return Unbounded_String;
   function getSessionTimeout (This : in out BasicUserRole) return Long_Long_Integer;
   function getSessionInactivityTimeout (This : in out BasicUserRole) return Long_Long_Integer;
   function equals (This : in out BasicUserRole; basicUserRole_Param : access BasicUserRole'Class) return Boolean;
   procedure equals (This : in out BasicUserRole; basicUserRole_Param : access BasicUserRole'Class);
   function toString (This : in out BasicUserRole) return Unbounded_String;
   function getRole (role : Unbounded_String) return BasicUserRole_Access;
   procedure getRole (role : Unbounded_String);
   function getAll return BasicArrayList_Access;

end org.allbinary.business.user.role.BasicUserRole_Package;


