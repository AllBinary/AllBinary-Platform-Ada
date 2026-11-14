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
limited with org.allbinary.graphics.opengles.shader.ShaderManagerFactory_Package;
package org.allbinary.graphics.opengles.shader.ShaderManagerFactory_Package_References is
   type ShaderManagerFactory_Access is access all org.allbinary.graphics.opengles.shader.ShaderManagerFactory_Package.ShaderManagerFactory'Class;
   type ShaderManagerFactory_Access_Array is array (Natural range <>) of ShaderManagerFactory_Access;
   type ShaderManagerFactory_Access_Array_Access is access all ShaderManagerFactory_Access_Array;
   type ShaderManagerFactory_Access_Array_Access_Array is array (Natural range <>) of ShaderManagerFactory_Access_Array_Access;
   type ShaderManagerFactory_Access_Array_Access_Array_Access is access all ShaderManagerFactory_Access_Array_Access_Array;
   type ShaderManagerFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ShaderManagerFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : ShaderManagerFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ShaderManagerFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ShaderManagerFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ShaderManagerFactory_Access_Array_Access is (if Value /= null and then Value.all in ShaderManagerFactory_Access_Array_Object'Class then ShaderManagerFactory_Access_Array_Object'Class (Value.all).Value else null);
   type ShaderManagerFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ShaderManagerFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ShaderManagerFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ShaderManagerFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ShaderManagerFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ShaderManagerFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ShaderManagerFactory_Access_Array_Access_Array_Object'Class then ShaderManagerFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.graphics.opengles.shader.ShaderManagerFactory_Package_References;

with org.allbinary.graphics.opengles.shader.ShaderManagerFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.graphics.opengles.shader.ShaderManager_Package;
with org.allbinary.graphics.opengles.shader.ShaderManager_Package_References;

package org.allbinary.graphics.opengles.shader.ShaderManagerFactory_Package is

   package Reference_Types is
   subtype ShaderManager_Access is org.allbinary.graphics.opengles.shader.ShaderManager_Package_References.ShaderManager_Access;
   use type ShaderManager_Access;
   subtype ShaderManager_Access_Array is org.allbinary.graphics.opengles.shader.ShaderManager_Package_References.ShaderManager_Access_Array;
   use type ShaderManager_Access_Array;
   subtype ShaderManager_Access_Array_Access is org.allbinary.graphics.opengles.shader.ShaderManager_Package_References.ShaderManager_Access_Array_Access;
   use type ShaderManager_Access_Array_Access;
   subtype ShaderManager_Access_Array_Access_Array is org.allbinary.graphics.opengles.shader.ShaderManager_Package_References.ShaderManager_Access_Array_Access_Array;
   use type ShaderManager_Access_Array_Access_Array;
   subtype ShaderManager_Access_Array_Access_Array_Access is org.allbinary.graphics.opengles.shader.ShaderManager_Package_References.ShaderManager_Access_Array_Access_Array_Access;
   use type ShaderManager_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ShaderManagerFactory_Access is org.allbinary.graphics.opengles.shader.ShaderManagerFactory_Package_References.ShaderManagerFactory_Access;
   function "=" (Left, Right : ShaderManagerFactory_Access) return Boolean renames org.allbinary.graphics.opengles.shader.ShaderManagerFactory_Package_References."=";
   subtype ShaderManagerFactory_Access_Array is org.allbinary.graphics.opengles.shader.ShaderManagerFactory_Package_References.ShaderManagerFactory_Access_Array;
   function "=" (Left, Right : ShaderManagerFactory_Access_Array) return Boolean renames org.allbinary.graphics.opengles.shader.ShaderManagerFactory_Package_References."=";
   subtype ShaderManagerFactory_Access_Array_Access is org.allbinary.graphics.opengles.shader.ShaderManagerFactory_Package_References.ShaderManagerFactory_Access_Array_Access;
   function "=" (Left, Right : ShaderManagerFactory_Access_Array_Access) return Boolean renames org.allbinary.graphics.opengles.shader.ShaderManagerFactory_Package_References."=";
   function Java_Box (Value : ShaderManagerFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.opengles.shader.ShaderManagerFactory_Package_References.Java_Box;
   function Java_Unbox_ShaderManagerFactory_Access_Array (Value : access Java_Object'Class) return ShaderManagerFactory_Access_Array_Access renames org.allbinary.graphics.opengles.shader.ShaderManagerFactory_Package_References.Java_Unbox_ShaderManagerFactory_Access_Array;
   subtype ShaderManagerFactory_Access_Array_Access_Array is org.allbinary.graphics.opengles.shader.ShaderManagerFactory_Package_References.ShaderManagerFactory_Access_Array_Access_Array;
   function "=" (Left, Right : ShaderManagerFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.opengles.shader.ShaderManagerFactory_Package_References."=";
   subtype ShaderManagerFactory_Access_Array_Access_Array_Access is org.allbinary.graphics.opengles.shader.ShaderManagerFactory_Package_References.ShaderManagerFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ShaderManagerFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.opengles.shader.ShaderManagerFactory_Package_References."=";
   function Java_Box (Value : ShaderManagerFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.opengles.shader.ShaderManagerFactory_Package_References.Java_Box;
   function Java_Unbox_ShaderManagerFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return ShaderManagerFactory_Access_Array_Access_Array_Access renames org.allbinary.graphics.opengles.shader.ShaderManagerFactory_Package_References.Java_Unbox_ShaderManagerFactory_Access_Array_Access_Array;

   type ShaderManagerFactory is new Java_Object with null record;
   instance : ShaderManagerFactory_Access;

   procedure Initialize (This : in out ShaderManagerFactory'Class);
   function Create return ShaderManagerFactory_Access;
   function getInstance return ShaderManagerFactory_Access;
   function create (This : in out ShaderManagerFactory) return ShaderManager_Access;

end org.allbinary.graphics.opengles.shader.ShaderManagerFactory_Package;


