--  Generated Code Do Not Modify

limited with org.osgi.framework.BundleContext_Package;
package org.osgi.framework.BundleContext_Package_References is
   type BundleContext_Access is access all org.osgi.framework.BundleContext_Package.BundleContext'Class;
   type BundleContext_Access_Array is array (Natural range <>) of BundleContext_Access;
   type BundleContext_Access_Array_Access is access all BundleContext_Access_Array;
   type BundleContext_Access_Array_Access_Array is array (Natural range <>) of BundleContext_Access_Array_Access;
   type BundleContext_Access_Array_Access_Array_Access is access all BundleContext_Access_Array_Access_Array;
end org.osgi.framework.BundleContext_Package_References;

with org.osgi.framework.BundleContext_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
--  with java.util.Dictionary_Package; use java.util.Dictionary_Package;
limited with org.osgi.framework.Bundle_Package;
with org.osgi.framework.Bundle_Package_References;
limited with org.osgi.framework.ServiceRegistration_Package;
with org.osgi.framework.ServiceRegistration_Package_References;
limited with org.osgi.framework.ServiceReference_Package;
with org.osgi.framework.ServiceReference_Package_References;

package org.osgi.framework.BundleContext_Package is

   package Reference_Types is
   subtype Bundle_Access is org.osgi.framework.Bundle_Package_References.Bundle_Access;
   use type Bundle_Access;
   subtype Bundle_Access_Array is org.osgi.framework.Bundle_Package_References.Bundle_Access_Array;
   use type Bundle_Access_Array;
   subtype Bundle_Access_Array_Access is org.osgi.framework.Bundle_Package_References.Bundle_Access_Array_Access;
   use type Bundle_Access_Array_Access;
   subtype Bundle_Access_Array_Access_Array is org.osgi.framework.Bundle_Package_References.Bundle_Access_Array_Access_Array;
   use type Bundle_Access_Array_Access_Array;
   subtype Bundle_Access_Array_Access_Array_Access is org.osgi.framework.Bundle_Package_References.Bundle_Access_Array_Access_Array_Access;
   use type Bundle_Access_Array_Access_Array_Access;
   subtype ServiceRegistration_Access is org.osgi.framework.ServiceRegistration_Package_References.ServiceRegistration_Access;
   use type ServiceRegistration_Access;
   subtype ServiceRegistration_Access_Array is org.osgi.framework.ServiceRegistration_Package_References.ServiceRegistration_Access_Array;
   use type ServiceRegistration_Access_Array;
   subtype ServiceRegistration_Access_Array_Access is org.osgi.framework.ServiceRegistration_Package_References.ServiceRegistration_Access_Array_Access;
   use type ServiceRegistration_Access_Array_Access;
   subtype ServiceRegistration_Access_Array_Access_Array is org.osgi.framework.ServiceRegistration_Package_References.ServiceRegistration_Access_Array_Access_Array;
   use type ServiceRegistration_Access_Array_Access_Array;
   subtype ServiceRegistration_Access_Array_Access_Array_Access is org.osgi.framework.ServiceRegistration_Package_References.ServiceRegistration_Access_Array_Access_Array_Access;
   use type ServiceRegistration_Access_Array_Access_Array_Access;
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


   type BundleContext is interface;
   subtype BundleContext_Access is org.osgi.framework.BundleContext_Package_References.BundleContext_Access;
   function "=" (Left, Right : BundleContext_Access) return Boolean renames org.osgi.framework.BundleContext_Package_References."=";
   subtype BundleContext_Access_Array is org.osgi.framework.BundleContext_Package_References.BundleContext_Access_Array;
   function "=" (Left, Right : BundleContext_Access_Array) return Boolean renames org.osgi.framework.BundleContext_Package_References."=";
   subtype BundleContext_Access_Array_Access is org.osgi.framework.BundleContext_Package_References.BundleContext_Access_Array_Access;
   function "=" (Left, Right : BundleContext_Access_Array_Access) return Boolean renames org.osgi.framework.BundleContext_Package_References."=";
   subtype BundleContext_Access_Array_Access_Array is org.osgi.framework.BundleContext_Package_References.BundleContext_Access_Array_Access_Array;
   function "=" (Left, Right : BundleContext_Access_Array_Access_Array) return Boolean renames org.osgi.framework.BundleContext_Package_References."=";
   subtype BundleContext_Access_Array_Access_Array_Access is org.osgi.framework.BundleContext_Package_References.BundleContext_Access_Array_Access_Array_Access;
   function "=" (Left, Right : BundleContext_Access_Array_Access_Array_Access) return Boolean renames org.osgi.framework.BundleContext_Package_References."=";
   function Java_Object_Access_From_BundleContext (Value : BundleContext_Access) return Java_Object_Access is (if Value = null then null else Java_Object_Access' (Java_Object'Class (Value.all)'Unchecked_Access));
   function getBundles (This : in out BundleContext) return Bundle_Access_Array_Access is abstract;
   function installBundle (This : in out BundleContext; location : Unbounded_String) return Bundle_Access is abstract;
   procedure installBundle (This : in out BundleContext; location : Unbounded_String) is abstract;
   function registerService (This : in out BundleContext; clazz : Unbounded_String; service_Param : access Java_Object'Class; properties_Param : access Dictionary_Package.Dictionary'Class) return ServiceRegistration_Access is abstract;
   procedure registerService (This : in out BundleContext; clazz : Unbounded_String; service_Param : access Java_Object'Class; properties_Param : access Dictionary_Package.Dictionary'Class) is abstract;
   function getService (This : in out BundleContext; reference_Param : access ServiceReference_Package.ServiceReference'Class) return Java_Object_Access is abstract;
   procedure getService (This : in out BundleContext; reference_Param : access ServiceReference_Package.ServiceReference'Class) is abstract;
   function getServiceReferences (This : in out BundleContext; clazz : Unbounded_String; filter : Unbounded_String) return ServiceReference_Access_Array_Access is abstract;
   procedure getServiceReferences (This : in out BundleContext; clazz : Unbounded_String; filter : Unbounded_String) is abstract;
   function getServiceReference (This : in out BundleContext; clazz : Unbounded_String) return ServiceReference_Access is abstract;
   procedure getServiceReference (This : in out BundleContext; clazz : Unbounded_String) is abstract;

end org.osgi.framework.BundleContext_Package;


