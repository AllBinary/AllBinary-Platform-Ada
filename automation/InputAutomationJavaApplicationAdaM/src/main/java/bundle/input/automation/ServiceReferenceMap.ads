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
--  with java.util.Collection_Package; use java.util.Collection_Package;
--  with java.util.Map_Package; use java.util.Map_Package;
--  with java.util.Set_Package; use java.util.Set_Package;
with org.osgi.framework.ServiceReference_Package; use org.osgi.framework.ServiceReference_Package;
with org.allbinary.logic.string_Id.StringMaker_Package; use org.allbinary.logic.string_Id.StringMaker_Package;

package bundle.input.automation.ServiceReferenceMap_Package is

   package ServiceReference_Package renames Standard.org.osgi.framework.ServiceReference_Package;
   package StringMaker_Package renames Standard.org.allbinary.logic.string_Id.StringMaker_Package;

   type ServiceReferenceMap is tagged;
   type ServiceReferenceMap_Access is access all ServiceReferenceMap'Class;
   type ServiceReferenceMap_Access_Array is array (Natural range <>) of ServiceReferenceMap_Access;
   type ServiceReferenceMap_Access_Array_Access is access all ServiceReferenceMap_Access_Array;

   type ServiceReferenceMap is new Map with record
      serviceReference : ServiceReference_Access;
   end record;

   procedure Initialize (This : in out ServiceReferenceMap'Class; serviceReference_Param : access ServiceReference_Package.ServiceReference'Class);
   function Create (serviceReference_Param : access ServiceReference_Package.ServiceReference'Class) return ServiceReferenceMap_Access;
   function size (This : in out ServiceReferenceMap) return Integer;
   function isEmpty (This : in out ServiceReferenceMap) return Boolean;
   function containsKey (This : in out ServiceReferenceMap; key_Param : access Java_Object'Class) return Boolean;
   procedure containsKey (This : in out ServiceReferenceMap; key_Param : access Java_Object'Class);
   function containsValue (This : in out ServiceReferenceMap; value_Param : access Java_Object'Class) return Boolean;
   procedure containsValue (This : in out ServiceReferenceMap; value_Param : access Java_Object'Class);
   function get (This : in out ServiceReferenceMap; key_Param : access Java_Object'Class) return Java_Object_Access;
   procedure get (This : in out ServiceReferenceMap; key_Param : access Java_Object'Class);
   function put (This : in out ServiceReferenceMap; key_Param : access Java_Object'Class; value_Param : access Java_Object'Class) return Java_Object_Access;
   procedure put (This : in out ServiceReferenceMap; key_Param : access Java_Object'Class; value_Param : access Java_Object'Class);
   function remove (This : in out ServiceReferenceMap; key_Param : access Java_Object'Class) return Java_Object_Access;
   procedure remove (This : in out ServiceReferenceMap; key_Param : access Java_Object'Class);
   procedure putAll (This : in out ServiceReferenceMap; m_Param : access Map_Package.Map'Class);
   procedure clear (This : in out ServiceReferenceMap);
   function keySet (This : in out ServiceReferenceMap) return Set_Access;
   function values (This : in out ServiceReferenceMap) return Collection_Access;
   function entrySet (This : in out ServiceReferenceMap) return Set_Access;
   function toString (map_Param : access Map_Package.Map'Class) return Unbounded_String;
   procedure toString (map_Param : access Map_Package.Map'Class);

end bundle.input.automation.ServiceReferenceMap_Package;


