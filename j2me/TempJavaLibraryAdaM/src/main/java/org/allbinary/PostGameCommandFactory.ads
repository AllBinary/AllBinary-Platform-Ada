-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2022 AllBinary 
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
limited with org.allbinary.PostGameCommandFactory_Package;
package org.allbinary.PostGameCommandFactory_Package_References is
   type PostGameCommandFactory_Access is access all org.allbinary.PostGameCommandFactory_Package.PostGameCommandFactory'Class;
   type PostGameCommandFactory_Access_Array is array (Natural range <>) of PostGameCommandFactory_Access;
   type PostGameCommandFactory_Access_Array_Access is access all PostGameCommandFactory_Access_Array;
   type PostGameCommandFactory_Access_Array_Access_Array is array (Natural range <>) of PostGameCommandFactory_Access_Array_Access;
   type PostGameCommandFactory_Access_Array_Access_Array_Access is access all PostGameCommandFactory_Access_Array_Access_Array;
   type PostGameCommandFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PostGameCommandFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : PostGameCommandFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PostGameCommandFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PostGameCommandFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PostGameCommandFactory_Access_Array_Access is (if Value /= null and then Value.all in PostGameCommandFactory_Access_Array_Object'Class then PostGameCommandFactory_Access_Array_Object'Class (Value.all).Value else null);
   type PostGameCommandFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : PostGameCommandFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : PostGameCommandFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new PostGameCommandFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_PostGameCommandFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return PostGameCommandFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in PostGameCommandFactory_Access_Array_Access_Array_Object'Class then PostGameCommandFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.PostGameCommandFactory_Package_References;

with org.allbinary.PostGameCommandFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with javax.microedition.lcdui.Canvas_Package;
with javax.microedition.lcdui.Canvas_Package_References;

package org.allbinary.PostGameCommandFactory_Package is

   package Canvas_Package renames Standard.javax.microedition.lcdui.Canvas_Package;
   package Reference_Types is
   subtype Canvas_Access is javax.microedition.lcdui.Canvas_Package_References.Canvas_Access;
   use type Canvas_Access;
   subtype Canvas_Access_Array is javax.microedition.lcdui.Canvas_Package_References.Canvas_Access_Array;
   use type Canvas_Access_Array;
   subtype Canvas_Access_Array_Access is javax.microedition.lcdui.Canvas_Package_References.Canvas_Access_Array_Access;
   use type Canvas_Access_Array_Access;
   subtype Canvas_Access_Array_Access_Array is javax.microedition.lcdui.Canvas_Package_References.Canvas_Access_Array_Access_Array;
   use type Canvas_Access_Array_Access_Array;
   subtype Canvas_Access_Array_Access_Array_Access is javax.microedition.lcdui.Canvas_Package_References.Canvas_Access_Array_Access_Array_Access;
   use type Canvas_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype PostGameCommandFactory_Access is org.allbinary.PostGameCommandFactory_Package_References.PostGameCommandFactory_Access;
   function "=" (Left, Right : PostGameCommandFactory_Access) return Boolean renames org.allbinary.PostGameCommandFactory_Package_References."=";
   subtype PostGameCommandFactory_Access_Array is org.allbinary.PostGameCommandFactory_Package_References.PostGameCommandFactory_Access_Array;
   function "=" (Left, Right : PostGameCommandFactory_Access_Array) return Boolean renames org.allbinary.PostGameCommandFactory_Package_References."=";
   subtype PostGameCommandFactory_Access_Array_Access is org.allbinary.PostGameCommandFactory_Package_References.PostGameCommandFactory_Access_Array_Access;
   function "=" (Left, Right : PostGameCommandFactory_Access_Array_Access) return Boolean renames org.allbinary.PostGameCommandFactory_Package_References."=";
   function Java_Box (Value : PostGameCommandFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.PostGameCommandFactory_Package_References.Java_Box;
   function Java_Unbox_PostGameCommandFactory_Access_Array (Value : access Java_Object'Class) return PostGameCommandFactory_Access_Array_Access renames org.allbinary.PostGameCommandFactory_Package_References.Java_Unbox_PostGameCommandFactory_Access_Array;
   subtype PostGameCommandFactory_Access_Array_Access_Array is org.allbinary.PostGameCommandFactory_Package_References.PostGameCommandFactory_Access_Array_Access_Array;
   function "=" (Left, Right : PostGameCommandFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.PostGameCommandFactory_Package_References."=";
   subtype PostGameCommandFactory_Access_Array_Access_Array_Access is org.allbinary.PostGameCommandFactory_Package_References.PostGameCommandFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : PostGameCommandFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.PostGameCommandFactory_Package_References."=";
   function Java_Box (Value : PostGameCommandFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.PostGameCommandFactory_Package_References.Java_Box;
   function Java_Unbox_PostGameCommandFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return PostGameCommandFactory_Access_Array_Access_Array_Access renames org.allbinary.PostGameCommandFactory_Package_References.Java_Unbox_PostGameCommandFactory_Access_Array_Access_Array;

   type PostGameCommandFactory is new Java_Object with null record;
   instance : PostGameCommandFactory_Access;

   procedure Initialize (This : in out PostGameCommandFactory'Class);
   function Create return PostGameCommandFactory_Access;
   function getInstance return PostGameCommandFactory_Access;
   procedure addCommands (This : in out PostGameCommandFactory; canvas_Param : access Canvas_Package.Canvas'Class);

end org.allbinary.PostGameCommandFactory_Package;


