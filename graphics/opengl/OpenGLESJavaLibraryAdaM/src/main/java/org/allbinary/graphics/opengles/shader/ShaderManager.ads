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
limited with org.allbinary.graphics.opengles.shader.ShaderManager_Package;
package org.allbinary.graphics.opengles.shader.ShaderManager_Package_References is
   type ShaderManager_Access is access all org.allbinary.graphics.opengles.shader.ShaderManager_Package.ShaderManager'Class;
   type ShaderManager_Access_Array is array (Natural range <>) of ShaderManager_Access;
   type ShaderManager_Access_Array_Access is access all ShaderManager_Access_Array;
   type ShaderManager_Access_Array_Access_Array is array (Natural range <>) of ShaderManager_Access_Array_Access;
   type ShaderManager_Access_Array_Access_Array_Access is access all ShaderManager_Access_Array_Access_Array;
   type ShaderManager_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ShaderManager_Access_Array_Access;
   end record;
   function Java_Box (Value : ShaderManager_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ShaderManager_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ShaderManager_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ShaderManager_Access_Array_Access is (if Value /= null and then Value.all in ShaderManager_Access_Array_Object'Class then ShaderManager_Access_Array_Object'Class (Value.all).Value else null);
   type ShaderManager_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : ShaderManager_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : ShaderManager_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new ShaderManager_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_ShaderManager_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return ShaderManager_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in ShaderManager_Access_Array_Access_Array_Object'Class then ShaderManager_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.graphics.opengles.shader.ShaderManager_Package_References;

with org.allbinary.graphics.opengles.shader.ShaderManager_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.khronos.opengles.GL10_Package;
with javax.microedition.khronos.opengles.GL10_Package_References;
limited with org.allbinary.string_Id.CommonStrings_Package;
with org.allbinary.string_Id.CommonStrings_Package_References;
limited with org.allbinary.util.BasicArrayList_Package;
with org.allbinary.util.BasicArrayList_Package_References;

package org.allbinary.graphics.opengles.shader.ShaderManager_Package is

   package GL10_Package renames Standard.javax.microedition.khronos.opengles.GL10_Package;
   package CommonStrings_Package renames Standard.org.allbinary.string_Id.CommonStrings_Package;
   package BasicArrayList_Package renames Standard.org.allbinary.util.BasicArrayList_Package;
   package Reference_Types is
   subtype GL10_Access is javax.microedition.khronos.opengles.GL10_Package_References.GL10_Access;
   use type GL10_Access;
   subtype GL10_Access_Array is javax.microedition.khronos.opengles.GL10_Package_References.GL10_Access_Array;
   use type GL10_Access_Array;
   subtype GL10_Access_Array_Access is javax.microedition.khronos.opengles.GL10_Package_References.GL10_Access_Array_Access;
   use type GL10_Access_Array_Access;
   subtype GL10_Access_Array_Access_Array is javax.microedition.khronos.opengles.GL10_Package_References.GL10_Access_Array_Access_Array;
   use type GL10_Access_Array_Access_Array;
   subtype GL10_Access_Array_Access_Array_Access is javax.microedition.khronos.opengles.GL10_Package_References.GL10_Access_Array_Access_Array_Access;
   use type GL10_Access_Array_Access_Array_Access;
   subtype CommonStrings_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access;
   use type CommonStrings_Access;
   subtype CommonStrings_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array;
   use type CommonStrings_Access_Array;
   subtype CommonStrings_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access;
   use type CommonStrings_Access_Array_Access;
   subtype CommonStrings_Access_Array_Access_Array is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array;
   use type CommonStrings_Access_Array_Access_Array;
   subtype CommonStrings_Access_Array_Access_Array_Access is org.allbinary.string_Id.CommonStrings_Package_References.CommonStrings_Access_Array_Access_Array_Access;
   use type CommonStrings_Access_Array_Access_Array_Access;
   subtype BasicArrayList_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access;
   use type BasicArrayList_Access;
   subtype BasicArrayList_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array;
   use type BasicArrayList_Access_Array;
   subtype BasicArrayList_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access;
   subtype BasicArrayList_Access_Array_Access_Array is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array;
   use type BasicArrayList_Access_Array_Access_Array;
   subtype BasicArrayList_Access_Array_Access_Array_Access is org.allbinary.util.BasicArrayList_Package_References.BasicArrayList_Access_Array_Access_Array_Access;
   use type BasicArrayList_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype ShaderManager_Access is org.allbinary.graphics.opengles.shader.ShaderManager_Package_References.ShaderManager_Access;
   function "=" (Left, Right : ShaderManager_Access) return Boolean renames org.allbinary.graphics.opengles.shader.ShaderManager_Package_References."=";
   subtype ShaderManager_Access_Array is org.allbinary.graphics.opengles.shader.ShaderManager_Package_References.ShaderManager_Access_Array;
   function "=" (Left, Right : ShaderManager_Access_Array) return Boolean renames org.allbinary.graphics.opengles.shader.ShaderManager_Package_References."=";
   subtype ShaderManager_Access_Array_Access is org.allbinary.graphics.opengles.shader.ShaderManager_Package_References.ShaderManager_Access_Array_Access;
   function "=" (Left, Right : ShaderManager_Access_Array_Access) return Boolean renames org.allbinary.graphics.opengles.shader.ShaderManager_Package_References."=";
   function Java_Box (Value : ShaderManager_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.opengles.shader.ShaderManager_Package_References.Java_Box;
   function Java_Unbox_ShaderManager_Access_Array (Value : access Java_Object'Class) return ShaderManager_Access_Array_Access renames org.allbinary.graphics.opengles.shader.ShaderManager_Package_References.Java_Unbox_ShaderManager_Access_Array;
   subtype ShaderManager_Access_Array_Access_Array is org.allbinary.graphics.opengles.shader.ShaderManager_Package_References.ShaderManager_Access_Array_Access_Array;
   function "=" (Left, Right : ShaderManager_Access_Array_Access_Array) return Boolean renames org.allbinary.graphics.opengles.shader.ShaderManager_Package_References."=";
   subtype ShaderManager_Access_Array_Access_Array_Access is org.allbinary.graphics.opengles.shader.ShaderManager_Package_References.ShaderManager_Access_Array_Access_Array_Access;
   function "=" (Left, Right : ShaderManager_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.graphics.opengles.shader.ShaderManager_Package_References."=";
   function Java_Box (Value : ShaderManager_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.graphics.opengles.shader.ShaderManager_Package_References.Java_Box;
   function Java_Unbox_ShaderManager_Access_Array_Access_Array (Value : access Java_Object'Class) return ShaderManager_Access_Array_Access_Array_Access renames org.allbinary.graphics.opengles.shader.ShaderManager_Package_References.Java_Unbox_ShaderManager_Access_Array_Access_Array;

   type ShaderManager is new Java_Object with record
      commonStrings : CommonStrings_Access;
      LOAD_SHADER : Unbounded_String;
      U_U_VERSION_U_U : Unbounded_String;
      GL_VERTEX_SHADER : Integer;
      GL_FRAGMENT_SHADER : Integer;
   end record;
   instance : ShaderManager_Access;

   procedure Initialize (This : in out ShaderManager'Class; GL_VERTEX_SHADER : Integer; GL_FRAGMENT_SHADER : Integer);
   function Create (GL_VERTEX_SHADER : Integer; GL_FRAGMENT_SHADER : Integer) return ShaderManager_Access;
   function getInstance return ShaderManager_Access;
   function load (This : in out ShaderManager; gl_Param : access GL10_Package.GL10'Class; resource : Unbounded_String; shaderAsStringArray : Unbounded_String_Array_Access; shaderType : Integer) return Integer;
   procedure load (This : in out ShaderManager; gl_Param : access GL10_Package.GL10'Class; resource : Unbounded_String; shaderAsStringArray : Unbounded_String_Array_Access; shaderType : Integer);
   function loadShader (This : in out ShaderManager; gl_Param : access GL10_Package.GL10'Class; resource : Unbounded_String; stringList_Param : access BasicArrayList_Package.BasicArrayList'Class; shaderType : Integer) return Integer;
   procedure loadShader (This : in out ShaderManager; gl_Param : access GL10_Package.GL10'Class; resource : Unbounded_String; stringList_Param : access BasicArrayList_Package.BasicArrayList'Class; shaderType : Integer);

end org.allbinary.graphics.opengles.shader.ShaderManager_Package;


