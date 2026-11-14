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
limited with org.allbinary.time.RendererInitializedStupidTimerFactory_Package;
package org.allbinary.time.RendererInitializedStupidTimerFactory_Package_References is
   type RendererInitializedStupidTimerFactory_Access is access all org.allbinary.time.RendererInitializedStupidTimerFactory_Package.RendererInitializedStupidTimerFactory'Class;
   type RendererInitializedStupidTimerFactory_Access_Array is array (Natural range <>) of RendererInitializedStupidTimerFactory_Access;
   type RendererInitializedStupidTimerFactory_Access_Array_Access is access all RendererInitializedStupidTimerFactory_Access_Array;
   type RendererInitializedStupidTimerFactory_Access_Array_Access_Array is array (Natural range <>) of RendererInitializedStupidTimerFactory_Access_Array_Access;
   type RendererInitializedStupidTimerFactory_Access_Array_Access_Array_Access is access all RendererInitializedStupidTimerFactory_Access_Array_Access_Array;
   type RendererInitializedStupidTimerFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : RendererInitializedStupidTimerFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : RendererInitializedStupidTimerFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new RendererInitializedStupidTimerFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_RendererInitializedStupidTimerFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return RendererInitializedStupidTimerFactory_Access_Array_Access is (if Value /= null and then Value.all in RendererInitializedStupidTimerFactory_Access_Array_Object'Class then RendererInitializedStupidTimerFactory_Access_Array_Object'Class (Value.all).Value else null);
   type RendererInitializedStupidTimerFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : RendererInitializedStupidTimerFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : RendererInitializedStupidTimerFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new RendererInitializedStupidTimerFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_RendererInitializedStupidTimerFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return RendererInitializedStupidTimerFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in RendererInitializedStupidTimerFactory_Access_Array_Access_Array_Object'Class then RendererInitializedStupidTimerFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.time.RendererInitializedStupidTimerFactory_Package_References;

with org.allbinary.time.RendererInitializedStupidTimerFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.time.StupidTimer_Package;
with org.allbinary.time.StupidTimer_Package_References;

package org.allbinary.time.RendererInitializedStupidTimerFactory_Package is

   package Reference_Types is
   subtype StupidTimer_Access is org.allbinary.time.StupidTimer_Package_References.StupidTimer_Access;
   use type StupidTimer_Access;
   subtype StupidTimer_Access_Array is org.allbinary.time.StupidTimer_Package_References.StupidTimer_Access_Array;
   use type StupidTimer_Access_Array;
   subtype StupidTimer_Access_Array_Access is org.allbinary.time.StupidTimer_Package_References.StupidTimer_Access_Array_Access;
   use type StupidTimer_Access_Array_Access;
   subtype StupidTimer_Access_Array_Access_Array is org.allbinary.time.StupidTimer_Package_References.StupidTimer_Access_Array_Access_Array;
   use type StupidTimer_Access_Array_Access_Array;
   subtype StupidTimer_Access_Array_Access_Array_Access is org.allbinary.time.StupidTimer_Package_References.StupidTimer_Access_Array_Access_Array_Access;
   use type StupidTimer_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype RendererInitializedStupidTimerFactory_Access is org.allbinary.time.RendererInitializedStupidTimerFactory_Package_References.RendererInitializedStupidTimerFactory_Access;
   function "=" (Left, Right : RendererInitializedStupidTimerFactory_Access) return Boolean renames org.allbinary.time.RendererInitializedStupidTimerFactory_Package_References."=";
   subtype RendererInitializedStupidTimerFactory_Access_Array is org.allbinary.time.RendererInitializedStupidTimerFactory_Package_References.RendererInitializedStupidTimerFactory_Access_Array;
   function "=" (Left, Right : RendererInitializedStupidTimerFactory_Access_Array) return Boolean renames org.allbinary.time.RendererInitializedStupidTimerFactory_Package_References."=";
   subtype RendererInitializedStupidTimerFactory_Access_Array_Access is org.allbinary.time.RendererInitializedStupidTimerFactory_Package_References.RendererInitializedStupidTimerFactory_Access_Array_Access;
   function "=" (Left, Right : RendererInitializedStupidTimerFactory_Access_Array_Access) return Boolean renames org.allbinary.time.RendererInitializedStupidTimerFactory_Package_References."=";
   function Java_Box (Value : RendererInitializedStupidTimerFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.time.RendererInitializedStupidTimerFactory_Package_References.Java_Box;
   function Java_Unbox_RendererInitializedStupidTimerFactory_Access_Array (Value : access Java_Object'Class) return RendererInitializedStupidTimerFactory_Access_Array_Access renames org.allbinary.time.RendererInitializedStupidTimerFactory_Package_References.Java_Unbox_RendererInitializedStupidTimerFactory_Access_Array;
   subtype RendererInitializedStupidTimerFactory_Access_Array_Access_Array is org.allbinary.time.RendererInitializedStupidTimerFactory_Package_References.RendererInitializedStupidTimerFactory_Access_Array_Access_Array;
   function "=" (Left, Right : RendererInitializedStupidTimerFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.time.RendererInitializedStupidTimerFactory_Package_References."=";
   subtype RendererInitializedStupidTimerFactory_Access_Array_Access_Array_Access is org.allbinary.time.RendererInitializedStupidTimerFactory_Package_References.RendererInitializedStupidTimerFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : RendererInitializedStupidTimerFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.time.RendererInitializedStupidTimerFactory_Package_References."=";
   function Java_Box (Value : RendererInitializedStupidTimerFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.time.RendererInitializedStupidTimerFactory_Package_References.Java_Box;
   function Java_Unbox_RendererInitializedStupidTimerFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return RendererInitializedStupidTimerFactory_Access_Array_Access_Array_Access renames org.allbinary.time.RendererInitializedStupidTimerFactory_Package_References.Java_Unbox_RendererInitializedStupidTimerFactory_Access_Array_Access_Array;

   type RendererInitializedStupidTimerFactory is new Java_Object with null record;
   instance : StupidTimer_Access;

   procedure Initialize (This : in out RendererInitializedStupidTimerFactory'Class);
   function Create return RendererInitializedStupidTimerFactory_Access;
   function getInstance return StupidTimer_Access;

end org.allbinary.time.RendererInitializedStupidTimerFactory_Package;


