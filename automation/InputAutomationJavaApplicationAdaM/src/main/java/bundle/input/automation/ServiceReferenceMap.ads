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
limited with bundle.input.automation.ServiceReferenceMap_Package;
package bundle.input.automation.ServiceReferenceMap_Package_References is
   type ServiceReferenceMap_Access is access all bundle.input.automation.ServiceReferenceMap_Package.ServiceReferenceMap'Class;
   type ServiceReferenceMap_Access_Array is array (Natural range <>) of ServiceReferenceMap_Access;
   type ServiceReferenceMap_Access_Array_Access is access all ServiceReferenceMap_Access_Array;
   type ServiceReferenceMap_Access_Array_Access_Array is array (Natural range <>) of ServiceReferenceMap_Access_Array_Access;
   type ServiceReferenceMap_Access_Array_Access_Array_Access is access all ServiceReferenceMap_Access_Array_Access_Array;
   type ServiceReferenceMap_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ServiceReferenceMap_Access_Array_Access;
   end record;
   function Java_Box (Value : ServiceReferenceMap_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ServiceReferenceMap_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ServiceReferenceMap_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ServiceReferenceMap_Access_Array_Access is (if Value /= null and then Value.all in ServiceReferenceMap_Access_Array_Object'Class then ServiceReferenceMap_Access_Array_Object'Class (Value.all).Value else null);
   type ServiceReferenceMap_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ServiceReferenceMap_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ServiceReferenceMap_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ServiceReferenceMap_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ServiceReferenceMap_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ServiceReferenceMap_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ServiceReferenceMap_Access_Array_Access_Array_Object'Class then ServiceReferenceMap_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end bundle.input.automation.ServiceReferenceMap_Package_References;

with bundle.input.automation.ServiceReferenceMap_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.util.Collection_Package; use java.util.Collection_Package;
with java.util.Map_Package; use java.util.Map_Package;
with java.util.Set_Package; use java.util.Set_Package;
limited with org.osgi.framework.ServiceReference_Package;
with org.osgi.framework.ServiceReference_Package_References;

package bundle.input.automation.ServiceReferenceMap_Package is

   package Map_Package renames Standard.java.util.Map_Package;
   package Set_Package renames Standard.java.util.Set_Package;
   package ServiceReference_Package renames Standard.org.osgi.framework.ServiceReference_Package;
   package Reference_Types is
   subtype ServiceReference_Access is org.osgi.framework.ServiceReference_Package_References.ServiceReference_Access;
   use type ServiceReference_Access;
   subtype ServiceReference_Access_Array is org.osgi.framework.ServiceReference_Package_References.ServiceReference_Access_Array;
   use type ServiceReference_Access_Array;
   subtype ServiceReference_Access_Array_Access is org.osgi.framework.ServiceReference_Package_References.ServiceReference_Access_Array_Access;
   use type ServiceReference_Access_Array_Access;
   subtype ServiceReference_Access_Array_Access_Array is org.osgi.framework.ServiceReference_Package_References.ServiceReference_Access_Array_Access_Array;
   use type ServiceReference_Access_Array_Access_Array;
   subtype ServiceReference_Access_Array_Access_Array_Access is org.osgi.framework.ServiceReference_Package_References.ServiceReference_Access_Array_Access_Array_Access;
   use type ServiceReference_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ServiceReferenceMap_Access is bundle.input.automation.ServiceReferenceMap_Package_References.ServiceReferenceMap_Access;
   function "=" (Left, Right : ServiceReferenceMap_Access) return Boolean renames bundle.input.automation.ServiceReferenceMap_Package_References."=";
   subtype ServiceReferenceMap_Access_Array is bundle.input.automation.ServiceReferenceMap_Package_References.ServiceReferenceMap_Access_Array;
   function "=" (Left, Right : ServiceReferenceMap_Access_Array) return Boolean renames bundle.input.automation.ServiceReferenceMap_Package_References."=";
   subtype ServiceReferenceMap_Access_Array_Access is bundle.input.automation.ServiceReferenceMap_Package_References.ServiceReferenceMap_Access_Array_Access;
   function "=" (Left, Right : ServiceReferenceMap_Access_Array_Access) return Boolean renames bundle.input.automation.ServiceReferenceMap_Package_References."=";
   function Java_Box (Value : ServiceReferenceMap_Access_Array_Access) return Java_Object_Access renames bundle.input.automation.ServiceReferenceMap_Package_References.Java_Box;
   function Java_Unbox_ServiceReferenceMap_Access_Array (Value : access Java_Object'Class) return ServiceReferenceMap_Access_Array_Access renames bundle.input.automation.ServiceReferenceMap_Package_References.Java_Unbox_ServiceReferenceMap_Access_Array;
   subtype ServiceReferenceMap_Access_Array_Access_Array is bundle.input.automation.ServiceReferenceMap_Package_References.ServiceReferenceMap_Access_Array_Access_Array;
   function "=" (Left, Right : ServiceReferenceMap_Access_Array_Access_Array) return Boolean renames bundle.input.automation.ServiceReferenceMap_Package_References."=";
   subtype ServiceReferenceMap_Access_Array_Access_Array_Access is bundle.input.automation.ServiceReferenceMap_Package_References.ServiceReferenceMap_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ServiceReferenceMap_Access_Array_Access_Array_Access) return Boolean renames bundle.input.automation.ServiceReferenceMap_Package_References."=";
   function Java_Box (Value : ServiceReferenceMap_Access_Array_Access_Array_Access) return Java_Object_Access renames bundle.input.automation.ServiceReferenceMap_Package_References.Java_Box;
   function Java_Unbox_ServiceReferenceMap_Access_Array_Access_Array (Value : access Java_Object'Class) return ServiceReferenceMap_Access_Array_Access_Array_Access renames bundle.input.automation.ServiceReferenceMap_Package_References.Java_Unbox_ServiceReferenceMap_Access_Array_Access_Array;

   type ServiceReferenceMap is new Java_Object and Map with record
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
   function containsKey (This : in out ServiceReferenceMap; Value : Unbounded_String) return Boolean;
   procedure containsKey (This : in out ServiceReferenceMap; Value : Unbounded_String);
   function containsValue (This : in out ServiceReferenceMap; Value : Unbounded_String) return Boolean;
   procedure containsValue (This : in out ServiceReferenceMap; Value : Unbounded_String);
   function get (This : in out ServiceReferenceMap; Value : Unbounded_String) return Java_Object_Access;
   procedure get (This : in out ServiceReferenceMap; Value : Unbounded_String);
   function remove (This : in out ServiceReferenceMap; Value : Unbounded_String) return Java_Object_Access;
   procedure remove (This : in out ServiceReferenceMap; Value : Unbounded_String);

end bundle.input.automation.ServiceReferenceMap_Package;


