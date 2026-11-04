--  Generated Code Do Not Modify

limited with org.platform.OpenGLResources_Package;
package org.platform.OpenGLResources_Package_References is
   type OpenGLResources_Access is access all org.platform.OpenGLResources_Package.OpenGLResources'Class;
   type OpenGLResources_Access_Array is array (Natural range <>) of OpenGLResources_Access;
   type OpenGLResources_Access_Array_Access is access all OpenGLResources_Access_Array;
   type OpenGLResources_Access_Array_Access_Array is array (Natural range <>) of OpenGLResources_Access_Array_Access;
   type OpenGLResources_Access_Array_Access_Array_Access is access all OpenGLResources_Access_Array_Access_Array;
end org.platform.OpenGLResources_Package_References;

with org.platform.OpenGLResources_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
with java.io.InputStream_Package; use java.io.InputStream_Package;

package org.platform.OpenGLResources_Package is

   package InputStream_Package renames Standard.java.io.InputStream_Package;
   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype OpenGLResources_Access is org.platform.OpenGLResources_Package_References.OpenGLResources_Access;
   function "=" (Left, Right : OpenGLResources_Access) return Boolean renames org.platform.OpenGLResources_Package_References."=";
   subtype OpenGLResources_Access_Array is org.platform.OpenGLResources_Package_References.OpenGLResources_Access_Array;
   function "=" (Left, Right : OpenGLResources_Access_Array) return Boolean renames org.platform.OpenGLResources_Package_References."=";
   subtype OpenGLResources_Access_Array_Access is org.platform.OpenGLResources_Package_References.OpenGLResources_Access_Array_Access;
   function "=" (Left, Right : OpenGLResources_Access_Array_Access) return Boolean renames org.platform.OpenGLResources_Package_References."=";
   subtype OpenGLResources_Access_Array_Access_Array is org.platform.OpenGLResources_Package_References.OpenGLResources_Access_Array_Access_Array;
   function "=" (Left, Right : OpenGLResources_Access_Array_Access_Array) return Boolean renames org.platform.OpenGLResources_Package_References."=";
   subtype OpenGLResources_Access_Array_Access_Array_Access is org.platform.OpenGLResources_Package_References.OpenGLResources_Access_Array_Access_Array_Access;
   function "=" (Left, Right : OpenGLResources_Access_Array_Access_Array_Access) return Boolean renames org.platform.OpenGLResources_Package_References."=";

   type OpenGLResources is new Java_Object with null record;
   instance : OpenGLResources_Access;

   procedure Initialize (This : in out OpenGLResources'Class);
   function Create return OpenGLResources_Access;
   function getInstance return OpenGLResources_Access;
   procedure init (This : in out OpenGLResources);
   function isExcluded (This : in out OpenGLResources; name : Unbounded_String) return Boolean;
   procedure isExcluded (This : in out OpenGLResources; name : Unbounded_String);
   function getIdentifier (This : in out OpenGLResources; name : Unbounded_String; defType : Unbounded_String; defPackage : Unbounded_String) return Integer;
   procedure getIdentifier (This : in out OpenGLResources; name : Unbounded_String; defType : Unbounded_String; defPackage : Unbounded_String);
   function openRawResource (This : in out OpenGLResources; id : Integer) return InputStream_Access;
   procedure openRawResource (This : in out OpenGLResources; id : Integer);
   function openRawResourceFromName (This : in out OpenGLResources; resourceName : Unbounded_String) return InputStream_Access;
   procedure openRawResourceFromName (This : in out OpenGLResources; resourceName : Unbounded_String);
   function getResourceAsStream (This : in out OpenGLResources; resourceName : Unbounded_String) return InputStream_Access;
   procedure getResourceAsStream (This : in out OpenGLResources; resourceName : Unbounded_String);
   function getPackageName (This : in out OpenGLResources) return Unbounded_String;

end org.platform.OpenGLResources_Package;


