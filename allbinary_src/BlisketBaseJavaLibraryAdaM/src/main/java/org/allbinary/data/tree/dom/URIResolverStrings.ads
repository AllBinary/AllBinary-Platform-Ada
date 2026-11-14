-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2025 AllBinary 
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
limited with org.allbinary.data.tree.dom.URIResolverStrings_Package;
package org.allbinary.data.tree.dom.URIResolverStrings_Package_References is
   type URIResolverStrings_Access is access all org.allbinary.data.tree.dom.URIResolverStrings_Package.URIResolverStrings'Class;
   type URIResolverStrings_Access_Array is array (Natural range <>) of URIResolverStrings_Access;
   type URIResolverStrings_Access_Array_Access is access all URIResolverStrings_Access_Array;
   type URIResolverStrings_Access_Array_Access_Array is array (Natural range <>) of URIResolverStrings_Access_Array_Access;
   type URIResolverStrings_Access_Array_Access_Array_Access is access all URIResolverStrings_Access_Array_Access_Array;
   type URIResolverStrings_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : URIResolverStrings_Access_Array_Access;
   end record;
   function Java_Box (Value : URIResolverStrings_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new URIResolverStrings_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_URIResolverStrings_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return URIResolverStrings_Access_Array_Access is (if Value /= null and then Value.all in URIResolverStrings_Access_Array_Object'Class then URIResolverStrings_Access_Array_Object'Class (Value.all).Value else null);
   type URIResolverStrings_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : URIResolverStrings_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : URIResolverStrings_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new URIResolverStrings_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_URIResolverStrings_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return URIResolverStrings_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in URIResolverStrings_Access_Array_Access_Array_Object'Class then URIResolverStrings_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.data.tree.dom.URIResolverStrings_Package_References;

with org.allbinary.data.tree.dom.URIResolverStrings_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;

package org.allbinary.data.tree.dom.URIResolverStrings_Package is

   package Reference_Types is
   end Reference_Types;
   use Reference_Types;


   subtype URIResolverStrings_Access is org.allbinary.data.tree.dom.URIResolverStrings_Package_References.URIResolverStrings_Access;
   function "=" (Left, Right : URIResolverStrings_Access) return Boolean renames org.allbinary.data.tree.dom.URIResolverStrings_Package_References."=";
   subtype URIResolverStrings_Access_Array is org.allbinary.data.tree.dom.URIResolverStrings_Package_References.URIResolverStrings_Access_Array;
   function "=" (Left, Right : URIResolverStrings_Access_Array) return Boolean renames org.allbinary.data.tree.dom.URIResolverStrings_Package_References."=";
   subtype URIResolverStrings_Access_Array_Access is org.allbinary.data.tree.dom.URIResolverStrings_Package_References.URIResolverStrings_Access_Array_Access;
   function "=" (Left, Right : URIResolverStrings_Access_Array_Access) return Boolean renames org.allbinary.data.tree.dom.URIResolverStrings_Package_References."=";
   function Java_Box (Value : URIResolverStrings_Access_Array_Access) return Java_Object_Access renames org.allbinary.data.tree.dom.URIResolverStrings_Package_References.Java_Box;
   function Java_Unbox_URIResolverStrings_Access_Array (Value : access Java_Object'Class) return URIResolverStrings_Access_Array_Access renames org.allbinary.data.tree.dom.URIResolverStrings_Package_References.Java_Unbox_URIResolverStrings_Access_Array;
   subtype URIResolverStrings_Access_Array_Access_Array is org.allbinary.data.tree.dom.URIResolverStrings_Package_References.URIResolverStrings_Access_Array_Access_Array;
   function "=" (Left, Right : URIResolverStrings_Access_Array_Access_Array) return Boolean renames org.allbinary.data.tree.dom.URIResolverStrings_Package_References."=";
   subtype URIResolverStrings_Access_Array_Access_Array_Access is org.allbinary.data.tree.dom.URIResolverStrings_Package_References.URIResolverStrings_Access_Array_Access_Array_Access;
   function "=" (Left, Right : URIResolverStrings_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.data.tree.dom.URIResolverStrings_Package_References."=";
   function Java_Box (Value : URIResolverStrings_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.data.tree.dom.URIResolverStrings_Package_References.Java_Box;
   function Java_Unbox_URIResolverStrings_Access_Array_Access_Array (Value : access Java_Object'Class) return URIResolverStrings_Access_Array_Access_Array_Access renames org.allbinary.data.tree.dom.URIResolverStrings_Package_References.Java_Unbox_URIResolverStrings_Access_Array_Access_Array;

   type URIResolverStrings is new Java_Object with record
      IMPORT_URL : Unbounded_String;
      ATTEMPT : Unbounded_String;
      BASE : Unbounded_String;
      NEW_PATH : Unbounded_String;
      NOTE : Unbounded_String;
      URL_GLOBAL : Unbounded_String;
      REQUIRED_EXTENSION : Unbounded_String;
      RESOLVE : Unbounded_String;
   end record;
   instance : URIResolverStrings_Access;

   procedure Initialize (This : in out URIResolverStrings'Class);
   function Create return URIResolverStrings_Access;
   function getInstance return URIResolverStrings_Access;

end org.allbinary.data.tree.dom.URIResolverStrings_Package;


