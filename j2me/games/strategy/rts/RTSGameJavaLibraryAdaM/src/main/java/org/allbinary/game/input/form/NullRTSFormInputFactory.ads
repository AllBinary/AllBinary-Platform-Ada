-- 
-- AllBinary Open License Version 1 
-- Copyright (c) 2003 AllBinary 
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
limited with org.allbinary.game.input.form.NullRTSFormInputFactory_Package;
package org.allbinary.game.input.form.NullRTSFormInputFactory_Package_References is
   type NullRTSFormInputFactory_Access is access all org.allbinary.game.input.form.NullRTSFormInputFactory_Package.NullRTSFormInputFactory'Class;
   type NullRTSFormInputFactory_Access_Array is array (Natural range <>) of NullRTSFormInputFactory_Access;
   type NullRTSFormInputFactory_Access_Array_Access is access all NullRTSFormInputFactory_Access_Array;
   type NullRTSFormInputFactory_Access_Array_Access_Array is array (Natural range <>) of NullRTSFormInputFactory_Access_Array_Access;
   type NullRTSFormInputFactory_Access_Array_Access_Array_Access is access all NullRTSFormInputFactory_Access_Array_Access_Array;
   type NullRTSFormInputFactory_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : NullRTSFormInputFactory_Access_Array_Access;
   end record;
   function Java_Box (Value : NullRTSFormInputFactory_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new NullRTSFormInputFactory_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_NullRTSFormInputFactory_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return NullRTSFormInputFactory_Access_Array_Access is (if Value /= null and then Value.all in NullRTSFormInputFactory_Access_Array_Object'Class then NullRTSFormInputFactory_Access_Array_Object'Class (Value.all).Value else null);
   type NullRTSFormInputFactory_Access_Array_Access_Array_Object is new AllBinary_Java.Java_Object with record
      Value : NullRTSFormInputFactory_Access_Array_Access_Array_Access;
   end record;
   function Java_Box (Value : NullRTSFormInputFactory_Access_Array_Access_Array_Access) return AllBinary_Java.Java_Object_Access is (if Value = null then null else new NullRTSFormInputFactory_Access_Array_Access_Array_Object'(AllBinary_Java.Java_Object with Value => Value));
   function Java_Unbox_NullRTSFormInputFactory_Access_Array_Access_Array (Value : access AllBinary_Java.Java_Object'Class) return NullRTSFormInputFactory_Access_Array_Access_Array_Access is (if Value /= null and then Value.all in NullRTSFormInputFactory_Access_Array_Access_Array_Object'Class then NullRTSFormInputFactory_Access_Array_Access_Array_Object'Class (Value.all).Value else null);
end org.allbinary.game.input.form.NullRTSFormInputFactory_Package_References;

with org.allbinary.game.input.form.NullRTSFormInputFactory_Package_References;
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
with Ada.Strings.Maps.Constants;
with Ada.Characters.Handling;
with Ada.Exceptions;
with Ada.Numerics.Long_Elementary_Functions;
with Ada.Tags;
with Ada.Text_IO;
with AllBinary_Java; use AllBinary_Java;
limited with org.allbinary.game.input.form.RTSFormInput_Package;
with org.allbinary.game.input.form.RTSFormInput_Package_References;

package org.allbinary.game.input.form.NullRTSFormInputFactory_Package is

   package Reference_Types is
   subtype RTSFormInput_Access is org.allbinary.game.input.form.RTSFormInput_Package_References.RTSFormInput_Access;
   use type RTSFormInput_Access;
   subtype RTSFormInput_Access_Array is org.allbinary.game.input.form.RTSFormInput_Package_References.RTSFormInput_Access_Array;
   use type RTSFormInput_Access_Array;
   subtype RTSFormInput_Access_Array_Access is org.allbinary.game.input.form.RTSFormInput_Package_References.RTSFormInput_Access_Array_Access;
   use type RTSFormInput_Access_Array_Access;
   subtype RTSFormInput_Access_Array_Access_Array is org.allbinary.game.input.form.RTSFormInput_Package_References.RTSFormInput_Access_Array_Access_Array;
   use type RTSFormInput_Access_Array_Access_Array;
   subtype RTSFormInput_Access_Array_Access_Array_Access is org.allbinary.game.input.form.RTSFormInput_Package_References.RTSFormInput_Access_Array_Access_Array_Access;
   use type RTSFormInput_Access_Array_Access_Array_Access;
   end Reference_Types;
   use Reference_Types;


   subtype NullRTSFormInputFactory_Access is org.allbinary.game.input.form.NullRTSFormInputFactory_Package_References.NullRTSFormInputFactory_Access;
   function "=" (Left, Right : NullRTSFormInputFactory_Access) return Boolean renames org.allbinary.game.input.form.NullRTSFormInputFactory_Package_References."=";
   subtype NullRTSFormInputFactory_Access_Array is org.allbinary.game.input.form.NullRTSFormInputFactory_Package_References.NullRTSFormInputFactory_Access_Array;
   function "=" (Left, Right : NullRTSFormInputFactory_Access_Array) return Boolean renames org.allbinary.game.input.form.NullRTSFormInputFactory_Package_References."=";
   subtype NullRTSFormInputFactory_Access_Array_Access is org.allbinary.game.input.form.NullRTSFormInputFactory_Package_References.NullRTSFormInputFactory_Access_Array_Access;
   function "=" (Left, Right : NullRTSFormInputFactory_Access_Array_Access) return Boolean renames org.allbinary.game.input.form.NullRTSFormInputFactory_Package_References."=";
   function Java_Box (Value : NullRTSFormInputFactory_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.form.NullRTSFormInputFactory_Package_References.Java_Box;
   function Java_Unbox_NullRTSFormInputFactory_Access_Array (Value : access Java_Object'Class) return NullRTSFormInputFactory_Access_Array_Access renames org.allbinary.game.input.form.NullRTSFormInputFactory_Package_References.Java_Unbox_NullRTSFormInputFactory_Access_Array;
   subtype NullRTSFormInputFactory_Access_Array_Access_Array is org.allbinary.game.input.form.NullRTSFormInputFactory_Package_References.NullRTSFormInputFactory_Access_Array_Access_Array;
   function "=" (Left, Right : NullRTSFormInputFactory_Access_Array_Access_Array) return Boolean renames org.allbinary.game.input.form.NullRTSFormInputFactory_Package_References."=";
   subtype NullRTSFormInputFactory_Access_Array_Access_Array_Access is org.allbinary.game.input.form.NullRTSFormInputFactory_Package_References.NullRTSFormInputFactory_Access_Array_Access_Array_Access;
   function "=" (Left, Right : NullRTSFormInputFactory_Access_Array_Access_Array_Access) return Boolean renames org.allbinary.game.input.form.NullRTSFormInputFactory_Package_References."=";
   function Java_Box (Value : NullRTSFormInputFactory_Access_Array_Access_Array_Access) return Java_Object_Access renames org.allbinary.game.input.form.NullRTSFormInputFactory_Package_References.Java_Box;
   function Java_Unbox_NullRTSFormInputFactory_Access_Array_Access_Array (Value : access Java_Object'Class) return NullRTSFormInputFactory_Access_Array_Access_Array_Access renames org.allbinary.game.input.form.NullRTSFormInputFactory_Package_References.Java_Unbox_NullRTSFormInputFactory_Access_Array_Access_Array;

   type NullRTSFormInputFactory is new Java_Object with null record;
   SINGLETON : RTSFormInput_Access;

   procedure Initialize (This : in out NullRTSFormInputFactory'Class);
   function Create return NullRTSFormInputFactory_Access;
   function getInstance return RTSFormInput_Access;

end org.allbinary.game.input.form.NullRTSFormInputFactory_Package;


